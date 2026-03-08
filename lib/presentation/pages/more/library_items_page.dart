import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fleetpilot/l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';

import '../../../domain/entities/library_item.dart';
import '../../providers/blueprint_providers.dart';
import '../../widgets/common/error_state_widget.dart';
import '../../widgets/common/loading_widget.dart';

/// Page showing all library items across all blueprints.
class LibraryItemsPage extends ConsumerWidget {
  const LibraryItemsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context);
    final theme = Theme.of(context);
    final blueprintsAsync = ref.watch(blueprintsProvider);
    // Pre-fetch library item details for type detection.
    ref.watch(allLibraryItemDetailsProvider);

    return Scaffold(
      appBar: AppBar(title: Text(l10n.libraryItems)),
      body: blueprintsAsync.when(
        data: (blueprints) {
          if (blueprints.isEmpty) {
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
                    'No library items found.',
                    style: theme.textTheme.bodyLarge,
                  ),
                ],
              ),
            );
          }

          return ListView.builder(
            padding: const EdgeInsets.all(12),
            itemCount: blueprints.length,
            itemBuilder: (context, index) {
              final bp = blueprints[index];
              return _BlueprintLibrarySection(
                blueprintName: bp.name,
                blueprintId: bp.id,
              );
            },
          );
        },
        loading: () => const LoadingWidget(),
        error: (error, _) => ErrorStateWidget(
          failure: error,
          onRetry: () => ref.invalidate(blueprintsProvider),
        ),
      ),
    );
  }
}

class _BlueprintLibrarySection extends ConsumerWidget {
  const _BlueprintLibrarySection({
    required this.blueprintName,
    required this.blueprintId,
  });

  final String blueprintName;
  final String blueprintId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final itemsAsync = ref.watch(blueprintLibraryItemsProvider(blueprintId));
    final detailsLookup = ref.watch(allLibraryItemDetailsProvider).value ?? {};

    return itemsAsync.when(
      data: (items) {
        if (items.isEmpty) return const SizedBox.shrink();

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(4, 12, 4, 8),
              child: Row(
                children: [
                  Icon(Icons.layers, size: 18, color: colorScheme.primary),
                  const SizedBox(width: 8),
                  Text(
                    blueprintName,
                    style: theme.textTheme.titleSmall?.copyWith(
                      color: colorScheme.primary,
                    ),
                  ),
                  const Spacer(),
                  Text(
                    '${items.length}',
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
                      item: items[i],
                      details: detailsLookup[items[i].id],
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
      },
      loading: () => const SizedBox.shrink(),
      error: (_, _) => const SizedBox.shrink(),
    );
  }
}

class _LibraryItemTile extends StatelessWidget {
  const _LibraryItemTile({required this.item, this.details});

  final LibraryItem item;
  final Map<String, dynamic>? details;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    final id = item.id;
    final name = item.name ?? 'Unknown';
    final category = details?['_category'] as String?;
    final icon = _iconForCategory(category);
    final color = _colorForCategory(category, colorScheme);
    final subtitle = _displayCategory(category);

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
      title: Text(
        name,
        style: theme.textTheme.bodyMedium,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      subtitle: subtitle != null
          ? Text(
              subtitle,
              style: theme.textTheme.bodySmall?.copyWith(
                color: colorScheme.onSurfaceVariant,
              ),
            )
          : null,
      trailing: id != null
          ? Icon(
              Icons.chevron_right,
              color: colorScheme.onSurfaceVariant,
              size: 20,
            )
          : null,
      dense: true,
      onTap: id != null
          ? () => context.push(
                '/more/library-items/$id?name=${Uri.encodeComponent(name)}',
              )
          : null,
    );
  }

  static IconData _iconForCategory(String? category) {
    switch (category) {
      case 'custom-script':
        return Icons.code;
      case 'custom-app':
        return Icons.apps;
      case 'custom-profile':
        return Icons.tune;
      default:
        return Icons.inventory_2;
    }
  }

  static Color _colorForCategory(String? category, ColorScheme cs) {
    switch (category) {
      case 'custom-script':
        return Colors.orange;
      case 'custom-app':
        return cs.tertiary;
      case 'custom-profile':
        return cs.primary;
      default:
        return cs.onSurfaceVariant;
    }
  }

  static String? _displayCategory(String? category) {
    switch (category) {
      case 'custom-script':
        return 'Custom Script';
      case 'custom-app':
        return 'Custom App';
      case 'custom-profile':
        return 'Custom Profile';
      default:
        return null;
    }
  }
}
