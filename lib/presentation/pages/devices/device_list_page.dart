import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fleetpilot/l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';

import '../../../core/di/providers.dart';
import '../../../core/utils/biometric_service.dart';
import '../../../domain/entities/blueprint.dart';
import '../../../domain/entities/device.dart';
import '../../../domain/entities/device_action.dart';
import '../../../domain/entities/tag.dart';
import '../../providers/blueprint_providers.dart';
import '../../providers/device_providers.dart';
import '../../providers/security_providers.dart';
import '../../widgets/common/empty_state_widget.dart';
import '../../widgets/common/error_state_widget.dart';
import '../../widgets/common/loading_widget.dart';
import '../../widgets/device/device_list_tile.dart';
import '../../widgets/pin_dialog.dart';

class DeviceListPage extends ConsumerStatefulWidget {
  const DeviceListPage({super.key, this.isEmbedded = false});

  final bool isEmbedded;

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

  Future<void> _showFilterSheet() async {
    final result = await showModalBottomSheet<bool>(
      context: context,
      isScrollControlled: true,
      useSafeArea: true,
      showDragHandle: true,
      builder: (_) => _DeviceFilterBottomSheet(ref: ref),
    );
    if (result == true) setState(() {});
  }

  void _exitSelectionMode() {
    ref.read(deviceSelectionModeProvider.notifier).state = false;
    ref.read(selectedDeviceIdsProvider.notifier).deselectAll();
  }

  void _enterSelectionMode(String deviceId) {
    ref.read(deviceSelectionModeProvider.notifier).state = true;
    ref.read(selectedDeviceIdsProvider.notifier).toggle(deviceId);
  }

  Future<bool> _authenticateForBulkAction() async {
    if (!ref.read(pinEnabledProvider)) return true;

    bool authenticated = false;
    if (ref.read(biometricEnabledProvider)) {
      final bioService = BiometricService();
      authenticated = await bioService.authenticate(
        reason: AppLocalizations.of(context).biometricReasonBulkAction,
      );
    }
    if (!authenticated && mounted) {
      final pin = await PinDialog.showVerifyPin(
        context,
        verifier: (pin) async =>
            ref.read(pinEnabledProvider.notifier).verifyPin(pin),
      );
      authenticated = pin != null;
    }
    return authenticated;
  }

