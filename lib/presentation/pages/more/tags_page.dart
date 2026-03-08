import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fleetpilot/l10n/app_localizations.dart';

import '../../../core/di/providers.dart';
import '../../../domain/entities/tag.dart';
import '../../providers/device_providers.dart';
import '../../widgets/common/error_state_widget.dart';
import '../../widgets/common/loading_widget.dart';

/// Search query for tag list filtering.
final _tagSearchQueryProvider = StateProvider<String>((ref) => '');

/// Computes device counts per tag name from the full device list.
final tagDeviceCountsProvider = Provider<Map<String, int>>((ref) {
  final devicesAsync = ref.watch(devicesProvider);
  return devicesAsync.maybeWhen(
    data: (devices) {
      final counts = <String, int>{};
      for (final device in devices) {
        for (final tagName in device.tags) {
          counts[tagName] = (counts[tagName] ?? 0) + 1;
        }
      }
      return counts;
    },
    orElse: () => <String, int>{},
  );
});

/// Full-CRUD management page for tags.
class TagsPage extends ConsumerStatefulWidget {
  const TagsPage({super.key});

  @override
  ConsumerState<TagsPage> createState() => _TagsPageState();
}

class _TagsPageState extends ConsumerState<TagsPage> {
  final _searchController = SearchController();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final theme = Theme.of(context);
    final tagsAsync = ref.watch(tagsProvider);
    final searchQuery = ref.watch(_tagSearchQueryProvider).toLowerCase();
    final deviceCounts = ref.watch(tagDeviceCountsProvider);

