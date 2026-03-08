import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fleetpilot/l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';

import '../../../core/di/providers.dart';
import '../../../domain/entities/blueprint.dart';
import '../../providers/blueprint_providers.dart';
import '../../widgets/common/empty_state_widget.dart';
import '../../widgets/common/error_state_widget.dart';
import '../../widgets/common/loading_widget.dart';

class BlueprintListPage extends ConsumerStatefulWidget {
  const BlueprintListPage({super.key, this.isEmbedded = false});

  final bool isEmbedded;

  @override
  ConsumerState<BlueprintListPage> createState() => _BlueprintListPageState();
}

class _BlueprintListPageState extends ConsumerState<BlueprintListPage> {
  final _searchController = SearchController();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  Future<void> _createBlueprint(BuildContext context, WidgetRef ref) async {
    final l10n = AppLocalizations.of(context);
    final nameCtl = TextEditingController();
    final descCtl = TextEditingController();

    final result = await showDialog<Map<String, dynamic>>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text(l10n.createBlueprint),
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
                if (descCtl.text.trim().isNotEmpty)
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
      await repo.createBlueprint(result);
      ref.invalidate(blueprintsProvider);
      if (context.mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text(l10n.blueprintCreated)));
      }
    } catch (_) {
      if (context.mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text(l10n.actionFailed)));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final theme = Theme.of(context);
    final blueprintsAsync = ref.watch(sortedBlueprintsProvider);
    final sortAsc = ref.watch(blueprintSortAscProvider);

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => _createBlueprint(context, ref),
        tooltip: l10n.createBlueprint,
        child: const Icon(Icons.add),
      ),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            title: Text(l10n.navBlueprints),
            floating: true,
            snap: true,
          ),
        ],
        body: Column(
          children: [
            // Search bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: SearchBar(
                controller: _searchController,
                hintText: l10n.searchBlueprints,
                leading: const Icon(Icons.search, size: 20),
                trailing: [
                  if (_searchController.text.isNotEmpty)
                    IconButton(
                      icon: const Icon(Icons.clear, size: 20),
                      tooltip: l10n.clearSearch,
                      onPressed: () {
                        _searchController.clear();
                        ref.read(blueprintSearchQueryProvider.notifier).state =
                            '';
                        setState(() {});
                      },
                    ),
                ],
                onChanged: (query) {
                  ref.read(blueprintSearchQueryProvider.notifier).state = query;
                  setState(() {});
                },
                padding: const WidgetStatePropertyAll(
                  EdgeInsets.symmetric(horizontal: 8),
                ),
              ),
            ),
            const SizedBox(height: 8),

            // Sort chip
            SizedBox(
              height: 40,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                children: [
                  FilterChip(
                    avatar: Icon(
                      sortAsc ? Icons.arrow_downward : Icons.arrow_upward,
                      size: 16,
                    ),
                    label: Text(sortAsc ? l10n.sortAZ : l10n.sortZA),
                    selected: false,
                    onSelected: (_) =>
                        ref.read(blueprintSortAscProvider.notifier).state =
                            !sortAsc,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8),
            Expanded(
              child: blueprintsAsync.when(
                data: (blueprints) {
                  if (blueprints.isEmpty) {
                    return EmptyStateWidget(
                      icon: Icons.layers_outlined,
                      title: l10n.noBlueprintsFound,
                      message: l10n.noBlueprintsFoundMessage,
                      actionLabel: l10n.retry,
                      onAction: () => ref.invalidate(blueprintsProvider),
                    );
                  }

                  return RefreshIndicator(
                    onRefresh: () async => ref.invalidate(blueprintsProvider),
                    child: ListView.builder(
                      padding: const EdgeInsets.only(bottom: 16),
                      itemCount: blueprints.length + 1,
                      itemBuilder: (context, index) {
                        if (index == 0) {
                          return Padding(
                            padding: const EdgeInsets.fromLTRB(16, 4, 16, 4),
                            child: Text(
                              l10n.blueprintCount(blueprints.length),
                              style: theme.textTheme.labelMedium?.copyWith(
                                color: theme.colorScheme.onSurfaceVariant,
                              ),
                            ),
                          );
                        }
                        final bp = blueprints[index - 1];
                        return _BlueprintListTile(
                          blueprint: bp,
                          isEmbedded: widget.isEmbedded,
                        );
                      },
                    ),
                  );
                },
                loading: () => const LoadingWidget(),
                error: (error, _) => ErrorStateWidget(
                  failure: error,
                  onRetry: () => ref.invalidate(blueprintsProvider),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _BlueprintListTile extends ConsumerWidget {
  const _BlueprintListTile({required this.blueprint, this.isEmbedded = false});

  final Blueprint blueprint;
  final bool isEmbedded;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final l10n = AppLocalizations.of(context);
    final deviceCount = ref.watch(blueprintDeviceCountProvider(blueprint.id));

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      child: Card(
        clipBehavior: Clip.antiAlias,
        child: InkWell(
          onTap: () {
            if (isEmbedded) {
              context.go('/blueprints/${blueprint.id}');
            } else {
              context.push('/blueprints/${blueprint.id}');
            }
          },
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              children: [
                Container(
                  width: 48,
                  height: 48,
                  decoration: BoxDecoration(
                    color: colorScheme.tertiaryContainer,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Icon(
                    Icons.layers,
                    color: colorScheme.onTertiaryContainer,
                    size: 24,
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        blueprint.name,
                        style: theme.textTheme.titleSmall,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      if (blueprint.description != null) ...[
                        const SizedBox(height: 2),
                        Text(
                          blueprint.description!,
                          style: theme.textTheme.bodySmall?.copyWith(
                            color: colorScheme.onSurfaceVariant,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                      const SizedBox(height: 4),
                      Row(
                        children: [
                          Icon(
                            Icons.devices,
                            size: 14,
                            color: colorScheme.onSurfaceVariant,
                          ),
                          const SizedBox(width: 4),
                          Text(
                            l10n.deviceCount(deviceCount),
                            style: theme.textTheme.labelSmall?.copyWith(
                              color: colorScheme.onSurfaceVariant,
                            ),
                          ),
                          const SizedBox(width: 12),
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 2,
                            ),
                            decoration: BoxDecoration(
                              color: blueprint.enrollmentCodeIsActive
                                  ? colorScheme.primaryContainer
                                  : colorScheme.surfaceContainerHighest,
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Text(
                              blueprint.enrollmentCodeIsActive
                                  ? l10n.enrollmentActive
                                  : l10n.enrollmentInactive,
                              style: theme.textTheme.labelSmall?.copyWith(
                                color: blueprint.enrollmentCodeIsActive
                                    ? colorScheme.onPrimaryContainer
                                    : colorScheme.onSurfaceVariant,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
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
    );
  }
}