  Future<void> _executeBulkAction(
    Set<String> deviceIds,
    Future<void> Function(String deviceId) action,
  ) async {
    final progressNotifier = ref.read(bulkOperationProgressProvider.notifier);
    progressNotifier.start(deviceIds.length);

    for (final deviceId in deviceIds) {
      try {
        await action(deviceId);
        progressNotifier.advance();
      } catch (_) {
        progressNotifier.advance(success: false);
      }
    }

    progressNotifier.finish();

    if (!mounted) return;
    final progress = ref.read(bulkOperationProgressProvider);
    final l10n = AppLocalizations.of(context);
    final message = progress.failed > 0
        ? l10n.bulkActionPartialSuccess(
            progress.completed - progress.failed,
            progress.failed,
          )
        : l10n.bulkActionSuccess(progress.completed);

    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(message)));

    progressNotifier.reset();
    ref.read(devicesProvider.notifier).refresh();
    _exitSelectionMode();
  }

  Future<void> _showBulkActionSheet(List<Device> devices) async {
    final l10n = AppLocalizations.of(context);
    final selectedIds = ref.read(selectedDeviceIdsProvider);
    final selectedDevices = devices
        .where((d) => selectedIds.contains(d.deviceId))
        .toList();

    final result = await showModalBottomSheet<String>(
      context: context,
      isScrollControlled: true,
      useSafeArea: true,
      showDragHandle: true,
      builder: (context) =>
          _BulkActionBottomSheet(selectedCount: selectedDevices.length),
    );

    if (result == null || !mounted) return;

    final authenticated = await _authenticateForBulkAction();
    if (!authenticated || !mounted) return;

    switch (result) {
      case 'assign_tag':
        await _bulkAssignTag(selectedDevices);
      case 'assign_blueprint':
        await _bulkAssignBlueprint(selectedDevices);
      case 'lock':
        final body = await _showBulkLockDialog();
        if (body == null || !mounted) return;
        await _executeBulkAction(selectedIds, (deviceId) async {
          final useCase = await ref.read(
            executeDeviceActionUseCaseProvider.future,
          );
          await useCase.call(deviceId, DeviceAction.lock, body: body);
        });
      case 'restart':
        final confirmed = await _showBulkConfirmDialog(
          l10n.bulkActionRestart,
          l10n.bulkRestartConfirmMessage(selectedDevices.length),
        );
        if (confirmed != true || !mounted) return;
        await _executeBulkAction(selectedIds, (deviceId) async {
          final useCase = await ref.read(
            executeDeviceActionUseCaseProvider.future,
          );
          await useCase.call(deviceId, DeviceAction.restart);
        });
    }
  }

  Future<void> _bulkAssignTag(List<Device> selectedDevices) async {
    final tagsAsync = ref.read(tagsProvider);
    final tags = tagsAsync.value ?? <Tag>[];

    final selectedTag = await showDialog<Tag>(
      context: context,
      builder: (ctx) => _TagPickerDialog(tags: tags),
    );

    if (selectedTag == null || !mounted) return;

    await _executeBulkAction(selectedDevices.map((d) => d.deviceId).toSet(), (
      deviceId,
    ) async {
      final device = selectedDevices.firstWhere((d) => d.deviceId == deviceId);
      final currentTags = device.tags;
      if (!currentTags.contains(selectedTag.name)) {
        final repo = await ref.read(deviceRepositoryProvider.future);
        await repo.updateDevice(deviceId, {
          'tags': [...currentTags, selectedTag.name],
        });
      }
    });
  }

  Future<void> _bulkAssignBlueprint(List<Device> selectedDevices) async {
    final blueprintsAsync = ref.read(blueprintsProvider);
    final blueprints = blueprintsAsync.value ?? <Blueprint>[];

    final selectedBlueprint = await showDialog<Blueprint>(
      context: context,
      builder: (ctx) => _BlueprintPickerDialog(blueprints: blueprints),
    );

    if (selectedBlueprint == null || !mounted) return;

    await _executeBulkAction(selectedDevices.map((d) => d.deviceId).toSet(), (
      deviceId,
    ) async {
      final repo = await ref.read(deviceRepositoryProvider.future);
      await repo.updateDevice(deviceId, {'blueprint_id': selectedBlueprint.id});
    });
  }

  Future<Map<String, dynamic>?> _showBulkLockDialog() {
    final l10n = AppLocalizations.of(context);
    final pinCtl = TextEditingController();
    final messageCtl = TextEditingController();

    return showDialog<Map<String, dynamic>>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text(l10n.bulkActionLock),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: pinCtl,
              decoration: InputDecoration(
                labelText: l10n.lockPin,
                border: const OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
              obscureText: true,
            ),
            const SizedBox(height: 12),
            TextField(
              controller: messageCtl,
              decoration: InputDecoration(
                labelText: l10n.lockMessage,
                border: const OutlineInputBorder(),
              ),
              maxLines: 2,
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
              Navigator.of(ctx).pop(<String, dynamic>{
                if (pinCtl.text.isNotEmpty) 'PIN': pinCtl.text,
                if (messageCtl.text.isNotEmpty) 'Message': messageCtl.text,
              });
            },
            child: Text(l10n.confirm),
          ),
        ],
      ),
    );
  }

  Future<bool?> _showBulkConfirmDialog(String title, String message) {
    final l10n = AppLocalizations.of(context);
    return showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        icon: const Icon(Icons.warning_amber_rounded),
        title: Text(title),
        content: Text(message),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(ctx).pop(false),
            child: Text(l10n.cancel),
          ),
          FilledButton(
            onPressed: () => Navigator.of(ctx).pop(true),
            child: Text(l10n.confirm),
          ),
        ],
      ),
    );
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
    final supervisedFilter = ref.watch(supervisedFilterProvider);
    final lostModeFilter = ref.watch(lostModeFilterProvider);
    final activeFilterCount = _countActiveFilters();
    final isSelectionMode = ref.watch(deviceSelectionModeProvider);
    final selectedIds = ref.watch(selectedDeviceIdsProvider);
    final bulkProgress = ref.watch(bulkOperationProgressProvider);

    return PopScope(
      canPop: !isSelectionMode,
      onPopInvokedWithResult: (didPop, _) {
        if (!didPop && isSelectionMode) {
          _exitSelectionMode();
        }
      },
      child: Scaffold(
        floatingActionButton: isSelectionMode && selectedIds.isNotEmpty
            ? FloatingActionButton.extended(
                onPressed: () {
                  final devicesAsync = ref.read(filteredDevicesProvider);
                  final devices = devicesAsync.value ?? [];
                  _showBulkActionSheet(devices);
                },
                icon: const Icon(Icons.playlist_play),
                label: Text(l10n.bulkActions),
              )
            : FloatingActionButton(
                onPressed: () => ref.read(devicesProvider.notifier).refresh(),
                tooltip: l10n.refresh,
                child: const Icon(Icons.refresh),
              ),
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            if (isSelectionMode)
              SliverAppBar(
                leading: IconButton(
                  icon: const Icon(Icons.close),
                  tooltip: l10n.close,
                  onPressed: _exitSelectionMode,
                ),
                title: Text(l10n.selectedCount(selectedIds.length)),
                floating: true,
                snap: true,
                actions: [
                  IconButton(
                    icon: const Icon(Icons.select_all),
                    tooltip: l10n.selectAll,
                    onPressed: () {
                      final devicesAsync = ref.read(filteredDevicesProvider);
                      final devices = devicesAsync.value ?? [];
                      ref
                          .read(selectedDeviceIdsProvider.notifier)
                          .selectAll(devices.map((d) => d.deviceId).toList());
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.deselect),
                    tooltip: l10n.deselectAll,
                    onPressed: () {
                      ref
                          .read(selectedDeviceIdsProvider.notifier)
                          .deselectAll();
                    },
                  ),
                ],
              )
            else
              SliverAppBar(
                title: Text(l10n.navDevices),
                floating: true,
                snap: true,
              ),
          ],
          body: Column(
            children: [
              if (bulkProgress.isRunning)
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    children: [
                      LinearProgressIndicator(value: bulkProgress.progress),
                      const SizedBox(height: 4),
                      Text(
                        l10n.bulkProgressStatus(
                          bulkProgress.completed,
                          bulkProgress.total,
                        ),
                        style: theme.textTheme.labelSmall,
                      ),
                      const SizedBox(height: 8),
                    ],
                  ),
                ),

              if (!isSelectionMode) ...[
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
                                tooltip: l10n.clearSearch,
                                onPressed: () {
                                  _searchController.clear();
                                  ref
                                          .read(
                                            deviceSearchQueryProvider.notifier,
                                          )
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
                          tooltip: l10n.filterTitle,
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
                                  ref
                                          .read(platformFilterProvider.notifier)
                                          .state =
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
                                  ref
                                          .read(
                                            blueprintFilterProvider.notifier,
                                          )
                                          .state =
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
                                          .read(
                                            supervisedFilterProvider.notifier,
                                          )
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
                                  ref
                                          .read(lostModeFilterProvider.notifier)
                                          .state =
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
              ],

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
                        padding: const EdgeInsets.only(bottom: 80),
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
                            isSelectionMode: isSelectionMode,
                            isSelected: selectedIds.contains(device.deviceId),
                            onTap: () {
                              if (widget.isEmbedded) {
                                context.go('/devices/${device.deviceId}');
                              } else {
                                context.push('/devices/${device.deviceId}');
                              }
                            },
                            onLongPress: () {
                              if (!isSelectionMode) {
                                _enterSelectionMode(device.deviceId);
                              }
                            },
                            onSelectionToggle: () {
                              ref
                                  .read(selectedDeviceIdsProvider.notifier)
                                  .toggle(device.deviceId);
                            },
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
      ),
    );
  }
}

