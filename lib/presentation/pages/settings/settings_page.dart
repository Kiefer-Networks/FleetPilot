import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fleetpilot/l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';

import '../../../core/constants/app_colors.dart';
import '../../providers/profile_providers.dart';
import '../../providers/security_providers.dart';
import '../../providers/settings_providers.dart';
import '../../widgets/settings/profile_switcher_sheet.dart';
import '../../widgets/settings/settings.dart';

class SettingsPage extends ConsumerWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context);
    final b = Theme.of(context).brightness;
    final profilesAsync = ref.watch(profilesProvider);
    final activeIdAsync = ref.watch(activeProfileIdProvider);
    final currentLocale = ref.watch(localeProvider);
    final currentThemeMode = ref.watch(themeModeProvider);

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
                      iconColor: AppColors.iconBlue(b),
                      title: l10n.addProfile,
                      onTap: () => context.push('/auth/setup'),
                    );
                  }

                  final activeId = activeIdAsync.value;
                  final activeProfile = profiles
                      .where((p) => p.id == activeId)
                      .firstOrNull;

                  return Column(
                    children: [
                      SettingsTile(
                        icon: Icons.swap_horiz,
                        iconColor: AppColors.iconIndigo(b),
                        title: l10n.switchProfile,
                        subtitleText: activeProfile != null
                            ? l10n.activeProfile(activeProfile.displayName)
                            : l10n.noProfiles,
                        onTap: () => showProfileSwitcherSheet(context),
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
                iconColor: AppColors.iconRed(b),
                title: l10n.securityAppLock,
                subtitle: ref.watch(pinEnabledProvider)
                    ? l10n.securityAppLockActive
                    : l10n.securityAppLockInactive,
                onTap: () => context.push('/more/settings/security'),
              ),
            ],
          ),

          // Appearance section
          const SizedBox(height: 16),
          SectionHeader(title: l10n.appearance),
          SettingsGroupCard(
            children: [
              SettingsTile(
                icon: Icons.dark_mode_outlined,
                iconColor: AppColors.iconPurple(b),
                title: l10n.themeMode,
                subtitleText: _themeModeLabel(currentThemeMode, l10n),
                onTap: () async {
                  final selected = await showDialog<ThemeMode>(
                    context: context,
                    builder: (ctx) => SimpleDialog(
                      title: Text(l10n.themeMode),
                      children: [
                        _SelectionOption(
                          icon: Icons.brightness_auto,
                          label: l10n.themeModeSystem,
                          isSelected: currentThemeMode == ThemeMode.system,
                          onTap: () => Navigator.of(ctx).pop(ThemeMode.system),
                        ),
                        _SelectionOption(
                          icon: Icons.light_mode_outlined,
                          label: l10n.themeModeLight,
                          isSelected: currentThemeMode == ThemeMode.light,
                          onTap: () => Navigator.of(ctx).pop(ThemeMode.light),
                        ),
                        _SelectionOption(
                          icon: Icons.dark_mode_outlined,
                          label: l10n.themeModeDark,
                          isSelected: currentThemeMode == ThemeMode.dark,
                          onTap: () => Navigator.of(ctx).pop(ThemeMode.dark),
                        ),
                      ],
                    ),
                  );
                  if (selected != null) {
                    ref.read(themeModeProvider.notifier).setThemeMode(selected);
                  }
                },
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
                iconColor: AppColors.iconCyan(b),
                title: l10n.language,
                subtitleText: _languageLabel(currentLocale, l10n),
                onTap: () async {
                  final currentValue = currentLocale?.languageCode ?? 'system';
                  final languages = <(String, String)>[
                    ('en', l10n.languageEnglish),
                    ('de', l10n.languageGerman),
                    ('es', l10n.languageSpanish),
                    ('fr', l10n.languageFrench),
                    ('pt', l10n.languagePortuguese),
                    ('it', l10n.languageItalian),
                    ('nl', l10n.languageDutch),
                    ('sv', l10n.languageSwedish),
                    ('da', l10n.languageDanish),
                    ('nb', l10n.languageNorwegian),
                    ('pl', l10n.languagePolish),
                    ('cs', l10n.languageCzech),
                    ('hr', l10n.languageCroatian),
                    ('ro', l10n.languageRomanian),
                    ('tr', l10n.languageTurkish),
                    ('ru', l10n.languageRussian),
                    ('uk', l10n.languageUkrainian),
                    ('ar', l10n.languageArabic),
                    ('hi', l10n.languageHindi),
                    ('th', l10n.languageThai),
                    ('id', l10n.languageIndonesian),
                    ('vi', l10n.languageVietnamese),
                    ('zh', l10n.languageChinese),
                    ('ja', l10n.languageJapanese),
                    ('ko', l10n.languageKorean),
                  ];
                  final selected = await showDialog<String>(
                    context: context,
                    builder: (ctx) => SimpleDialog(
                      title: Text(l10n.language),
                      children: [
                        _SelectionOption(
                          icon: Icons.translate,
                          label: l10n.languageSystem,
                          isSelected: currentValue == 'system',
                          onTap: () => Navigator.of(ctx).pop('system'),
                        ),
                        for (final (code, label) in languages)
                          _SelectionOption(
                            icon: Icons.language,
                            label: label,
                            isSelected: currentValue == code,
                            onTap: () => Navigator.of(ctx).pop(code),
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

  String _themeModeLabel(ThemeMode mode, AppLocalizations l10n) {
    return switch (mode) {
      ThemeMode.light => l10n.themeModeLight,
      ThemeMode.dark => l10n.themeModeDark,
      ThemeMode.system => l10n.themeModeSystem,
    };
  }

  String _languageLabel(Locale? locale, AppLocalizations l10n) {
    return switch (locale?.languageCode) {
      'en' => l10n.languageEnglish,
      'de' => l10n.languageGerman,
      'es' => l10n.languageSpanish,
      'fr' => l10n.languageFrench,
      'pt' => l10n.languagePortuguese,
      'it' => l10n.languageItalian,
      'nl' => l10n.languageDutch,
      'sv' => l10n.languageSwedish,
      'da' => l10n.languageDanish,
      'nb' => l10n.languageNorwegian,
      'pl' => l10n.languagePolish,
      'cs' => l10n.languageCzech,
      'hr' => l10n.languageCroatian,
      'ro' => l10n.languageRomanian,
      'tr' => l10n.languageTurkish,
      'ru' => l10n.languageRussian,
      'uk' => l10n.languageUkrainian,
      'ar' => l10n.languageArabic,
      'hi' => l10n.languageHindi,
      'th' => l10n.languageThai,
      'id' => l10n.languageIndonesian,
      'vi' => l10n.languageVietnamese,
      'zh' => l10n.languageChinese,
      'ja' => l10n.languageJapanese,
      'ko' => l10n.languageKorean,
      _ => l10n.languageSystem,
    };
  }
}

class _SelectionOption extends StatelessWidget {
  const _SelectionOption({
    required this.icon,
    required this.label,
    required this.isSelected,
    required this.onTap,
  });

  final IconData icon;
  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ListTile(
      leading: Icon(icon, color: theme.colorScheme.onSurfaceVariant),
      title: Text(label),
      trailing: isSelected
          ? Icon(Icons.check, color: theme.colorScheme.primary)
          : null,
      onTap: onTap,
    );
  }
}
