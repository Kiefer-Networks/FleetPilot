import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fleetpilot/l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';

import '../../../core/di/providers.dart';
import '../../../domain/entities/blueprint.dart';
import '../../../domain/entities/library_item.dart';
import '../../providers/blueprint_providers.dart';
import '../../widgets/common/error_state_widget.dart';
import '../../widgets/common/loading_widget.dart';

/// Blueprint detail screen showing info, device count, and library items.
class BlueprintDetailPage extends ConsumerWidget {
  const BlueprintDetailPage({super.key, required this.blueprintId});

  final String blueprintId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final blueprintsAsync = ref.watch(blueprintsProvider);

    return blueprintsAsync.when(
      data: (blueprints) {
        final blueprint = blueprints.cast<Blueprint?>().firstWhere(
          (bp) => bp!.id == blueprintId,
          orElse: () => null,
        );
        if (blueprint == null) {
          return Scaffold(
            appBar: AppBar(),
            body: ErrorStateWidget(
              failure: Exception('Blueprint not found'),
              onRetry: () => ref.invalidate(blueprintsProvider),
            ),
          );
        }
        return _BlueprintDetailScaffold(blueprint: blueprint);
      },
      loading: () => Scaffold(appBar: AppBar(), body: const LoadingWidget()),
      error: (error, _) => Scaffold(
        appBar: AppBar(),
        body: ErrorStateWidget(
          failure: error,
          onRetry: () => ref.invalidate(blueprintsProvider),
        ),
      ),
    );
  }
}

class _BlueprintDetailScaffold extends ConsumerWidget {
  const _BlueprintDetailScaffold({required this.blueprint});

