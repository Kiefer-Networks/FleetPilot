import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fleetpilot/l10n/app_localizations.dart';

import '../../../core/constants/app_colors.dart';
import '../../../core/utils/biometric_service.dart';
import '../../providers/security_providers.dart';
import '../../widgets/pin_dialog.dart';
import '../../widgets/settings/settings.dart';

class SecuritySettingsPage extends ConsumerWidget {
  const SecuritySettingsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context);
    final pinEnabled = ref.watch(pinEnabledProvider);
    final biometricEnabled = ref.watch(biometricEnabledProvider);

    return Scaffold(
      appBar: AppBar(title: Text(l10n.security)),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        children: [
          // App Lock section
          const SizedBox(height: 8),
          SectionHeader(title: l10n.securityAppLock),
          SettingsGroupCard(
            children: [
              SettingsTile(
                icon: Icons.pin,
                iconColor: AppColors.iconIndigo,
                title: 'PIN',
                subtitleText: pinEnabled
                    ? l10n.securityAppLockActive
                    : l10n.securityAppLockInactive,
                onTap: () async {
                  if (pinEnabled) {
                    // Change PIN: verify current first
                    final current = await PinDialog.showVerifyPin(
                      context,
                      verifier: (pin) async =>
                          ref.read(pinEnabledProvider.notifier).verifyPin(pin),
                    );
                    if (current == null || !context.mounted) return;

                    final newPin = await PinDialog.showSetPin(context);
                    if (newPin == null || !context.mounted) return;

                    await ref.read(pinEnabledProvider.notifier).setPin(newPin);
                    if (context.mounted) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text(l10n.securityPinChanged)),
                      );
                    }
                  } else {
                    final pin = await PinDialog.showSetPin(context);
                    if (pin == null || !context.mounted) return;

                    final ok = await ref
                        .read(pinEnabledProvider.notifier)
                        .setPin(pin);
                    if (ok && context.mounted) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text(l10n.securityPinSet)),
                      );
                    }
                  }
                },
              ),
              _BiometricTile(
                pinEnabled: pinEnabled,
                biometricEnabled: biometricEnabled,
              ),
            ],
          ),

          // Session Timeout section (only shown when PIN is enabled)
          if (pinEnabled) ...[
            const SizedBox(height: 16),
            SectionHeader(title: l10n.securityAutoLock),
            SettingsGroupCard(children: [_LockTimeoutTile()]),
          ],
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}

class _BiometricTile extends ConsumerWidget {
  final bool pinEnabled;
  final bool biometricEnabled;

  const _BiometricTile({
    required this.pinEnabled,
    required this.biometricEnabled,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context);

    String? subtitleText;
    if (!pinEnabled) {
      subtitleText = l10n.securityAppLockDescription;
    }

    return SettingsSwitchTile(
      icon: Icons.fingerprint,
      iconColor: AppColors.iconGreen,
      title: l10n.securityBiometricEnable,
      subtitleText: subtitleText,
      value: biometricEnabled,
      onChanged: pinEnabled
          ? (v) async {
              if (v) {
                final bioService = BiometricService();
                final available = await bioService.isAvailable;
                if (!available) {
                  if (context.mounted) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(l10n.securityBiometricUnavailable),
                      ),
                    );
                  }
                  return;
                }
                final ok = await bioService.authenticate(
                  reason: l10n.biometricReason,
                );
                if (!ok) return;
              }
              ref.read(biometricEnabledProvider.notifier).setEnabled(v);
            }
          : null,
    );
  }
}

class _LockTimeoutTile extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context);
    final currentTimeout = ref.watch(lockTimeoutProvider);

    return SettingsTile(
      icon: Icons.timer_outlined,
      iconColor: AppColors.iconOrange,
      title: l10n.securityAutoLock,
      subtitleText: _timeoutLabel(currentTimeout, l10n),
      onTap: () async {
        final selected = await showDialog<LockTimeout>(
          context: context,
          builder: (ctx) => SimpleDialog(
            title: Text(l10n.securityAutoLock),
            children: LockTimeout.values.map((timeout) {
              return _TimeoutOption(
                label: _timeoutLabel(timeout, l10n),
                timeout: timeout,
                isSelected: timeout == currentTimeout,
                onTap: () => Navigator.of(ctx).pop(timeout),
              );
            }).toList(),
          ),
        );
        if (selected != null) {
          ref.read(lockTimeoutProvider.notifier).setTimeout(selected);
        }
      },
    );
  }

  String _timeoutLabel(LockTimeout timeout, AppLocalizations l10n) {
    return switch (timeout) {
      LockTimeout.immediately => l10n.timeoutImmediately,
      LockTimeout.seconds30 => l10n.timeoutSeconds30,
      LockTimeout.seconds60 => l10n.timeoutSeconds60,
      LockTimeout.seconds120 => l10n.timeoutSeconds120,
      LockTimeout.minutes5 => l10n.timeoutMinutes5,
    };
  }
}

class _TimeoutOption extends StatelessWidget {
  const _TimeoutOption({
    required this.label,
    required this.timeout,
    required this.isSelected,
    required this.onTap,
  });

  final String label;
  final LockTimeout timeout;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ListTile(
      title: Text(label),
      trailing: isSelected
          ? Icon(Icons.check, color: theme.colorScheme.primary)
          : null,
      onTap: onTap,
    );
  }
}
