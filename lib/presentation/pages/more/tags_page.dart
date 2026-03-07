import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fleetpilot/l10n/app_localizations.dart';

import '../../../core/di/providers.dart';
import '../../../domain/entities/tag.dart';
import '../../providers/device_providers.dart';
import '../../widgets/common/error_state_widget.dart';
import '../../widgets/common/loading_widget.dart';

/// Full-CRUD management page for tags.
class TagsPage extends ConsumerWidget {
  const TagsPage({super.key});

  static const _colorPresets = <Color>[
    Colors.red,
    Colors.orange,
    Colors.amber,
    Colors.green,
    Colors.teal,
    Colors.blue,
    Colors.indigo,
    Colors.purple,
    Colors.pink,
    Colors.brown,
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context);
    final tagsAsync = ref.watch(tagsProvider);

    return Scaffold(
      appBar: AppBar(title: Text(l10n.manageTags)),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _showCreateEditDialog(context, ref),
        child: const Icon(Icons.add),
      ),
      body: tagsAsync.when(
        data: (tags) {
          if (tags.isEmpty) {
            return Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.label_off_outlined,
                    size: 48,
                    color: Theme.of(context).colorScheme.onSurfaceVariant,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    l10n.noTagsFound,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ],
              ),
            );
          }
          return RefreshIndicator(
            onRefresh: () async => ref.invalidate(tagsProvider),
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              itemCount: tags.length,
              itemBuilder: (context, index) {
                final tag = tags[index];
                final color = _colorForTag(tag, index);
                return _TagCard(
                  tag: tag,
                  color: color,
                  onEdit: () =>
                      _showCreateEditDialog(context, ref, existingTag: tag),
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
    );
  }

  /// Assigns a deterministic color based on the tag name hash.
  Color _colorForTag(Tag tag, int index) {
    final hash = tag.name.hashCode.abs();
    return _colorPresets[hash % _colorPresets.length];
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
    required this.color,
    required this.onEdit,
    required this.onDelete,
  });

  final Tag tag;
  final Color color;
  final VoidCallback onEdit;
  final VoidCallback onDelete;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Card(
        child: ListTile(
          leading: CircleAvatar(
            radius: 16,
            backgroundColor: color,
            child: const SizedBox.shrink(),
          ),
          title: Text(tag.name, style: theme.textTheme.titleSmall),
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
                  color: theme.colorScheme.error,
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
