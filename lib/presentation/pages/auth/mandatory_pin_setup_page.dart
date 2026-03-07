import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fleetpilot/l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';

import '../../../core/utils/biometric_service.dart';
import '../../providers/security_providers.dart';
import '../../widgets/pin_num_pad.dart';

/// Mandatory PIN setup page shown after first profile creation
/// or when a profile exists without a PIN.
/// The user cannot skip this — they must set a PIN to continue.
class MandatoryPinSetupPage extends ConsumerStatefulWidget {
  const MandatoryPinSetupPage({super.key});

  @override
  ConsumerState<MandatoryPinSetupPage> createState() =>
      _MandatoryPinSetupPageState();
}

enum _Phase { enterPin, confirmPin, biometric, done }

class _MandatoryPinSetupPageState
    extends ConsumerState<MandatoryPinSetupPage> {
  _Phase _phase = _Phase.enterPin;
  String _pin = '';
  String _firstPin = '';
  String? _error;
  bool _biometricAvailable = false;
  bool _checkingBiometric = false;

  @override
  void initState() {
    super.initState();
    _checkBiometric();
  }

  Future<void> _checkBiometric() async {
    final available = await BiometricService().isAvailable;
    if (mounted) setState(() => _biometricAvailable = available);
  }

  void _onDigit(String digit) {
    if (_pin.length >= 6) return;
    setState(() {
      _error = null;
      _pin += digit;
    });
    if (_pin.length == 6) _onPinComplete(_pin);
  }

  void _onBackspace() {
    if (_pin.isEmpty) return;
    setState(() {
      _error = null;
      _pin = _pin.substring(0, _pin.length - 1);
    });
  }

  void _onPinComplete(String pin) {
    if (_phase == _Phase.enterPin) {
      _firstPin = pin;
      setState(() {
        _pin = '';
        _phase = _Phase.confirmPin;
      });
      return;
    }

    if (_phase == _Phase.confirmPin) {
      if (pin != _firstPin) {
        final l10n = AppLocalizations.of(context);
        setState(() {
          _error = l10n.securityPinMismatch;
          _pin = '';
        });
        return;
      }
      _savePin(pin);
    }
  }

  Future<void> _savePin(String pin) async {
    final ok = await ref.read(pinEnabledProvider.notifier).setPin(pin);
    if (!ok || !mounted) return;

    if (_biometricAvailable) {
      setState(() => _phase = _Phase.biometric);
    } else {
      _finish();
    }
  }

  Future<void> _enableBiometric() async {
    setState(() => _checkingBiometric = true);
    try {
      final l10n = AppLocalizations.of(context);
      final bioService = BiometricService();
      final ok = await bioService.authenticate(reason: l10n.biometricReason);
      if (ok && mounted) {
        ref.read(biometricEnabledProvider.notifier).setEnabled(true);
      }
    } finally {
      if (mounted) {
        setState(() => _checkingBiometric = false);
        _finish();
      }
    }
  }

  void _finish() {
    if (mounted) context.go('/devices');
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: _phase == _Phase.biometric
                ? _buildBiometricStep(l10n, theme, colorScheme)
                : _buildPinStep(l10n, theme, colorScheme),
          ),
        ),
      ),
    );
  }

  Widget _buildPinStep(
      AppLocalizations l10n, ThemeData theme, ColorScheme colorScheme) {
    final isConfirm = _phase == _Phase.confirmPin;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          Icons.lock_outline,
          size: 56,
          color: colorScheme.primary,
        ),
        const SizedBox(height: 16),
        Text(
          isConfirm ? l10n.securityConfirmPin : l10n.securitySetPin,
          style: theme.textTheme.headlineSmall,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 8),
        Text(
          isConfirm
              ? l10n.securityConfirmPin
              : l10n.securityAppLockDescription,
          style: theme.textTheme.bodyMedium?.copyWith(
            color: colorScheme.onSurfaceVariant,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 32),
        PinDotIndicator(length: _pin.length, hasError: _error != null),
        if (_error != null) ...[
          const SizedBox(height: 12),
          Text(
            _error!,
            style: theme.textTheme.bodySmall?.copyWith(
              color: colorScheme.error,
            ),
            textAlign: TextAlign.center,
          ),
        ],
        const SizedBox(height: 32),
        PinNumPad(onDigit: _onDigit, onBackspace: _onBackspace),
      ],
    );
  }

  Widget _buildBiometricStep(
      AppLocalizations l10n, ThemeData theme, ColorScheme colorScheme) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 80,
          height: 80,
          decoration: BoxDecoration(
            color: colorScheme.primaryContainer,
            shape: BoxShape.circle,
          ),
          child: Icon(
            Icons.check,
            size: 40,
            color: colorScheme.onPrimaryContainer,
          ),
        ),
        const SizedBox(height: 16),
        Text(
          l10n.securityPinSet,
          style: theme.textTheme.headlineSmall,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 32),
        Icon(
          Icons.fingerprint,
          size: 64,
          color: colorScheme.primary,
        ),
        const SizedBox(height: 16),
        Text(
          l10n.securityBiometricDescription,
          style: theme.textTheme.bodyMedium?.copyWith(
            color: colorScheme.onSurfaceVariant,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 32),
        FilledButton.icon(
          onPressed: _checkingBiometric ? null : _enableBiometric,
          icon: _checkingBiometric
              ? const SizedBox(
                  width: 18,
                  height: 18,
                  child: CircularProgressIndicator(
                      strokeWidth: 2, color: Colors.white),
                )
              : const Icon(Icons.fingerprint),
          label: Text(l10n.securityBiometricEnable),
        ),
        const SizedBox(height: 12),
        TextButton(
          onPressed: _finish,
          child: Text(l10n.securityNext),
        ),
      ],
    );
  }
}
