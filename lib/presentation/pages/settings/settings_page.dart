import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fleetpilot/l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';

import '../../../core/constants/app_colors.dart';
import '../../providers/profile_providers.dart';
import '../../providers/security_providers.dart';
import '../../providers/settings_providers.dart';
import '../../widgets/settings/settings.dart';

class SettingsPage extends ConsumerWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context);
    final profilesAsync = ref.watch(profilesProvider);
    final currentLocale = ref.watch(localeProvider);

    return Scaffold(
      appBar: AppBar(title: Text(l10n.navSettings)),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        children: [
          // Profiles section
          const SizedBox(height: 8),
          SectionHeader(title: l10n.profiles),
          SettingsGroupCard(
            children: [
              profilesAsync.when(
                data: (profiles) {
                  if (profiles.isEmpty) {
                    return SettingsTile(
                      icon: Icons.person_add_outlined,
                      iconColor: AppColors.iconBlue,
                      title: l10n.addProfile,
                      onTap: () => context.push('/auth/setup'),
                    );
                  }

                  return Column(
                    children: [
                      ...profiles.map(
                        (profile) => SettingsTile(
                          icon: Icons.business,
                          iconColor: AppColors.iconIndigo,
                          title: profile.displayName,
                          subtitleText:
                              '${profile.subdomain} (${profile.region.label})',
                          trailing: IconButton(
                            icon: const Icon(Icons.delete_outline),
                            onPressed: () =>
                                _confirmDelete(context, ref, profile.id, l10n),
                          ),
                        ),
                      ),
                      SettingsTile(
                        icon: Icons.add,
                        iconColor: AppColors.iconGreen,
                        title: l10n.addProfile,
                        onTap: () => context.push('/auth/setup'),
                      ),
                    ],
                  );
                },
                loading: () => const ListTile(title: LinearProgressIndicator()),
                error: (_, _) => const SizedBox.shrink(),
              ),
            ],
          ),

          // Security section
          const SizedBox(height: 16),
          SectionHeader(title: l10n.security),
          SettingsGroupCard(
            children: [
              SettingsCategoryTile(
                icon: Icons.lock_outline,
                iconColor: AppColors.iconRed,
                title: l10n.securityAppLock,
                subtitle: ref.watch(pinEnabledProvider)
                    ? l10n.securityAppLockActive
                    : l10n.securityAppLockInactive,
                onTap: () => context.push('/more/settings/security'),
              ),
            ],
          ),

          // Language section
          const SizedBox(height: 16),
          SectionHeader(title: l10n.language),
          SettingsGroupCard(
            children: [
              SettingsTile(
                icon: Icons.language,
                iconColor: AppColors.iconCyan,
                title: l10n.language,
                subtitleText: _languageLabel(currentLocale, l10n),
                onTap: () async {
                  final currentValue = currentLocale?.languageCode ?? 'system';
                  final selected = await showDialog<String>(
                    context: context,
                    builder: (ctx) => SimpleDialog(
                      title: Text(l10n.language),
                      children: [
                        _LanguageOption(
                          label: l10n.languageSystem,
                          value: 'system',
                          isSelected: currentValue == 'system',
                          onTap: () => Navigator.of(ctx).pop('system'),
                        ),
                        _LanguageOption(
                          label: 'English',
                          value: 'en',
                          isSelected: currentValue == 'en',
                          onTap: () => Navigator.of(ctx).pop('en'),
                        ),
                        _LanguageOption(
                          label: 'Deutsch',
                          value: 'de',
                          isSelected: currentValue == 'de',
                          onTap: () => Navigator.of(ctx).pop('de'),
                        ),
                        _LanguageOption(
                          label: 'Español',
                          value: 'es',
                          isSelected: currentValue == 'es',
                          onTap: () => Navigator.of(ctx).pop('es'),
                        ),
                      ],
                    ),
                  );
                  if (selected != null) {
                    ref
                        .read(localeProvider.notifier)
                        .setLocale(
                          selected == 'system' ? null : Locale(selected),
                        );
                  }
                },
              ),
            ],
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }

  Future<void> _confirmDelete(
    BuildContext context,
    WidgetRef ref,
    String profileId,
    AppLocalizations l10n,
  ) async {
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text(l10n.deleteProfile),
        content: Text(l10n.deleteProfileConfirm),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(ctx).pop(false),
            child: Text(l10n.cancel),
          ),
          FilledButton(
            onPressed: () => Navigator.of(ctx).pop(true),
            child: Text(l10n.delete),
          ),
        ],
      ),
    );
    if (confirmed == true) {
      await ref.read(profileActionsProvider.notifier).deleteProfile(profileId);
    }
  }

  String _languageLabel(Locale? locale, AppLocalizations l10n) {
    return switch (locale?.languageCode) {
      'en' => 'English',
      'de' => 'Deutsch',
      'es' => 'Español',
      _ => l10n.languageSystem,
    };
  }
}

class _LanguageOption extends StatelessWidget {
  const _LanguageOption({
    required this.label,
    required this.value,
    required this.isSelected,
    required this.onTap,
  });

  final String label;
  final String value;
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
