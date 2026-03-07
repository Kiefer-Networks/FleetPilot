import 'package:flutter_riverpod/flutter_riverpod.dart';

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

/// Number of devices loaded so far during pagination.
final devicesLoadingCountProvider = StateProvider<int>((ref) => 0);

/// Provider for the full device list, respecting active filters.
final devicesProvider = AsyncNotifierProvider<DevicesNotifier, List<Device>>(
  DevicesNotifier.new,
);

/// Manages device list state with transparent pagination.
class DevicesNotifier extends AsyncNotifier<List<Device>> {
  @override
  Future<List<Device>> build() async {
    final platform = ref.watch(platformFilterProvider);
    final blueprintId = ref.watch(blueprintFilterProvider);

    final getDevices = await ref.watch(getDevicesUseCaseProvider.future);
    return getDevices(
      platform: platform,
      blueprintId: blueprintId,
      onPageLoaded: (count) {
        ref.read(devicesLoadingCountProvider.notifier).state = count;
      },
    );
  }

  /// Force refresh the device list.
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
