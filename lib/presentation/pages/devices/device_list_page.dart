import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fleetpilot/l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';

import '../../../domain/entities/device_filter_preset.dart';
import '../../providers/blueprint_providers.dart';
import '../../providers/device_filter_preset_providers.dart';
import '../../providers/device_providers.dart';
import '../../widgets/common/empty_state_widget.dart';
import '../../widgets/common/error_state_widget.dart';
import '../../widgets/common/loading_widget.dart';
import '../../widgets/device/device_list_tile.dart';

class DeviceListPage extends ConsumerStatefulWidget {
  const DeviceListPage({super.key});

  @override
  ConsumerState<DeviceListPage> createState() => _DeviceListPageState();
}

class _DeviceListPageState extends ConsumerState<DeviceListPage> {
  final _searchController = SearchController();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  int _countActiveFilters() {
    var count = 0;
    if (ref.read(platformFilterProvider) != null) count++;
    if (ref.read(blueprintFilterProvider) != null) count++;
    if (ref.read(supervisedFilterProvider) != null) count++;
    if (ref.read(lostModeFilterProvider)) count++;
    return count;
  }

  void _clearAllFilters() {
    _searchController.clear();
    ref.read(deviceSearchQueryProvider.notifier).state = '';
    ref.read(platformFilterProvider.notifier).state = null;
    ref.read(blueprintFilterProvider.notifier).state = null;
    ref.read(supervisedFilterProvider.notifier).state = null;
    ref.read(lostModeFilterProvider.notifier).state = false;
    ref.read(deviceSortAscProvider.notifier).state = true;
    setState(() {});
  }