    return Scaffold(
      appBar: AppBar(title: Text(l10n.manageTags)),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _showCreateEditDialog(context, ref),
        tooltip: l10n.createTag,
        child: const Icon(Icons.add),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
            child: SearchBar(
              controller: _searchController,
              hintText: l10n.searchTags,
              leading: const Icon(Icons.search, size: 20),
              trailing: [
                if (_searchController.text.isNotEmpty)
                  IconButton(
                    icon: const Icon(Icons.clear, size: 20),
                    tooltip: l10n.clearSearch,
                    onPressed: () {
                      _searchController.clear();
                      ref.read(_tagSearchQueryProvider.notifier).state = '';
                      setState(() {});
                    },
                  ),
              ],
              onChanged: (query) {
                ref.read(_tagSearchQueryProvider.notifier).state = query;
                setState(() {});
              },
              padding: const WidgetStatePropertyAll(
                EdgeInsets.symmetric(horizontal: 8),
              ),
            ),
          ),
          const SizedBox(height: 12),
          Expanded(
            child: tagsAsync.when(
              data: (tags) {
                final filtered = searchQuery.isEmpty
                    ? tags
                    : tags
                          .where(
                            (t) =>
                                t.name.toLowerCase().contains(searchQuery),
                          )
                          .toList();

                if (filtered.isEmpty) {
                  return Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.label_off_outlined,
                          size: 48,
                          color: theme.colorScheme.onSurfaceVariant,
                        ),
                        const SizedBox(height: 8),
                        Text(
                          l10n.noTagsFound,
                          style: theme.textTheme.bodyLarge,
                        ),
                      ],
                    ),
                  );
                }
                return RefreshIndicator(
                  onRefresh: () async => ref.invalidate(tagsProvider),
                  child: ListView.builder(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 8,
                    ),
                    itemCount: filtered.length,
                    itemBuilder: (context, index) {
                      final tag = filtered[index];
                      final count = deviceCounts[tag.name];
                      return _TagCard(
                        tag: tag,
                        deviceCount: count,
                        onEdit: () => _showCreateEditDialog(
                          context,
                          ref,
                          existingTag: tag,
                        ),
                        onDelete: () => _confirmDelete(context, ref, tag),
                      );
                    },
                  ),
                );
              },
              loading: () => const LoadingWidget(),
              error: (error, _) => ErrorStateWidget(
                failure: error,
                onRetry: () => ref.invalidate(tagsProvider),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Shows a dialog for creating or editing a tag.
  Future<void> _showCreateEditDialog(
    BuildContext context,
    WidgetRef ref, {
    Tag? existingTag,
  }) async {
    final l10n = AppLocalizations.of(context);
    final isEditing = existingTag != null;
    final nameController = TextEditingController(text: existingTag?.name ?? '');
    final formKey = GlobalKey<FormState>();

    final confirmed = await showDialog<bool>(
      context: context,
      builder: (dialogContext) {
        return AlertDialog(
          title: Text(isEditing ? l10n.editTag : l10n.createTag),
          content: Form(
            key: formKey,
            child: TextFormField(
              controller: nameController,
              decoration: InputDecoration(
                labelText: l10n.tagName,
                border: const OutlineInputBorder(),
              ),
              autofocus: true,
              textCapitalization: TextCapitalization.words,
              validator: (value) {
                if (value == null || value.trim().isEmpty) {
                  return l10n.validationRequired;
                }
                return null;
              },
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(dialogContext, false),
              child: Text(l10n.cancel),
            ),
            FilledButton(
              onPressed: () {
                if (formKey.currentState?.validate() ?? false) {
                  Navigator.pop(dialogContext, true);
                }
              },
              child: Text(l10n.save),
            ),
          ],
        );
      },
    );

    if (confirmed != true) return;

    final name = nameController.text.trim();
    if (!context.mounted) return;

    try {
      final repo = await ref.read(deviceRepositoryProvider.future);
      if (isEditing) {
        await repo.updateTag(existingTag.tagId, name);
        if (context.mounted) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text(l10n.tagUpdated)));
        }
      } else {
        await repo.createTag(name);
        if (context.mounted) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text(l10n.tagCreated)));
        }
      }
      ref.invalidate(tagsProvider);
    } catch (_) {
      if (context.mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text(l10n.actionFailed)));
      }
    }
  }

  /// Shows a confirmation dialog before deleting a tag.
  Future<void> _confirmDelete(
    BuildContext context,
    WidgetRef ref,
    Tag tag,
  ) async {
    final l10n = AppLocalizations.of(context);

    final confirmed = await showDialog<bool>(
      context: context,
      builder: (dialogContext) {
        return AlertDialog(
          title: Text(l10n.deleteTag),
          content: Text(l10n.deleteTagConfirm),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(dialogContext, false),
              child: Text(l10n.cancel),
            ),
            FilledButton(
              style: FilledButton.styleFrom(
                backgroundColor: Theme.of(dialogContext).colorScheme.error,
              ),
              onPressed: () => Navigator.pop(dialogContext, true),
              child: Text(l10n.delete),
            ),
          ],
        );
      },
    );

    if (confirmed != true || !context.mounted) return;

    try {
      final repo = await ref.read(deviceRepositoryProvider.future);
      await repo.deleteTag(tag.tagId);
      if (context.mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text(l10n.tagDeleted)));
      }
      ref.invalidate(tagsProvider);
    } catch (_) {
      if (context.mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text(l10n.actionFailed)));
      }
    }
  }
}

class _TagCard extends StatelessWidget {
  const _TagCard({
    required this.tag,
    required this.deviceCount,
    required this.onEdit,
    required this.onDelete,
  });

  final Tag tag;
  final int? deviceCount;
  final VoidCallback onEdit;
  final VoidCallback onDelete;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final l10n = AppLocalizations.of(context);
    final countText = deviceCount != null ? l10n.tagDeviceCount(deviceCount!) : '\u2014';

    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Card(
        child: ListTile(
          leading: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: colorScheme.secondaryContainer,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(
              Icons.label,
              size: 20,
              color: colorScheme.onSecondaryContainer,
            ),
          ),
          title: Text(tag.name, style: theme.textTheme.titleSmall),
          subtitle: Text(
            countText,
            style: theme.textTheme.bodySmall?.copyWith(
              color: colorScheme.onSurfaceVariant,
            ),
          ),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                icon: const Icon(Icons.edit_outlined),
                onPressed: onEdit,
                tooltip: AppLocalizations.of(context).editTag,
              ),
              IconButton(
                icon: Icon(
                  Icons.delete_outlined,
                  color: colorScheme.error,
                ),
                onPressed: onDelete,
                tooltip: AppLocalizations.of(context).deleteTag,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
