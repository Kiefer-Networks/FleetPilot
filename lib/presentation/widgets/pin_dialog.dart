import 'package:flutter/material.dart';
import 'package:fleetpilot/l10n/app_localizations.dart';

import 'pin_num_pad.dart';

class PinDialog extends StatefulWidget {
  final String title;
  final String? subtitle;
  final bool confirm;

  const PinDialog({
    super.key,
    required this.title,
    this.subtitle,
    this.confirm = false,
  });

  /// Show fullscreen dialog to set a new PIN. Returns the PIN or null.
  static Future<String?> showSetPin(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return showDialog<String>(
      context: context,
      barrierDismissible: false,
      builder: (_) => PinDialog(
        title: l10n.securitySetPin,
        subtitle: l10n.securityAppLockDescription,
        confirm: true,
      ),
    );
  }

  /// Show fullscreen dialog to verify an existing PIN.
  /// Returns the verified PIN string if correct, null if cancelled.
  /// The [verifier] returns `true` on success, `false` on wrong PIN,
  /// or `null` if the account is rate-limited (locked out).
  static Future<String?> showVerifyPin(
    BuildContext context, {
    required Future<bool?> Function(String pin) verifier,
  }) {
    return showDialog<String>(
      context: context,
      barrierDismissible: false,
      builder: (_) => _PinVerifyDialog(verifier: verifier),
    );
  }

  @override
  State<PinDialog> createState() => _PinDialogState();
}

enum _SetPinPhase { enter, confirm }

class _PinDialogState extends State<PinDialog> {
  String _pin = '';
  String _firstPin = '';
  _SetPinPhase _phase = _SetPinPhase.enter;
  String? _error;

  void _onDigit(String digit) {
    if (_pin.length >= 6) return;
    setState(() {
      _error = null;
      _pin += digit;
    });

    if (_pin.length == 6) {
      _onPinComplete(_pin);
    }
  }

  void _onBackspace() {
    if (_pin.isEmpty) return;
    setState(() {
      _error = null;
      _pin = _pin.substring(0, _pin.length - 1);
    });
  }

  void _onPinComplete(String pin) {
    final l10n = AppLocalizations.of(context);
    if (!widget.confirm) {
      Navigator.of(context).pop(pin);
      return;
    }

    if (_phase == _SetPinPhase.enter) {
      _firstPin = pin;
      setState(() {
        _pin = '';
        _phase = _SetPinPhase.confirm;
        _error = null;
      });
      return;
    }

    // Confirm phase
    if (pin != _firstPin) {
      setState(() {
        _error = l10n.securityPinMismatch;
        _pin = '';
      });
      return;
    }
    Navigator.of(context).pop(pin);
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final theme = Theme.of(context);

    final title = _phase == _SetPinPhase.confirm
        ? l10n.securityConfirmPin
        : widget.title;

    return Dialog.fullscreen(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.close),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: Text(title),
        ),
        body: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (widget.subtitle != null &&
                    _phase == _SetPinPhase.enter) ...[
                  Text(
                    widget.subtitle!,
                    style: theme.textTheme.bodyMedium,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 24),
                ],
                PinDotIndicator(length: _pin.length, hasError: _error != null),
                if (_error != null) ...[
                  const SizedBox(height: 12),
                  Text(
                    _error!,
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: theme.colorScheme.error,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
                const SizedBox(height: 32),
                PinNumPad(onDigit: _onDigit, onBackspace: _onBackspace),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _PinVerifyDialog extends StatefulWidget {
  final Future<bool?> Function(String pin) verifier;

  const _PinVerifyDialog({required this.verifier});

  @override
  State<_PinVerifyDialog> createState() => _PinVerifyDialogState();
}

class _PinVerifyDialogState extends State<_PinVerifyDialog> {
  String _pin = '';
  String? _error;
  bool _verifying = false;

  void _onDigit(String digit) {
    if (_verifying || _pin.length >= 6) return;
    setState(() {
      _error = null;
      _pin += digit;
    });

    if (_pin.length == 6) {
      _verify(_pin);
    }
  }

  void _onBackspace() {
    if (_pin.isEmpty) return;
    setState(() {
      _error = null;
      _pin = _pin.substring(0, _pin.length - 1);
    });
  }

  Future<void> _verify(String pin) async {
    if (_verifying) return;
    setState(() => _verifying = true);

    final success = await widget.verifier(pin);
    if (!mounted) return;

    if (success == true) {
      Navigator.of(context).pop(pin);
    } else {
      final l10n = AppLocalizations.of(context);
      setState(() {
        _verifying = false;
        // null = rate-limited lockout, false = wrong PIN
        _error = success == null
            ? l10n.pinLockedOut(30)
            : l10n.securityPinWrong;
        _pin = '';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final theme = Theme.of(context);

    return Dialog.fullscreen(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.close),
            onPressed: _verifying ? null : () => Navigator.of(context).pop(),
          ),
          title: Text(l10n.securityCurrentPin),
        ),
        body: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                PinDotIndicator(length: _pin.length, hasError: _error != null),
                if (_error != null) ...[
                  const SizedBox(height: 12),
                  Text(
                    _error!,
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: theme.colorScheme.error,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
                if (_verifying) ...[
                  const SizedBox(height: 12),
                  const SizedBox(
                    width: 24,
                    height: 24,
                    child: CircularProgressIndicator(strokeWidth: 2),
                  ),
                ],
                const SizedBox(height: 32),
                PinNumPad(onDigit: _onDigit, onBackspace: _onBackspace),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
