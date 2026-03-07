import 'package:flutter/material.dart';
import 'package:fleetpilot/l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';

import '../../../core/constants/app_colors.dart';
import '../../widgets/settings/settings.dart';

class MorePage extends StatelessWidget {
  const MorePage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            title: Text(l10n.navMore),
            floating: true,
            snap: true,
          ),
        ],
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          children: [
            // Data section
            const SizedBox(height: 8),
            SectionHeader(title: l10n.libraryItems),
            SettingsGroupCard(
              children: [
                SettingsCategoryTile(
                  icon: Icons.library_books_outlined,
                  iconColor: AppColors.iconPurple,
                  title: l10n.libraryItems,
                  onTap: () => context.push('/more/library-items'),
                ),
              ],
            ),

            // Data section
            const SizedBox(height: 16),
            SectionHeader(title: l10n.manageTags),
            SettingsGroupCard(
              children: [
                SettingsCategoryTile(
                  icon: Icons.label_outlined,
                  iconColor: AppColors.iconTeal,
                  title: l10n.manageTags,
                  onTap: () => context.push('/more/tags'),
                ),
              ],
            ),

            // Integrations section
            const SizedBox(height: 16),
            SectionHeader(title: l10n.adeIntegrations),
            SettingsGroupCard(
              children: [
                SettingsCategoryTile(
                  icon: Icons.device_hub_outlined,
                  iconColor: AppColors.iconBlue,
                  title: l10n.adeIntegrations,
                  onTap: () => context.push('/more/ade-integrations'),
                ),
              ],
            ),

            // Security section
            const SizedBox(height: 16),
            SectionHeader(title: l10n.security),
            SettingsGroupCard(
              children: [
                SettingsCategoryTile(
                  icon: Icons.shield_outlined,
                  iconColor: AppColors.iconOrange,
                  title: l10n.threats,
                  onTap: () => context.push('/more/threats'),
                ),
                SettingsCategoryTile(
                  icon: Icons.bug_report_outlined,
                  iconColor: AppColors.iconRed,
                  title: l10n.vulnerabilities,
                  onTap: () => context.push('/more/vulnerabilities'),
                ),
                SettingsCategoryTile(
                  icon: Icons.psychology_outlined,
                  iconColor: AppColors.iconDeepOrange,
                  title: l10n.behavioralDetections,
                  onTap: () => context.push('/more/behavioral-detections'),
                ),
                SettingsCategoryTile(
                  icon: Icons.history,
                  iconColor: AppColors.iconIndigo,
                  title: l10n.auditLog,
                  onTap: () => context.push('/more/audit-log'),
                ),
              ],
            ),

            // General section
            const SizedBox(height: 16),
            SettingsGroupCard(
              children: [
                SettingsCategoryTile(
                  icon: Icons.settings_outlined,
                  iconColor: colorScheme.primary,
                  title: l10n.navSettings,
                  onTap: () => context.push('/more/settings'),
                ),
                SettingsCategoryTile(
                  icon: Icons.info_outline,
                  iconColor: AppColors.iconGrey,
                  title: l10n.aboutApp,
                  onTap: () => context.push('/more/about'),
                ),
              ],
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
