import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fleetpilot/l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';

import '../../providers/blueprint_providers.dart';
import '../../widgets/common/error_state_widget.dart';
import '../../widgets/common/loading_widget.dart';

/// Page showing all library items across all blueprints, grouped by category.
/// Items are deduplicated — each item appears once with its blueprint associations.
class LibraryItemsPage extends ConsumerWidget {
  const LibraryItemsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context);
    final theme = Theme.of(context);
    final itemsAsync = ref.watch(aggregatedLibraryItemsProvider);
    final detailsLookup = ref.watch(allLibraryItemDetailsProvider).value ?? {};
    final searchQuery = ref.watch(libraryItemSearchQueryProvider).toLowerCase();

    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            title: Text(l10n.libraryItems),
            floating: true,
            snap: true,
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(64),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                child: SearchBar(
                  hintText: l10n.searchLibraryItems,
                  leading: const Padding(
                    padding: EdgeInsets.only(left: 8),
                    child: Icon(Icons.search),
                  ),
                  onChanged: (value) =>
                      ref.read(libraryItemSearchQueryProvider.notifier).state =
                          value,
                  elevation: WidgetStateProperty.all(0),
                  backgroundColor: WidgetStateProperty.all(
                    theme.colorScheme.surfaceContainerHigh,
                  ),
                ),
              ),
            ),
          ),
        ],
        body: itemsAsync.when(
          data: (items) {
            // Filter by search query
            final filtered = searchQuery.isEmpty
                ? items
                : items.where((agg) {
                    final name = (agg.item.name ?? '').toLowerCase();
                    return name.contains(searchQuery);
                  }).toList();

            if (filtered.isEmpty) {
              return Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.inventory_2_outlined,
                      size: 48,
                      color: theme.colorScheme.onSurfaceVariant,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      l10n.noLibraryItemsFound,
                      style: theme.textTheme.bodyLarge,
                    ),
                  ],
                ),
              );
            }

            // Group by category
            final groups = <String, List<AggregatedLibraryItem>>{};
            for (final agg in filtered) {
              final details = detailsLookup[agg.item.id];
              final category =
                  (details?['_category'] as String?) ??
                  agg.item.type ??
                  '_built-in';
              groups.putIfAbsent(category, () => []).add(agg);
            }

            // Order: scripts, apps, profiles, in-house, VPP, managed, etc.
            final orderedKeys = [
              'custom-script',
              'custom-app',
              'custom-profile',
              'in-house-app',
              'automatic-app',
              'profile',
              'kandji-setup',
              'macos-release',
              'os-release',
              'threat-security-policy',
              '_unknown',
              '_built-in',
            ];
            // Also include any keys not explicitly listed.
            final allKeys = groups.keys.toList();
            final sortedGroups =
                <MapEntry<String, List<AggregatedLibraryItem>>>[];
            for (final k in orderedKeys) {
              if (groups.containsKey(k)) {
                sortedGroups.add(MapEntry(k, groups[k]!));
                allKeys.remove(k);
              }
            }
            // Append remaining categories not in the ordered list.
            for (final k in allKeys) {
              sortedGroups.add(MapEntry(k, groups[k]!));
            }

            return ListView.builder(
              padding: const EdgeInsets.all(12),
              itemCount: sortedGroups.length,
              itemBuilder: (context, index) {
                final entry = sortedGroups[index];
                return _CategorySection(
                  category: entry.key,
                  items: entry.value,
                  detailsLookup: detailsLookup,
                );
              },
            );
          },
          loading: () => const LoadingWidget(),
          error: (error, _) => ErrorStateWidget(
            failure: error,
            onRetry: () => ref.invalidate(aggregatedLibraryItemsProvider),
          ),
        ),
      ),
    );
  }
}

class _CategorySection extends StatelessWidget {
  const _CategorySection({
    required this.category,
    required this.items,
    required this.detailsLookup,
  });

  final String category;
  final List<AggregatedLibraryItem> items;
  final Map<String, Map<String, dynamic>> detailsLookup;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final icon = _iconForCategory(category);
    final color = _colorForCategory(category, colorScheme);
    final label = _displayCategory(category, l10n);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(4, 12, 4, 8),
          child: Row(
            children: [
              Icon(icon, size: 18, color: color),
              const SizedBox(width: 8),
              Text(
                label,
                style: theme.textTheme.titleSmall?.copyWith(color: color),
              ),
              const Spacer(),
              Text(
                l10n.libraryItemCount(items.length),
                style: theme.textTheme.labelSmall?.copyWith(
                  color: colorScheme.onSurfaceVariant,
                ),
              ),
            ],
          ),
        ),
        Card(
          clipBehavior: Clip.antiAlias,
          child: Column(
            children: [
              for (var i = 0; i < items.length; i++) ...[
                _LibraryItemTile(
                  agg: items[i],
                  details: detailsLookup[items[i].item.id],
                  category: category,
                ),
                if (i < items.length - 1)
                  Divider(
                    height: 1,
                    indent: 56,
                    color: colorScheme.outlineVariant,
                  ),
              ],
            ],
          ),
        ),
      ],
    );
  }
}

class _LibraryItemTile extends StatelessWidget {
  const _LibraryItemTile({
    required this.agg,
    this.details,
    required this.category,
  });

  final AggregatedLibraryItem agg;
  final Map<String, dynamic>? details;
  final String category;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final l10n = AppLocalizations.of(context);