class _BulkActionBottomSheet extends StatelessWidget {
  const _BulkActionBottomSheet({required this.selectedCount});

  final int selectedCount;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final theme = Theme.of(context);

    return DraggableScrollableSheet(
      expand: false,
      initialChildSize: 0.45,
      minChildSize: 0.3,
      maxChildSize: 0.65,
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
              child: Text(
                l10n.bulkActionsTitle(selectedCount),
                style: theme.textTheme.titleLarge,
              ),
            ),
            const SizedBox(height: 8),
            Expanded(
              child: ListView(
                controller: scrollController,
                padding: const EdgeInsets.symmetric(horizontal: 8),
                children: [
                  ListTile(
                    leading: const Icon(Icons.label_outline),
                    title: Text(l10n.bulkActionAssignTag),
                    subtitle: Text(l10n.bulkActionAssignTagDescription),
                    onTap: () => Navigator.pop(context, 'assign_tag'),
                  ),
                  ListTile(
                    leading: const Icon(Icons.dashboard_customize_outlined),
                    title: Text(l10n.bulkActionAssignBlueprint),
                    subtitle: Text(l10n.bulkActionAssignBlueprintDescription),
                    onTap: () => Navigator.pop(context, 'assign_blueprint'),
                  ),
                  const Divider(),
                  ListTile(
                    leading: const Icon(Icons.lock_outline),
                    title: Text(l10n.bulkActionLock),
                    subtitle: Text(l10n.bulkActionLockDescription),
                    onTap: () => Navigator.pop(context, 'lock'),
                  ),
                  ListTile(
                    leading: const Icon(Icons.restart_alt),
                    title: Text(l10n.bulkActionRestart),
                    subtitle: Text(l10n.bulkActionRestartDescription),
                    onTap: () => Navigator.pop(context, 'restart'),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}

class _TagPickerDialog extends StatelessWidget {
  const _TagPickerDialog({required this.tags});

  final List<Tag> tags;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);

    return AlertDialog(
      title: Text(l10n.bulkActionAssignTag),
      content: SizedBox(
        width: double.maxFinite,
        child: tags.isEmpty
            ? Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Text(l10n.noTagsAvailable),
              )
            : ListView.builder(
                shrinkWrap: true,
                itemCount: tags.length,
                itemBuilder: (ctx, index) {
                  final tag = tags[index];
                  return ListTile(
                    leading: const Icon(Icons.label_outline),
                    title: Text(tag.name),
                    onTap: () => Navigator.of(ctx).pop(tag),
                  );
                },
              ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: Text(l10n.cancel),
        ),
      ],
    );
  }
}

class _BlueprintPickerDialog extends StatelessWidget {
  const _BlueprintPickerDialog({required this.blueprints});

