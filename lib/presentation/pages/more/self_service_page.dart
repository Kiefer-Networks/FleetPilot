import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fleetpilot/l10n/app_localizations.dart';

import '../../../core/di/providers.dart';
import '../../providers/tenant_providers.dart';
import '../../widgets/common/error_state_widget.dart';
import '../../widgets/common/loading_widget.dart';

class SelfServicePage extends ConsumerWidget {
  const SelfServicePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context);
    final theme = Theme.of(context);
    final categoriesAsync = ref.watch(selfServiceCategoriesProvider);

    return Scaffold(
      appBar: AppBar(title: Text(l10n.selfServiceCategories)),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _showAddCategoryDialog(context, ref, l10n),
        tooltip: l10n.addCategory,
        child: const Icon(Icons.add),
      ),
      body: categoriesAsync.when(
        data: (categories) {
          if (categories.isEmpty) {
            return Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.category_outlined,
                    size: 48,
                    color: theme.colorScheme.onSurfaceVariant,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    l10n.noCategoriesFound,
                    style: theme.textTheme.bodyLarge,
                  ),
                ],
              ),
            );
          }
          return RefreshIndicator(
            onRefresh: () async =>
                ref.invalidate(selfServiceCategoriesProvider),
            child: ListView.builder(
              padding: const EdgeInsets.all(12),
              itemCount: categories.length,
              itemBuilder: (context, index) {
                final cat = categories[index];
                final name = cat['name']?.toString() ?? 'Unknown';
                final id = cat['id']?.toString() ?? '';

                return Card(
                  child: ListTile(
                    leading: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: theme.colorScheme.primaryContainer,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Icon(
                        Icons.category,
                        color: theme.colorScheme.onPrimaryContainer,
                        size: 20,
                      ),
                    ),
                    title: Text(name),
                    trailing: IconButton(
                      icon: Icon(
                        Icons.delete_outline,
                        color: theme.colorScheme.error,
                      ),
                      onPressed: () => _confirmDelete(context, ref, l10n, id),
                    ),
                  ),
                );
              },
            ),
          );
        },
        loading: () => const LoadingWidget(),
        error: (error, _) => ErrorStateWidget(
          failure: error,
          onRetry: () => ref.invalidate(selfServiceCategoriesProvider),
        ),
      ),
    );
  }

  Future<void> _showAddCategoryDialog(
    BuildContext context,
    WidgetRef ref,
    AppLocalizations l10n,
  ) async {
    final controller = TextEditingController();
    final result = await showDialog<String>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text(l10n.addCategory),
        content: TextField(
          controller: controller,
          decoration: InputDecoration(
            labelText: l10n.categoryName,
            border: const OutlineInputBorder(),
          ),
          autofocus: true,
          onSubmitted: (value) => Navigator.pop(ctx, value),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx),
            child: Text(l10n.cancel),
          ),
          FilledButton(
            onPressed: () => Navigator.pop(ctx, controller.text),
            child: Text(l10n.save),
          ),
        ],
      ),
    );
    controller.dispose();

    if (result != null && result.trim().isNotEmpty) {
      final api = await ref.read(tenantApiProvider.future);
      await api.createSelfServiceCategory({'name': result.trim()});
      ref.invalidate(selfServiceCategoriesProvider);
      if (context.mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text(l10n.categoryCreated)));
      }
    }
  }

  Future<void> _confirmDelete(
    BuildContext context,
    WidgetRef ref,
    AppLocalizations l10n,
    String id,
  ) async {
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text(l10n.deleteCategory),
        content: Text(l10n.deleteCategoryConfirm),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx, false),
            child: Text(l10n.cancel),
          ),
          FilledButton(
            onPressed: () => Navigator.pop(ctx, true),
            child: Text(l10n.delete),
          ),
        ],
      ),
    );
    if (confirmed == true) {
      final api = await ref.read(tenantApiProvider.future);
      await api.deleteSelfServiceCategory(id);
      ref.invalidate(selfServiceCategoriesProvider);
      if (context.mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text(l10n.categoryDeleted)));
      }
    }
  }
}