  void _applyPreset(DeviceFilterPreset preset) {
    _searchController.text = preset.searchQuery;
    ref.read(deviceSearchQueryProvider.notifier).state = preset.searchQuery;
    ref.read(platformFilterProvider.notifier).state = preset.platform;
    ref.read(supervisedFilterProvider.notifier).state = preset.supervised;
    ref.read(lostModeFilterProvider.notifier).state = preset.lostMode;
    ref.read(deviceSortAscProvider.notifier).state = preset.sortAsc;
    setState(() {});

    final l10n = AppLocalizations.of(context);
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(l10n.presetApplied(preset.name))));
  }

  Future<void> _showSavePresetDialog() async {
    final l10n = AppLocalizations.of(context);
    final nameController = TextEditingController();
    final formKey = GlobalKey<FormState>();

    final name = await showDialog<String>(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(l10n.presetSaveFilter),
        content: Form(
          key: formKey,
          child: TextFormField(
            controller: nameController,
            decoration: InputDecoration(
              labelText: l10n.presetName,
              hintText: l10n.presetNameHint,
            ),
            autofocus: true,
            validator: (value) {
              if (value == null || value.trim().isEmpty) {
                return l10n.presetNameRequired;
              }
              return null;
            },
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(l10n.cancel),
          ),
          FilledButton(
            onPressed: () {
              if (formKey.currentState!.validate()) {
                Navigator.pop(context, nameController.text.trim());
              }
            },
            child: Text(l10n.save),
          ),
        ],
      ),
    );

    nameController.dispose();

    if (name == null || name.isEmpty) return;

    final preset = DeviceFilterPreset(
      id: DateTime.now().millisecondsSinceEpoch.toRadixString(36),
      name: name,
      searchQuery: ref.read(deviceSearchQueryProvider),
      platform: ref.read(platformFilterProvider),
      supervised: ref.read(supervisedFilterProvider),
      lostMode: ref.read(lostModeFilterProvider),
      sortAsc: ref.read(deviceSortAscProvider),
    );

    await ref.read(deviceFilterPresetsProvider.notifier).add(preset);

    if (mounted) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text(l10n.presetSaved)));
    }
  }

  Future<void> _showLoadPresetSheet() async {
    await showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      useSafeArea: true,
      builder: (_) => _PresetBottomSheet(onApply: _applyPreset),
    );
  }

  Future<void> _showFilterSheet() async {
    final result = await showModalBottomSheet<bool>(
      context: context,
      isScrollControlled: true,
      useSafeArea: true,
      builder: (_) => _DeviceFilterBottomSheet(ref: ref),
    );
    if (result == true) setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final theme = Theme.of(context);
    final filteredDevices = ref.watch(filteredDevicesProvider);
    final loadingCount = ref.watch(devicesLoadingCountProvider);
    final currentPlatform = ref.watch(platformFilterProvider);
    final currentBlueprintId = ref.watch(blueprintFilterProvider);
    final blueprintsAsync = ref.watch(blueprintsProvider);
    final sortAsc = ref.watch(deviceSortAscProvider);
    final supervisedFilter = ref.watch(supervisedFilterProvider);
    final lostModeFilter = ref.watch(lostModeFilterProvider);
    final activeFilterCount = _countActiveFilters();

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => ref.read(devicesProvider.notifier).refresh(),
        child: const Icon(Icons.refresh),
      ),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            title: Text(l10n.navDevices),
            floating: true,
            snap: true,
            actions: [
              PopupMenuButton<_PresetAction>(
                icon: const Icon(Icons.bookmarks_outlined),
                tooltip: l10n.presetLoad,
                onSelected: (action) {
                  switch (action) {
                    case _PresetAction.save:
                      _showSavePresetDialog();
                    case _PresetAction.load:
                      _showLoadPresetSheet();
                  }
                },
                itemBuilder: (context) => [
                  PopupMenuItem(
                    value: _PresetAction.save,
                    child: ListTile(
                      leading: const Icon(Icons.bookmark_add_outlined),
                      title: Text(l10n.presetSaveFilter),
                      contentPadding: EdgeInsets.zero,
                      dense: true,
                    ),
                  ),
                  PopupMenuItem(
                    value: _PresetAction.load,
                    child: ListTile(
                      leading: const Icon(Icons.bookmark_outlined),
                      title: Text(l10n.presetLoad),
                      contentPadding: EdgeInsets.zero,
                      dense: true,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Expanded(
                    child: SearchBar(
                      controller: _searchController,
                      hintText: l10n.searchDevices,
                      leading: const Icon(Icons.search, size: 20),
                      trailing: [
                        if (_searchController.text.isNotEmpty)
                          IconButton(
                            icon: const Icon(Icons.clear, size: 20),
                            onPressed: () {
                              _searchController.clear();
                              ref
                                      .read(deviceSearchQueryProvider.notifier)
                                      .state =
                                  '';
                              setState(() {});
                            },
                          ),
                      ],
                      onChanged: (query) {
                        ref.read(deviceSearchQueryProvider.notifier).state =
                            query;
                        setState(() {});
                      },
                      padding: const WidgetStatePropertyAll(
                        EdgeInsets.symmetric(horizontal: 8),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Badge(
                    isLabelVisible: activeFilterCount > 0,
                    label: Text('$activeFilterCount'),
                    child: IconButton(
                      icon: Icon(
                        Icons.tune,
                        color: activeFilterCount > 0
                            ? theme.colorScheme.primary
                            : null,
                      ),
                      onPressed: _showFilterSheet,
                    ),
                  ),
                ],
              ),
            ),

            if (activeFilterCount > 0) ...[
              const SizedBox(height: 8),
              SizedBox(
                height: 36,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  children: [
                    if (currentPlatform != null)
                      Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: InputChip(
                          label: Text(currentPlatform),
                          onDeleted: () =>
                              ref.read(platformFilterProvider.notifier).state =
                                  null,
                        ),
                      ),
                    if (currentBlueprintId != null)
                      Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: InputChip(
                          label: Text(
                            blueprintsAsync.whenOrNull(
                                  data: (bps) => bps
                                      .where(
                                        (bp) => bp.id == currentBlueprintId,
                                      )
                                      .firstOrNull
                                      ?.name,
                                ) ??
                                l10n.filterBlueprint,
                          ),
                          onDeleted: () =>
                              ref.read(blueprintFilterProvider.notifier).state =
                                  null,
                        ),
                      ),
                    if (supervisedFilter != null)
                      Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: InputChip(
                          label: Text(
                            supervisedFilter
                                ? l10n.filterSupervised
                                : l10n.filterUnsupervised,
                          ),
                          onDeleted: () =>
                              ref
                                      .read(supervisedFilterProvider.notifier)
                                      .state =
                                  null,
                        ),
                      ),
                    if (lostModeFilter)
                      Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: InputChip(
                          label: Text(l10n.filterLostMode),
                          onDeleted: () =>
                              ref.read(lostModeFilterProvider.notifier).state =
                                  false,
                        ),
                      ),
                    ActionChip(
                      label: Text(l10n.filterClearAll),
                      avatar: const Icon(Icons.clear_all, size: 16),
                      onPressed: _clearAllFilters,
                    ),
                  ],
                ),
              ),
            ],

            const SizedBox(height: 8),
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
                        ref.read(deviceSortAscProvider.notifier).state =
                            !sortAsc,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8),

            if (!ref.watch(devicesFullyLoadedProvider) && loadingCount > 0)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    const LinearProgressIndicator(),
                    const SizedBox(height: 4),
                    Text(
                      l10n.loadingDevices(loadingCount),
                      style: theme.textTheme.labelSmall,
                    ),
                    const SizedBox(height: 8),
                  ],
                ),
              ),

            Expanded(
              child: filteredDevices.when(
                data: (devices) {
                  if (devices.isEmpty) {
                    return EmptyStateWidget(
                      icon: Icons.devices_other,
                      title: l10n.noDevicesFound,
                      message: l10n.noDevicesFoundMessage,
                      actionLabel: l10n.retry,
                      onAction: () =>
                          ref.read(devicesProvider.notifier).refresh(),
                    );
                  }

                  return RefreshIndicator(
                    onRefresh: () =>
                        ref.read(devicesProvider.notifier).refresh(),
                    child: ListView.builder(
                      padding: const EdgeInsets.only(bottom: 16),
                      itemCount: devices.length + 1,
                      itemBuilder: (context, index) {
                        if (index == 0) {
                          return Padding(
                            padding: const EdgeInsets.fromLTRB(16, 4, 16, 4),
                            child: Text(
                              l10n.deviceCount(devices.length),
                              style: theme.textTheme.labelMedium?.copyWith(
                                color: theme.colorScheme.onSurfaceVariant,
                              ),
                            ),
                          );
                        }
                        final device = devices[index - 1];
                        return DeviceListTile(
                          device: device,
                          onTap: () =>
                              context.push('/devices/${device.deviceId}'),
                        );
                      },
                    ),
                  );
                },
                loading: () => const LoadingWidget(),
                error: (error, _) => ErrorStateWidget(
                  failure: error,
                  onRetry: () => ref.read(devicesProvider.notifier).refresh(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

enum _PresetAction { save, load }

class _PresetBottomSheet extends ConsumerWidget {
  const _PresetBottomSheet({required this.onApply});

  final void Function(DeviceFilterPreset preset) onApply;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context);
    final theme = Theme.of(context);
    final presetsAsync = ref.watch(deviceFilterPresetsProvider);

    return DraggableScrollableSheet(
      expand: false,
      initialChildSize: 0.45,
      minChildSize: 0.25,
      maxChildSize: 0.75,
      builder: (context, scrollController) {
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: Container(
                width: 32,
                height: 4,
                decoration: BoxDecoration(
                  color: theme.colorScheme.onSurfaceVariant.withValues(
                    alpha: 0.4,
                  ),
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(l10n.presetLoad, style: theme.textTheme.titleLarge),
              ),
            ),
            const SizedBox(height: 8),
            Expanded(
              child: presetsAsync.when(
                data: (presets) {
                  if (presets.isEmpty) {
                    return Center(
                      child: Padding(
                        padding: const EdgeInsets.all(32),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.bookmarks_outlined,
                              size: 48,
                              color: theme.colorScheme.onSurfaceVariant,
                            ),
                            const SizedBox(height: 16),
                            Text(
                              l10n.presetNoPresets,
                              style: theme.textTheme.titleMedium,
                            ),
                            const SizedBox(height: 8),
                            Text(
                              l10n.presetNoPresetsMessage,
                              style: theme.textTheme.bodyMedium?.copyWith(
                                color: theme.colorScheme.onSurfaceVariant,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    );
                  }

                  return ListView.builder(
                    controller: scrollController,
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    itemCount: presets.length,
                    itemBuilder: (context, index) {
                      final preset = presets[index];
                      return _PresetListTile(
                        preset: preset,
                        onTap: () {
                          Navigator.pop(context);
                          onApply(preset);
                        },
                        onDelete: () async {
                          final confirmed = await showDialog<bool>(
                            context: context,
                            builder: (context) => AlertDialog(
                              title: Text(l10n.presetDeleteConfirm),
                              actions: [
                                TextButton(
                                  onPressed: () =>
                                      Navigator.pop(context, false),
                                  child: Text(l10n.cancel),
                                ),
                                FilledButton(
                                  onPressed: () => Navigator.pop(context, true),
                                  child: Text(l10n.delete),
                                ),
                              ],
                            ),
                          );
                          if (confirmed == true) {
                            await ref
                                .read(deviceFilterPresetsProvider.notifier)
                                .remove(preset.id);
                            if (context.mounted) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content: Text(l10n.presetDeleted)),
                              );
                            }
                          }
                        },
                      );
                    },
                  );
                },
                loading: () => const Center(child: CircularProgressIndicator()),
                error: (_, _) => const SizedBox.shrink(),
              ),
            ),
          ],
        );
      },
    );
  }
}

