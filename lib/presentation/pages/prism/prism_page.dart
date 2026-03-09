import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fleetpilot/l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';

import '../../../data/datasources/remote/prism_api.dart';
import '../../providers/prism_providers.dart';
import '../../widgets/common/error_state_widget.dart';
import '../../widgets/common/loading_widget.dart';

/// Overview page listing all Prism categories with record counts.
class PrismPage extends ConsumerWidget {
  const PrismPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context);
    final countsAsync = ref.watch(prismAllCountsProvider);

    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            title: Text(l10n.prismTitle),
            floating: true,
            snap: true,
          ),
        ],
        body: countsAsync.when(
          data: (counts) {
            return ListView.builder(
              padding: const EdgeInsets.all(12),
              itemCount: PrismApi.categories.length,
              itemBuilder: (context, index) {
                final cat = PrismApi.categories[index];
                final count = counts[cat] ?? 0;
                return _CategoryTile(category: cat, count: count);
              },
            );
          },
          loading: () => const LoadingWidget(),
          error: (error, _) => ErrorStateWidget(
            failure: error,
            onRetry: () => ref.invalidate(prismAllCountsProvider),
          ),
        ),
      ),
    );
  }
}

class _CategoryTile extends ConsumerWidget {
  const _CategoryTile({required this.category, required this.count});

  final String category;
  final int count;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final l10n = AppLocalizations.of(context);
    final label = _categoryLabel(category, l10n);
    final icon = _categoryIcon(category);
    final color = _categoryColor(category, theme.colorScheme);

    return Card(
      child: ListTile(
        leading: Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: color.withValues(alpha: 0.12),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Icon(icon, color: color, size: 20),
        ),
        title: Text(label, style: theme.textTheme.bodyMedium),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
              decoration: BoxDecoration(
                color: theme.colorScheme.secondaryContainer,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                '$count',
                style: theme.textTheme.labelSmall?.copyWith(
                  color: theme.colorScheme.onSecondaryContainer,
                ),
              ),
            ),
            const SizedBox(width: 4),
            Icon(
              Icons.chevron_right,
              size: 20,
              color: theme.colorScheme.onSurfaceVariant,
            ),
          ],
        ),
        onTap: () {
          ref.read(prismSelectedCategoryProvider.notifier).state = category;
          context.push('/prism/$category');
        },
      ),
    );
  }
}

IconData _categoryIcon(String category) {
  return switch (category) {
    'activation_lock' => Icons.lock_outline,
    'apps' => Icons.apps,
    'application_firewall' => Icons.fireplace_outlined,
    'cellular' => Icons.cell_tower,
    'certificates' => Icons.verified_outlined,
    'desktop_and_screensaver' => Icons.desktop_mac_outlined,
    'device_information' => Icons.info_outline,
    'filevault' => Icons.enhanced_encryption_outlined,
    'gatekeeper_and_xprotect' => Icons.security,
    'installed_profiles' => Icons.assignment_outlined,
    'kernel_extensions' => Icons.extension_outlined,
    'launch_agents_and_daemons' => Icons.rocket_launch_outlined,
    'local_users' => Icons.person_outline,
    'startup_settings' => Icons.settings_power,
    'system_extensions' => Icons.widgets_outlined,
    'transparency_database' => Icons.visibility_outlined,
    _ => Icons.analytics_outlined,
  };
}

Color _categoryColor(String category, ColorScheme cs) {
  return switch (category) {
    'activation_lock' => Colors.orange,
    'apps' => cs.tertiary,
    'application_firewall' => Colors.red,
    'cellular' => Colors.teal,
    'certificates' => Colors.green,
    'desktop_and_screensaver' => Colors.indigo,
    'device_information' => cs.primary,
    'filevault' => Colors.deepPurple,
    'gatekeeper_and_xprotect' => Colors.red,
    'installed_profiles' => Colors.blue,
    'kernel_extensions' => Colors.brown,
    'launch_agents_and_daemons' => Colors.deepOrange,
    'local_users' => Colors.cyan,
    'startup_settings' => Colors.blueGrey,
    'system_extensions' => Colors.purple,
    'transparency_database' => Colors.amber,
    _ => cs.onSurfaceVariant,
  };
}

String _categoryLabel(String category, AppLocalizations l10n) {
  return switch (category) {
    'activation_lock' => l10n.prismCategoryActivationLock,
    'apps' => l10n.prismCategoryApps,
    'application_firewall' => l10n.prismCategoryApplicationFirewall,
    'cellular' => l10n.prismCategoryCellular,
    'certificates' => l10n.prismCategoryCertificates,
    'desktop_and_screensaver' => l10n.prismCategoryDesktopAndScreensaver,
    'device_information' => l10n.prismCategoryDeviceInformation,
    'filevault' => l10n.prismCategoryFilevault,
    'gatekeeper_and_xprotect' => l10n.prismCategoryGatekeeperAndXprotect,
    'installed_profiles' => l10n.prismCategoryInstalledProfiles,
    'kernel_extensions' => l10n.prismCategoryKernelExtensions,
    'launch_agents_and_daemons' => l10n.prismCategoryLaunchAgentsAndDaemons,
    'local_users' => l10n.prismCategoryLocalUsers,
    'startup_settings' => l10n.prismCategoryStartupSettings,
    'system_extensions' => l10n.prismCategorySystemExtensions,
    'transparency_database' => l10n.prismCategoryTransparencyDatabase,
    _ => category.replaceAll('_', ' '),
  };
}
