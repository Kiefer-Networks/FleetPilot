import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';

import '../../core/constants/api_constants.dart';
import '../../core/di/providers.dart';
import '../../domain/entities/device.dart';
import '../../domain/entities/device_activity.dart';
import '../../domain/entities/device_app.dart';
import '../../domain/entities/device_command.dart';
import '../../domain/entities/device_details.dart';
import '../../domain/entities/device_note.dart';
import '../../domain/entities/device_secret.dart';
import '../../domain/entities/device_status.dart';
import '../../domain/entities/tag.dart';

/// Currently selected platform filter.
final platformFilterProvider = StateProvider<String?>((ref) => null);

/// Currently selected blueprint filter.
final blueprintFilterProvider = StateProvider<String?>((ref) => null);

/// Sort order: true = A-Z, false = Z-A.
final deviceSortAscProvider = StateProvider<bool>((ref) => true);

/// Search query for device list filtering.
final deviceSearchQueryProvider = StateProvider<String>((ref) => '');

/// Filter by supervision status: null = all, true = supervised, false = unsupervised.
final supervisedFilterProvider = StateProvider<bool?>((ref) => null);

/// Filter by lost mode: true = only lost mode devices.
final lostModeFilterProvider = StateProvider<bool>((ref) => false);

/// Selected device ID for master-detail layout on wide screens.
final selectedDeviceIdProvider = StateProvider<String?>((ref) => null);

/// Number of devices loaded so far during pagination.
final devicesLoadingCountProvider = StateProvider<int>((ref) => 0);

/// Whether all device pages have been fetched.
final devicesFullyLoadedProvider = StateProvider<bool>((ref) => false);

/// Provider for the full device list, respecting active filters.
final devicesProvider = AsyncNotifierProvider<DevicesNotifier, List<Device>>(
  DevicesNotifier.new,
);

/// Manages device list state with progressive transparent pagination.
///
/// The first page of devices is shown immediately while remaining pages
/// are fetched in the background and appended as they arrive.
class DevicesNotifier extends AsyncNotifier<List<Device>> {
  @override
  Future<List<Device>> build() async {
    final platform = ref.watch(platformFilterProvider);
    final blueprintId = ref.watch(blueprintFilterProvider);

    ref.read(devicesLoadingCountProvider.notifier).state = 0;
    ref.read(devicesFullyLoadedProvider.notifier).state = false;

    final repo = await ref.watch(deviceRepositoryProvider.future);

    // Fetch the first page and return it immediately so the UI can render.
    final firstPage = await repo.getDevicesPage(
      offset: 0,
      platform: platform,
      blueprintId: blueprintId,
    );

    ref.read(devicesLoadingCountProvider.notifier).state = firstPage.length;

    // If the first page is smaller than the limit, all devices fit in one page.
    if (firstPage.length < ApiConstants.pageLimit) {
      ref.read(devicesFullyLoadedProvider.notifier).state = true;
      return firstPage;
    }

    // Schedule background fetching of remaining pages.
    _fetchRemainingPages(
      platform: platform,
      blueprintId: blueprintId,
      initialDevices: firstPage,
    );

    return firstPage;
  }

  /// Fetches all remaining pages in the background and appends them
  /// to the current state as each page arrives.
  Future<void> _fetchRemainingPages({
    String? platform,
    String? blueprintId,
    required List<Device> initialDevices,
  }) async {
    final repo = await ref.read(deviceRepositoryProvider.future);
    final allDevices = List<Device>.of(initialDevices);
    var offset = ApiConstants.pageLimit;

    while (true) {
      try {
        final page = await repo.getDevicesPage(
          offset: offset,
          platform: platform,
          blueprintId: blueprintId,
        );

        allDevices.addAll(page);
        ref.read(devicesLoadingCountProvider.notifier).state =
            allDevices.length;

        // Update state so the UI sees the new devices immediately.
        state = AsyncData(List.unmodifiable(allDevices));

        if (page.length < ApiConstants.pageLimit) break;
        offset += ApiConstants.pageLimit;
      } on Exception {
        // If a subsequent page fails, keep whatever we have so far and stop.
        break;
      }
    }

    ref.read(devicesFullyLoadedProvider.notifier).state = true;
  }

  /// Force refresh the device list from scratch.
  Future<void> refresh() async {
    ref.invalidateSelf();
  }
}

/// Provider for filtered/searched devices derived from the full list.
final filteredDevicesProvider = Provider<AsyncValue<List<Device>>>((ref) {
  final devicesAsync = ref.watch(devicesProvider);
  final query = ref.watch(deviceSearchQueryProvider).toLowerCase();

  final sortAsc = ref.watch(deviceSortAscProvider);

  final supervisedFilter = ref.watch(supervisedFilterProvider);
  final lostModeFilter = ref.watch(lostModeFilterProvider);

  return devicesAsync.whenData((devices) {
    final filtered = devices.where((device) {
      // Supervised filter
      if (supervisedFilter != null && device.isSupervised != supervisedFilter) {
        return false;
      }
      // Lost mode filter
      if (lostModeFilter && device.lostModeStatus?.toUpperCase() != 'ENABLED') {
        return false;
      }
      if (query.isEmpty) return true;
      final name = device.deviceName?.toLowerCase() ?? '';
      final serial = device.serialNumber?.toLowerCase() ?? '';
      final assetTag = device.assetTag?.toLowerCase() ?? '';
      final userName = device.user?.name?.toLowerCase() ?? '';
      return name.contains(query) ||
          serial.contains(query) ||
          assetTag.contains(query) ||
          userName.contains(query);
    }).toList();

    filtered.sort((a, b) {
      final nameA = (a.deviceName ?? a.serialNumber ?? '').toLowerCase();
      final nameB = (b.deviceName ?? b.serialNumber ?? '').toLowerCase();
      return sortAsc ? nameA.compareTo(nameB) : nameB.compareTo(nameA);
    });

    return filtered;
  });
});

