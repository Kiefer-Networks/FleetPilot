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