  final Blueprint blueprint;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context);
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final deviceCount = ref.watch(blueprintDeviceCountProvider(blueprint.id));
    final libraryItemsAsync = ref.watch(
      blueprintLibraryItemsProvider(blueprint.id),
    );

    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            title: Text(blueprint.name),
            floating: true,
            snap: true,
            actions: [
              IconButton(
                icon: const Icon(Icons.edit_outlined),
                tooltip: l10n.editBlueprint,
                onPressed: () => _editBlueprint(context, ref),
              ),
              PopupMenuButton<String>(
                tooltip: l10n.moreActions,
                onSelected: (value) {
                  if (value == 'delete') {
                    _deleteBlueprint(context, ref);
                  }
                },
                itemBuilder: (ctx) => [
                  PopupMenuItem(
                    value: 'delete',
                    child: ListTile(
                      leading: Icon(
                        Icons.delete_outline,
                        color: colorScheme.error,
                      ),
                      title: Text(
                        l10n.deleteBlueprint,
                        style: TextStyle(color: colorScheme.error),
                      ),
                      contentPadding: EdgeInsets.zero,
                      dense: true,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
        body: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            // Info card
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    Container(
                      width: 56,
                      height: 56,
                      decoration: BoxDecoration(
                        color: colorScheme.tertiaryContainer,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Icon(
                        Icons.layers,
                        color: colorScheme.onTertiaryContainer,
                        size: 28,
                      ),
                    ),
                    const SizedBox(height: 12),
                    Text(blueprint.name, style: theme.textTheme.titleLarge),
                    if (blueprint.description != null &&
                        blueprint.description!.isNotEmpty) ...[
                      const SizedBox(height: 4),
                      Text(
                        blueprint.description!,
                        style: theme.textTheme.bodyMedium?.copyWith(
                          color: colorScheme.onSurfaceVariant,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                    const SizedBox(height: 12),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color: blueprint.enrollmentCodeIsActive
                            ? colorScheme.primaryContainer
                            : colorScheme.surfaceContainerHighest,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        blueprint.enrollmentCodeIsActive
                            ? l10n.enrollmentActive
                            : l10n.enrollmentInactive,
                        style: theme.textTheme.labelMedium?.copyWith(
                          color: blueprint.enrollmentCodeIsActive
                              ? colorScheme.onPrimaryContainer
                              : colorScheme.onSurfaceVariant,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 12),

            // Device count card
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  children: [
                    Icon(Icons.devices, size: 20, color: colorScheme.primary),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            l10n.devices,
                            style: theme.textTheme.labelSmall?.copyWith(
                              color: colorScheme.onSurfaceVariant,
                            ),
                          ),
                          Text(
                            l10n.deviceCount(deviceCount),
                            style: theme.textTheme.bodyMedium,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 12),

            // Download Enrollment Profile card
            Card(
              clipBehavior: Clip.antiAlias,
              child: InkWell(
                onTap: () => _downloadOtaProfile(context, ref),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    children: [
                      Icon(
                        Icons.download_outlined,
                        size: 20,
                        color: colorScheme.primary,
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Text(
                          l10n.downloadOtaProfile,
                          style: theme.textTheme.bodyMedium,
                        ),
                      ),
                      Icon(
                        Icons.chevron_right,
                        size: 20,
                        color: colorScheme.onSurfaceVariant,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),

            // Library items section header
            Text(
              l10n.libraryItems,
              style: theme.textTheme.titleSmall?.copyWith(
                color: colorScheme.primary,
              ),
            ),
            const SizedBox(height: 8),

            // Library items list
            libraryItemsAsync.when(
              data: (items) {
                if (items.isEmpty) {
                  return Card(
                    child: Padding(
                      padding: const EdgeInsets.all(24),
                      child: Center(
                        child: Column(
                          children: [
                            Icon(
                              Icons.library_books_outlined,
                              size: 40,
                              color: colorScheme.onSurfaceVariant,
                            ),
                            const SizedBox(height: 8),
                            Text(
                              l10n.noAppsFound,
                              style: theme.textTheme.bodyMedium?.copyWith(
                                color: colorScheme.onSurfaceVariant,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }

                // Group items by type
                final grouped = <String, List<LibraryItem>>{};
                for (final item in items) {
                  final type = item.type ?? 'other';
                  grouped.putIfAbsent(type, () => []).add(item);
                }

                final sortedTypes = grouped.keys.toList()..sort();
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    for (final type in sortedTypes) ...[
                      Padding(
                        padding: const EdgeInsets.only(top: 8, bottom: 4),
                        child: Row(
                          children: [
                            Icon(
                              _iconForType(type),
                              size: 16,
                              color: colorScheme.onSurfaceVariant,
                            ),
                            const SizedBox(width: 8),
                            Text(
                              _displayType(type),
                              style: theme.textTheme.labelMedium?.copyWith(
                                color: colorScheme.onSurfaceVariant,
                              ),
                            ),
                          ],
                        ),
                      ),
                      ...grouped[type]!.map(
                        (item) => _LibraryItemTile(
                          item: item,
                          onRemove: () =>
                              _removeLibraryItem(context, ref, item),
                          onTap: () {
                            final id = item.itemId ?? item.id;
                            final name = item.name ?? 'Unknown';
                            if (id != null) {
                              final params = <String, String>{
                                'name': Uri.encodeComponent(name),
                                if (item.type != null)
                                  'type': Uri.encodeComponent(item.type!),
                              };
                              final query = params.entries
                                  .map((e) => '${e.key}=${e.value}')
                                  .join('&');
                              context.push(
                                '/more/library-items/$id?$query',
                              );
                            }
                          },
                        ),
                      ),
                    ],
                  ],
                );
              },
              loading: () => const Padding(
                padding: EdgeInsets.all(24),
                child: Center(child: CircularProgressIndicator()),
              ),
              error: (error, _) => ErrorStateWidget(
                failure: error,
                onRetry: () =>
                    ref.invalidate(blueprintLibraryItemsProvider(blueprint.id)),
              ),
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }

  Future<void> _editBlueprint(BuildContext context, WidgetRef ref) async {
    final l10n = AppLocalizations.of(context);
    final nameCtl = TextEditingController(text: blueprint.name);
    final descCtl = TextEditingController(text: blueprint.description ?? '');

    final result = await showDialog<Map<String, dynamic>>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text(l10n.editBlueprint),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: nameCtl,
              decoration: InputDecoration(
                labelText: l10n.blueprintName,
                border: const OutlineInputBorder(),
              ),
              autofocus: true,
            ),
            const SizedBox(height: 12),
            TextField(
              controller: descCtl,
              decoration: InputDecoration(
                labelText: l10n.blueprintDescription,
                border: const OutlineInputBorder(),
              ),
              maxLines: 3,
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(ctx).pop(),
            child: Text(l10n.cancel),
          ),
          FilledButton(
            onPressed: () {
              if (nameCtl.text.trim().isEmpty) return;
              Navigator.of(ctx).pop(<String, dynamic>{
                'name': nameCtl.text.trim(),
                'description': descCtl.text.trim(),
              });
            },
            child: Text(l10n.save),
          ),
        ],
      ),
    );
    if (result == null || !context.mounted) return;

    try {
      final repo = await ref.read(blueprintRepositoryProvider.future);
      await repo.updateBlueprint(blueprint.id, result);
      ref.invalidate(blueprintsProvider);
      if (context.mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text(l10n.blueprintUpdated)));
      }
    } catch (_) {
      if (context.mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text(l10n.actionFailed)));
      }
    }
  }

  Future<void> _deleteBlueprint(BuildContext context, WidgetRef ref) async {
    final l10n = AppLocalizations.of(context);
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text(l10n.deleteBlueprint),
        content: Text(l10n.deleteBlueprintConfirm),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(ctx).pop(false),
            child: Text(l10n.cancel),
          ),
          FilledButton(
            style: FilledButton.styleFrom(
              backgroundColor: Theme.of(context).colorScheme.error,
            ),
            onPressed: () => Navigator.of(ctx).pop(true),
            child: Text(l10n.delete),
          ),
        ],
      ),
    );
    if (confirmed != true || !context.mounted) return;

    try {
      final repo = await ref.read(blueprintRepositoryProvider.future);
      await repo.deleteBlueprint(blueprint.id);
      ref.invalidate(blueprintsProvider);
      if (context.mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text(l10n.blueprintDeleted)));
        context.pop();
      }
    } catch (_) {
      if (context.mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text(l10n.actionFailed)));
      }
    }
  }

  Future<void> _removeLibraryItem(
    BuildContext context,
    WidgetRef ref,
    LibraryItem item,
  ) async {
    final l10n = AppLocalizations.of(context);
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text(l10n.removeLibraryItem),
        content: Text(item.name ?? item.itemId ?? ''),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(ctx).pop(false),
            child: Text(l10n.cancel),
          ),
          FilledButton(
            style: FilledButton.styleFrom(
              backgroundColor: Theme.of(context).colorScheme.error,
            ),
            onPressed: () => Navigator.of(ctx).pop(true),
            child: Text(l10n.delete),
          ),
        ],
      ),
    );
    if (confirmed != true || !context.mounted) return;

    try {
      final repo = await ref.read(blueprintRepositoryProvider.future);
      await repo.assignLibraryItem(blueprint.id, {
        'library_item_id': item.itemId ?? item.id,
        'action': 'remove',
      });
      ref.invalidate(blueprintLibraryItemsProvider(blueprint.id));
      if (context.mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text(l10n.libraryItemRemoved)));
      }
    } catch (_) {
      if (context.mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text(l10n.actionFailed)));
      }
    }
  }

  Future<void> _downloadOtaProfile(BuildContext context, WidgetRef ref) async {
    final l10n = AppLocalizations.of(context);
    try {
      final repo = await ref.read(blueprintRepositoryProvider.future);
      final profile = await repo.getOtaEnrollmentProfile(blueprint.id);
      if (!context.mounted) return;
      await Clipboard.setData(ClipboardData(text: profile));
      if (context.mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text(l10n.otaProfileCopied)));
      }
    } catch (_) {
      if (context.mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text(l10n.noOtaProfile)));
      }
    }
  }

  static IconData _iconForType(String type) {
    return switch (type) {
      'profile' => Icons.settings_outlined,
      'custom-app' || 'custom_app' => Icons.apps_outlined,
      'auto-app' || 'auto_app' => Icons.cloud_download_outlined,
      'os-update' || 'os_update' => Icons.system_update_outlined,
      'enrollment' => Icons.how_to_reg_outlined,
      'ssh' => Icons.terminal_outlined,
      'script' => Icons.code_outlined,
      _ => Icons.extension_outlined,
    };
  }

  static String _displayType(String type) {
    return type
        .replaceAll('-', ' ')
        .replaceAll('_', ' ')
        .split(' ')
        .map((w) => w.isNotEmpty ? '${w[0].toUpperCase()}${w.substring(1)}' : w)
        .join(' ');
  }
}