class _PresetListTile extends StatelessWidget {
  const _PresetListTile({
    required this.preset,
    required this.onTap,
    required this.onDelete,
  });

  final DeviceFilterPreset preset;
  final VoidCallback onTap;
  final VoidCallback onDelete;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final chips = <String>[];
    if (preset.searchQuery.isNotEmpty) chips.add('"${preset.searchQuery}"');
    if (preset.platform != null) chips.add(preset.platform!);
    if (preset.supervised != null) {
      final l10n = AppLocalizations.of(context);
      chips.add(
        preset.supervised! ? l10n.filterSupervised : l10n.filterUnsupervised,
      );
    }
    if (preset.lostMode) {
      chips.add(AppLocalizations.of(context).filterLostMode);
    }

    return ListTile(
      leading: const Icon(Icons.bookmark_outlined),
      title: Text(preset.name),
      subtitle: chips.isNotEmpty
          ? Text(
              chips.join(', '),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.bodySmall?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
              ),
            )
          : null,
      trailing: IconButton(
        icon: const Icon(Icons.delete_outline),
        onPressed: onDelete,
      ),
      onTap: onTap,
    );
  }
}

class _DeviceFilterBottomSheet extends ConsumerWidget {
  const _DeviceFilterBottomSheet({required this.ref});