  final List<Blueprint> blueprints;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);

    return AlertDialog(
      title: Text(l10n.bulkActionAssignBlueprint),
      content: SizedBox(
        width: double.maxFinite,
        child: blueprints.isEmpty
            ? Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Text(l10n.noBlueprintsAvailable),
              )
            : ListView.builder(
                shrinkWrap: true,
                itemCount: blueprints.length,
                itemBuilder: (ctx, index) {
                  final bp = blueprints[index];
                  return ListTile(
                    leading: const Icon(Icons.dashboard_customize_outlined),
                    title: Text(bp.name),
                    subtitle: bp.description != null
                        ? Text(
                            bp.description!,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          )
                        : null,
                    onTap: () => Navigator.of(ctx).pop(bp),
                  );
                },
              ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: Text(l10n.cancel),
        ),
      ],
    );
  }
}

class _DeviceFilterBottomSheet extends StatelessWidget {
  const _DeviceFilterBottomSheet({required this.ref});

  final WidgetRef ref;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final theme = Theme.of(context);

    return DraggableScrollableSheet(
      expand: false,
      initialChildSize: 0.7,
      minChildSize: 0.3,
      maxChildSize: 0.85,
      builder: (context, scrollController) {
        return StatefulBuilder(
          builder: (context, setSheetState) {
            final platform = ref.read(platformFilterProvider);
            final blueprintId = ref.read(blueprintFilterProvider);
            final blueprintsAsync = ref.read(blueprintsProvider);
            final supervised = ref.read(supervisedFilterProvider);
            final lostMode = ref.read(lostModeFilterProvider);
            final sortAsc = ref.read(deviceSortAscProvider);

            return Column(
              children: [
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
                          ref.read(blueprintFilterProvider.notifier).state =
                              null;
                          ref.read(supervisedFilterProvider.notifier).state =
                              null;
                          ref.read(lostModeFilterProvider.notifier).state =
                              false;
                          ref.read(deviceSortAscProvider.notifier).state = true;
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
                        l10n.filterBlueprint,
                        style: theme.textTheme.titleSmall,
                      ),
                      const SizedBox(height: 8),
                      Wrap(
                        spacing: 8,
                        runSpacing: 4,
                        children: [
                          FilterChip(
                            label: Text(l10n.filterAll),
                            selected: blueprintId == null,
                            onSelected: (_) {
                              ref.read(blueprintFilterProvider.notifier).state =
                                  null;
                              setSheetState(() {});
                            },
                          ),
                          ...?blueprintsAsync.whenOrNull(
                            data: (bps) => bps.map(
                              (bp) => FilterChip(
                                label: Text(bp.name),
                                selected: blueprintId == bp.id,
                                onSelected: (_) {
                                  ref
                                      .read(blueprintFilterProvider.notifier)
                                      .state = blueprintId == bp.id
                                      ? null
                                      : bp.id;
                                  setSheetState(() {});
                                },
                              ),
                            ),
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
                      const SizedBox(height: 16),
                      Text(l10n.sortTitle, style: theme.textTheme.titleSmall),
                      const SizedBox(height: 8),
                      Wrap(
                        spacing: 8,
                        children: [
                          FilterChip(
                            avatar: const Icon(Icons.arrow_downward, size: 16),
                            label: Text(l10n.sortAZ),
                            selected: sortAsc,
                            onSelected: (_) {
                              ref.read(deviceSortAscProvider.notifier).state =
                                  true;
                              setSheetState(() {});
                            },
                          ),
                          FilterChip(
                            avatar: const Icon(Icons.arrow_upward, size: 16),
                            label: Text(l10n.sortZA),
                            selected: !sortAsc,
                            onSelected: (_) {
                              ref.read(deviceSortAscProvider.notifier).state =
                                  false;
                              setSheetState(() {});
                            },
                          ),
                        ],
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