class _LibraryItemTile extends StatelessWidget {
  const _LibraryItemTile({required this.item, this.onRemove, this.onTap});

  final LibraryItem item;
  final VoidCallback? onRemove;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Card(
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
          child: Row(
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: colorScheme.secondaryContainer,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(
                  _BlueprintDetailScaffold._iconForType(item.type ?? 'other'),
                  color: colorScheme.onSecondaryContainer,
                  size: 20,
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item.name ?? item.itemId ?? 'Unknown',
                      style: theme.textTheme.bodyMedium,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 4),
                    if (item.type != null)
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 2,
                        ),
                        decoration: BoxDecoration(
                          color: colorScheme.surfaceContainerHighest,
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Text(
                          _BlueprintDetailScaffold._displayType(item.type!),
                          style: theme.textTheme.labelSmall?.copyWith(
                            color: colorScheme.onSurfaceVariant,
                          ),
                        ),
                      ),
                  ],
                ),
              ),
              if (onRemove != null)
                IconButton(
                  icon: Icon(
                    Icons.remove_circle_outline,
                    size: 20,
                    color: colorScheme.error,
                  ),
                  onPressed: onRemove,
                  padding: EdgeInsets.zero,
                  constraints: const BoxConstraints(
                    minWidth: 36,
                    minHeight: 36,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