  final WidgetRef ref;

  @override
  Widget build(BuildContext context, WidgetRef _) {
    final l10n = AppLocalizations.of(context);
    final theme = Theme.of(context);

    return DraggableScrollableSheet(
      expand: false,
      initialChildSize: 0.55,
      minChildSize: 0.3,
      maxChildSize: 0.85,
      builder: (context, scrollController) {
        return StatefulBuilder(
          builder: (context, setSheetState) {
            final platform = ref.read(platformFilterProvider);
            final supervised = ref.read(supervisedFilterProvider);
            final lostMode = ref.read(lostModeFilterProvider);

            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: Container(
                    width: 32,
                    height: 4,
                    decoration: BoxDecoration(
                      color: theme.colorScheme.onSurfaceVariant.withValues(
                        alpha: 0.4,
                      ),
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    children: [
                      Text(l10n.filterTitle, style: theme.textTheme.titleLarge),
                      const Spacer(),
                      TextButton(
                        onPressed: () {
                          ref.read(platformFilterProvider.notifier).state =
                              null;
                          ref.read(supervisedFilterProvider.notifier).state =
                              null;
                          ref.read(lostModeFilterProvider.notifier).state =
                              false;
                          setSheetState(() {});
                        },
                        child: Text(l10n.filterClearAll),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 8),
                Expanded(
                  child: ListView(
                    controller: scrollController,
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    children: [
                      Text(
                        l10n.filterPlatform,
                        style: theme.textTheme.titleSmall,
                      ),
                      const SizedBox(height: 8),
                      Wrap(
                        spacing: 8,
                        runSpacing: 4,
                        children: [
                          FilterChip(
                            label: Text(l10n.filterAll),
                            selected: platform == null,
                            onSelected: (_) {
                              ref.read(platformFilterProvider.notifier).state =
                                  null;
                              setSheetState(() {});
                            },
                          ),
                          for (final p in ['Mac', 'iPhone', 'iPad', 'AppleTV'])
                            FilterChip(
                              label: Text(p),
                              selected: platform == p,
                              onSelected: (_) {
                                ref
                                    .read(platformFilterProvider.notifier)
                                    .state = platform == p
                                    ? null
                                    : p;
                                setSheetState(() {});
                              },
                            ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      Text(
                        l10n.filterSupervision,
                        style: theme.textTheme.titleSmall,
                      ),
                      const SizedBox(height: 8),
                      Wrap(
                        spacing: 8,
                        runSpacing: 4,
                        children: [
                          FilterChip(
                            label: Text(l10n.filterAll),
                            selected: supervised == null,
                            onSelected: (_) {
                              ref
                                      .read(supervisedFilterProvider.notifier)
                                      .state =
                                  null;
                              setSheetState(() {});
                            },
                          ),
                          FilterChip(
                            label: Text(l10n.filterSupervised),
                            selected: supervised == true,
                            onSelected: (_) {
                              ref
                                  .read(supervisedFilterProvider.notifier)
                                  .state = supervised == true
                                  ? null
                                  : true;
                              setSheetState(() {});
                            },
                          ),
                          FilterChip(
                            label: Text(l10n.filterUnsupervised),
                            selected: supervised == false,
                            onSelected: (_) {
                              ref
                                  .read(supervisedFilterProvider.notifier)
                                  .state = supervised == false
                                  ? null
                                  : false;
                              setSheetState(() {});
                            },
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      FilterChip(
                        label: Text(l10n.filterLostMode),
                        selected: lostMode,
                        onSelected: (_) {
                          ref.read(lostModeFilterProvider.notifier).state =
                              !lostMode;
                          setSheetState(() {});
                        },
                      ),
                      const SizedBox(height: 24),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
                  child: SizedBox(
                    width: double.infinity,
                    child: FilledButton(
                      onPressed: () => Navigator.pop(context, true),
                      child: Text(l10n.filterApply),
                    ),
                  ),
                ),
              ],
            );
          },
        );
      },
    );
  }
}