    final id = agg.item.id;
    final name = agg.item.name ?? 'Unknown';
    final icon = _iconForCategory(category);
    final color = _colorForCategory(category, colorScheme);
    final blueprintNames = agg.blueprintNames;

    return ListTile(
      leading: Container(
        width: 36,
        height: 36,
        decoration: BoxDecoration(
          color: color.withValues(alpha: 0.12),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Icon(icon, size: 18, color: color),
      ),
      title: Row(
        children: [
          Expanded(
            child: Text(
              name,
              style: theme.textTheme.bodyMedium,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const SizedBox(width: 6),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
            decoration: BoxDecoration(
              color: color.withValues(alpha: 0.15),
              borderRadius: BorderRadius.circular(4),
            ),
            child: Text(
              _shortTypeLabel(category, l10n),
              style: theme.textTheme.labelSmall?.copyWith(
                color: color,
                fontSize: 9,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
      subtitle: Padding(
        padding: const EdgeInsets.only(top: 4),
        child: Wrap(
          spacing: 4,
          runSpacing: 4,
          children: [
            Icon(Icons.layers_outlined, size: 12, color: colorScheme.outline),
            Text(
              l10n.inBlueprints(blueprintNames.length),
              style: theme.textTheme.labelSmall?.copyWith(
                color: colorScheme.onSurfaceVariant,
              ),
            ),
            for (final bp in blueprintNames.take(3))
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 1),
                decoration: BoxDecoration(
                  color: colorScheme.secondaryContainer,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Text(
                  bp,
                  style: theme.textTheme.labelSmall?.copyWith(
                    color: colorScheme.onSecondaryContainer,
                    fontSize: 10,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            if (blueprintNames.length > 3)
              Text(
                '+${blueprintNames.length - 3}',
                style: theme.textTheme.labelSmall?.copyWith(
                  color: colorScheme.onSurfaceVariant,
                  fontSize: 10,
                ),
              ),
          ],
        ),
      ),
      trailing: id != null
          ? Icon(
              Icons.chevron_right,
              color: colorScheme.onSurfaceVariant,
              size: 20,
            )
          : null,
      dense: true,
      onTap: id != null
          ? () {
              final params = <String, String>{
                'name': Uri.encodeComponent(name),
                if (agg.item.type != null)
                  'type': Uri.encodeComponent(agg.item.type!),
              };
              final query = params.entries
                  .map((e) => '${e.key}=${e.value}')
                  .join('&');
              context.push('/more/library-items/$id?$query');
            }
          : null,
    );
  }
}

IconData _iconForCategory(String category) {
  return switch (category) {
    'custom-script' => Icons.code,
    'custom-app' => Icons.apps,
    'custom-profile' => Icons.tune,
    'in-house-app' => Icons.phone_iphone,
    'automatic-app' => Icons.shopping_bag_outlined,
    'profile' => Icons.settings_applications,
    'kandji-setup' => Icons.rocket_launch_outlined,
    'macos-release' || 'os-release' => Icons.system_update,
    'threat-security-policy' => Icons.security,
    '_unknown' => Icons.help_outline,
    _ => Icons.inventory_2,
  };
}

Color _colorForCategory(String category, ColorScheme cs) {
  return switch (category) {
    'custom-script' => Colors.orange,
    'custom-app' => cs.tertiary,
    'custom-profile' => cs.primary,
    'in-house-app' => Colors.teal,
    'automatic-app' => Colors.blue,
    'profile' => Colors.indigo,
    'kandji-setup' => Colors.deepPurple,
    'macos-release' || 'os-release' => Colors.green,
    'threat-security-policy' => Colors.red,
    '_unknown' => cs.outline,
    _ => cs.onSurfaceVariant,
  };
}

String _shortTypeLabel(String category, AppLocalizations l10n) {
  return switch (category) {
    'custom-script' => l10n.shortTypeScript,
    'custom-app' => l10n.shortTypeCustom,
    'custom-profile' => l10n.shortTypeProfile,
    'in-house-app' => l10n.shortTypeInHouse,
    'automatic-app' => l10n.shortTypeVpp,
    'profile' => l10n.shortTypeManaged,
    'kandji-setup' => l10n.shortTypeKandji,
    'macos-release' => l10n.shortTypeMacos,
    'os-release' => l10n.shortTypeOs,
    'threat-security-policy' => l10n.shortTypeSecurity,
    '_unknown' => l10n.shortTypeAuto,
    _ => category,
  };
}

String _displayCategory(String category, AppLocalizations l10n) {
  return switch (category) {
    'custom-script' => l10n.categoryCustomScript,
    'custom-app' => l10n.categoryCustomApp,
    'custom-profile' => l10n.categoryCustomProfile,
    'in-house-app' => l10n.categoryInHouseApp,
    'automatic-app' => l10n.categoryVppApps,
    'profile' => l10n.categoryManagedProfiles,
    'kandji-setup' => l10n.categoryKandjiSetup,
    'macos-release' => l10n.categoryMacosRelease,
    'os-release' => l10n.categoryOsUpdates,
    'threat-security-policy' => l10n.categoryThreatPolicy,
    '_unknown' => l10n.categoryAutoApps,
    _ => category.replaceAll('-', ' ').replaceAll('_', ' '),
  };
}
