import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fleetpilot/l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';

import '../../../core/utils/biometric_service.dart';
import '../../providers/security_providers.dart';
import '../../widgets/pin_num_pad.dart';

/// App lock gate shown on app launch and after session timeout.
///
/// If no PIN is set, navigates directly to /devices.
/// If PIN is set + biometric enabled, attempts biometric first.
/// Falls back to PIN numpad if biometric fails or is not enabled.
class BiometricGatePage extends ConsumerStatefulWidget {
  const BiometricGatePage({super.key});

  @override
  ConsumerState<BiometricGatePage> createState() => _BiometricGatePageState();
}

class _BiometricGatePageState extends ConsumerState<BiometricGatePage> {
  final _biometricService = BiometricService();
  String _pin = '';
  bool _isAuthenticating = false;
  bool _showPinInput = false;
  String? _pinError;
  bool _checkedSecurity = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (!_checkedSecurity) {
      _checkedSecurity = true;
      WidgetsBinding.instance.addPostFrameCallback((_) => _checkAndAuth());
    }
  }

  Future<void> _checkAndAuth() async {
    final pinEnabled = ref.read(pinEnabledProvider);
    if (!pinEnabled) {
      _unlockAndNavigate();
      return;
    }

    final biometricEnabled = ref.read(biometricEnabledProvider);
    if (biometricEnabled) {
      await _tryBiometric();
    } else {
      setState(() => _showPinInput = true);
    }
  }

  Future<void> _tryBiometric() async {
    if (_isAuthenticating) return;
    setState(() {
      _isAuthenticating = true;
      _showPinInput = false;
    });

    final l10n = AppLocalizations.of(context);
    final success = await _biometricService.authenticate(
      reason: l10n.biometricReason,
    );

    if (!mounted) return;

    if (success) {
      _unlockAndNavigate();
    } else {
      setState(() {
        _isAuthenticating = false;
        _showPinInput = true;
      });
    }
  }

  void _onDigit(String digit) {
    if (_pin.length >= 6) return;
    setState(() {
      _pinError = null;
      _pin += digit;
    });

    if (_pin.length == 6) {
      _verifyPin(_pin);
    }
  }

  void _onBackspace() {
    if (_pin.isEmpty) return;
    setState(() {
      _pinError = null;
      _pin = _pin.substring(0, _pin.length - 1);
    });
  }

  Future<void> _verifyPin(String pin) async {
    final result = await ref.read(pinEnabledProvider.notifier).verifyPin(pin);
    if (!mounted) return;

    if (result == true) {
      _unlockAndNavigate();
    } else {
      final l10n = AppLocalizations.of(context);
      String error;
      if (result == null) {
        // Rate-limited lockout
        final remaining = await ref
            .read(pinEnabledProvider.notifier)
            .getRemainingLockoutSeconds();
        error = l10n.pinLockedOut(remaining > 0 ? remaining : 30);
      } else {
        error = l10n.securityPinWrong;
      }
      setState(() {
        _pinError = error;
        _pin = '';
      });
    }
  }

  /// Unlocks the session (if it was locked by timeout) and navigates to /devices.
  void _unlockAndNavigate() {
    ref.read(sessionLockedProvider.notifier).unlock();
    if (mounted) context.go('/devices');
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final theme = Theme.of(context);
    final biometricEnabled = ref.watch(biometricEnabledProvider);

    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.lock_outline,
                size: 72,
                color: theme.colorScheme.primary,
              ),
              const SizedBox(height: 24),
              Text(
                'FleetPilot',
                style: theme.textTheme.headlineMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                l10n.biometricReason,
                style: theme.textTheme.bodyLarge?.copyWith(
                  color: theme.colorScheme.onSurfaceVariant,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 32),
              if (_isAuthenticating)
                const CircularProgressIndicator()
              else if (_showPinInput) ...[
                PinDotIndicator(
                  length: _pin.length,
                  hasError: _pinError != null,
                ),
                if (_pinError != null) ...[
                  const SizedBox(height: 12),
                  Text(
                    _pinError!,
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: theme.colorScheme.error,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
                const SizedBox(height: 32),
                PinNumPad(onDigit: _onDigit, onBackspace: _onBackspace),
                if (biometricEnabled) ...[
                  const SizedBox(height: 16),
                  TextButton.icon(
                    onPressed: _tryBiometric,
                    icon: const Icon(Icons.fingerprint),
                    label: Text(l10n.securityBiometric),
                  ),
                ],
              ],
            ],
          ),
        ),
      ),
    );
  }
}