/// Provider for a single device by ID.
final deviceDetailProvider = FutureProvider.family<Device, String>((
  ref,
  deviceId,
) async {
  final repo = await ref.watch(deviceRepositoryProvider.future);
  return repo.getDevice(deviceId);
});

/// Extended device details (hardware, security, cellular).
final deviceDetailsProvider = FutureProvider.family<DeviceDetails, String>((
  ref,
  deviceId,
) async {
  final repo = await ref.watch(deviceRepositoryProvider.future);
  return repo.getDeviceDetails(deviceId);
});

/// Apps installed on a device.
final deviceAppsProvider = FutureProvider.family<List<DeviceApp>, String>((
  ref,
  deviceId,
) async {
  final repo = await ref.watch(deviceRepositoryProvider.future);
  return repo.getDeviceApps(deviceId);
});

/// Device status (library items + parameters).
final deviceStatusProvider = FutureProvider.family<DeviceStatus, String>((
  ref,
  deviceId,
) async {
  final repo = await ref.watch(deviceRepositoryProvider.future);
  return repo.getDeviceStatus(deviceId);
});

/// Device activity log.
final deviceActivityProvider =
    FutureProvider.family<List<DeviceActivity>, String>((ref, deviceId) async {
      final repo = await ref.watch(deviceRepositoryProvider.future);
      return repo.getDeviceActivity(deviceId);
    });

/// Device MDM commands.
final deviceCommandsProvider =
    FutureProvider.family<List<DeviceCommand>, String>((ref, deviceId) async {
      final repo = await ref.watch(deviceRepositoryProvider.future);
      return repo.getDeviceCommands(deviceId);
    });

/// Device secrets (FileVault key, unlock pin, recovery password, bypass code).
final deviceSecretsProvider = FutureProvider.family<DeviceSecrets, String>((
  ref,
  deviceId,
) async {
  final repo = await ref.watch(deviceRepositoryProvider.future);
  return repo.getDeviceSecrets(deviceId);
});

/// Device notes.
final deviceNotesProvider = FutureProvider.family<List<DeviceNote>, String>((
  ref,
  deviceId,
) async {
  final repo = await ref.watch(deviceRepositoryProvider.future);
  return repo.getDeviceNotes(deviceId);
});

/// All tags.
final tagsProvider = FutureProvider<List<Tag>>((ref) async {
  final repo = await ref.watch(deviceRepositoryProvider.future);
  return repo.getTags();
});

/// Whether multi-select mode is active on the device list.
final deviceSelectionModeProvider = StateProvider<bool>((ref) => false);

/// Set of selected device IDs for bulk operations.
final selectedDeviceIdsProvider =
    StateNotifierProvider<SelectedDeviceIdsNotifier, Set<String>>(
      (ref) => SelectedDeviceIdsNotifier(),
    );

class SelectedDeviceIdsNotifier extends StateNotifier<Set<String>> {
  SelectedDeviceIdsNotifier() : super(const {});

  void toggle(String deviceId) {
    if (state.contains(deviceId)) {
      state = {...state}..remove(deviceId);
    } else {
      state = {...state, deviceId};
    }
  }

  void selectAll(List<String> deviceIds) {
    state = {...deviceIds};
  }

  void deselectAll() {
    state = const {};
  }
}

/// Progress state for bulk operations.
final bulkOperationProgressProvider =
    StateNotifierProvider<BulkOperationProgressNotifier, BulkOperationProgress>(
      (ref) => BulkOperationProgressNotifier(),
    );

class BulkOperationProgress {
  const BulkOperationProgress({
    this.isRunning = false,
    this.total = 0,
    this.completed = 0,
    this.failed = 0,
  });

  final bool isRunning;
  final int total;
  final int completed;
  final int failed;

  double get progress => total > 0 ? completed / total : 0;
}

class BulkOperationProgressNotifier
    extends StateNotifier<BulkOperationProgress> {
  BulkOperationProgressNotifier() : super(const BulkOperationProgress());

  void start(int total) {
    state = BulkOperationProgress(isRunning: true, total: total);
  }

  void advance({bool success = true}) {
    state = BulkOperationProgress(
      isRunning: true,
      total: state.total,
      completed: state.completed + 1,
      failed: state.failed + (success ? 0 : 1),
    );
  }

  void finish() {
    state = BulkOperationProgress(
      total: state.total,
      completed: state.completed,
      failed: state.failed,
    );
  }

  void reset() {
    state = const BulkOperationProgress();
  }
}
