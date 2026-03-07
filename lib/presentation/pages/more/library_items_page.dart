import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fleetpilot/l10n/app_localizations.dart';

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
                    _LibraryItemTile(item: items[i]),
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
  const _LibraryItemTile({required this.item});

  final LibraryItem item;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final icon = _iconForType(item.type);
    final color = _colorForType(item.type, colorScheme);

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
        item.name ?? item.itemId ?? 'Unknown',
        style: theme.textTheme.bodyMedium,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      subtitle: item.type != null
          ? Text(
              item.type!,
              style: theme.textTheme.bodySmall?.copyWith(
                color: colorScheme.onSurfaceVariant,
              ),
            )
          : null,
      dense: true,
    );
  }

  IconData _iconForType(String? type) {
    final t = type?.toLowerCase() ?? '';
    if (t.contains('profile')) return Icons.tune;
    if (t.contains('app')) return Icons.apps;
    if (t.contains('script')) return Icons.code;
    if (t.contains('media')) return Icons.perm_media;
    return Icons.inventory_2;
  }

  Color _colorForType(String? type, ColorScheme cs) {
    final t = type?.toLowerCase() ?? '';
    if (t.contains('profile')) return cs.primary;
    if (t.contains('app')) return cs.tertiary;
    if (t.contains('script')) return Colors.orange;
    if (t.contains('media')) return cs.secondary;
    return cs.onSurfaceVariant;
  }
}
