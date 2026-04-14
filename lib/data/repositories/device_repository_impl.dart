import '../../core/cache/cache_service.dart';
import '../../domain/entities/device.dart';
import '../../domain/entities/device_action.dart';
import '../../domain/entities/device_activity.dart';
import '../../domain/entities/device_app.dart';
import '../../domain/entities/device_command.dart';
import '../../domain/entities/device_details.dart';
import '../../domain/entities/device_note.dart';
import '../../domain/entities/device_secret.dart';
import '../../domain/entities/device_status.dart';
import '../../domain/entities/tag.dart';
import '../../domain/repositories/device_repository.dart';
import '../datasources/remote/device_api.dart';

/// Concrete implementation of [DeviceRepository] using [DeviceApi].
///
/// Supports stale-while-revalidate caching: callers receive cached
/// data immediately via [getCachedDevices], then call the normal
/// fetch methods to refresh in the background.
class DeviceRepositoryImpl implements DeviceRepository {
  DeviceRepositoryImpl({required this.api, required this.cache});

  final DeviceApi api;
  final CacheService cache;

  // ── Cache helpers ──────────────────────────────────────────

  /// Returns cached device list or `null` if no cache exists.
  Future<List<Device>?> getCachedDevices() async {
    final raw = await cache.read<List<dynamic>>('devices');
    if (raw == null) return null;
    return raw
        .cast<Map<String, dynamic>>()
        .map((j) => Device.fromJson(j))
        .toList();
  }

  /// Returns cached tags or `null`.
  Future<List<Tag>?> getCachedTags() async {
    final raw = await cache.read<List<dynamic>>('tags');
    if (raw == null) return null;
    return raw.cast<Map<String, dynamic>>().map(Tag.fromJson).toList();
  }

  @override
  Future<List<Device>> getDevices({
    String? platform,
    String? blueprintId,
    void Function(int loadedCount)? onPageLoaded,
  }) async {
    final devices = await api.getAllDevices(
      platform: platform,
      blueprintId: blueprintId,
      onPageLoaded: onPageLoaded,
    );
    // Only cache full unfiltered lists.
    if (platform == null && blueprintId == null) {
      cache.write('devices', devices.map((d) => d.toJson()).toList());
    }
    return devices;
  }

  @override
  Future<List<Device>> getDevicesPage({
    required int offset,
    String? platform,
    String? blueprintId,
    String? ordering,
  }) async {
    final page = await api.getDevicesPage(
      offset: offset,
      platform: platform,
      blueprintId: blueprintId,
      ordering: ordering,
    );
    // Cache the first unfiltered page as a quick-load snapshot.
    if (offset == 0 && platform == null && blueprintId == null) {
      cache.write('devices', page.map((d) => d.toJson()).toList());
    }
    return page;
  }

  @override
  Future<Device> getDevice(String deviceId) => api.getDevice(deviceId);

  @override
  Future<DeviceDetails> getDeviceDetails(String deviceId) =>
      api.getDeviceDetails(deviceId);

  @override
  Future<List<DeviceApp>> getDeviceApps(String deviceId) =>
      api.getDeviceApps(deviceId);

  @override
  Future<DeviceStatus> getDeviceStatus(String deviceId) =>
      api.getDeviceStatus(deviceId);

  @override
  Future<List<DeviceActivity>> getDeviceActivity(String deviceId) =>
      api.getDeviceActivity(deviceId);

  @override
  Future<List<DeviceCommand>> getDeviceCommands(String deviceId) =>
      api.getDeviceCommands(deviceId);

  @override
  Future<DeviceSecrets> getDeviceSecrets(String deviceId) =>
      api.getDeviceSecrets(deviceId);

  @override
  Future<void> executeAction(
    String deviceId,
    DeviceAction action, {
    Map<String, dynamic>? body,
  }) => api.executeAction(deviceId, action, body: body);

  @override
  Future<bool> validateCredentials() => api.validateCredentials();

  // Notes CRUD
  @override
  Future<List<DeviceNote>> getDeviceNotes(String deviceId) =>
      api.getDeviceNotes(deviceId);

  @override
  Future<DeviceNote> createDeviceNote(String deviceId, String content) =>
      api.createDeviceNote(deviceId, content);

  @override
  Future<DeviceNote> updateDeviceNote(
    String deviceId,
    String noteId,
    String content,
  ) => api.updateDeviceNote(deviceId, noteId, content);

  @override
  Future<void> deleteDeviceNote(String deviceId, String noteId) =>
      api.deleteDeviceNote(deviceId, noteId);

  // Update / Delete Device
  @override
  Future<Device> updateDevice(String deviceId, Map<String, dynamic> body) =>
      api.updateDevice(deviceId, body);

  @override
  Future<void> deleteDevice(String deviceId) => api.deleteDevice(deviceId);

  // Cancel Lost Mode
  @override
  Future<void> cancelLostMode(String deviceId) => api.cancelLostMode(deviceId);

  // Tags CRUD
  @override
  Future<List<Tag>> getTags() async {
    final tags = await api.getTags();
    cache.write(
      'tags',
      tags.map((t) => {'tag_id': t.tagId, 'tag_name': t.name}).toList(),
    );
    return tags;
  }

  @override
  Future<Tag> createTag(String name) => api.createTag(name);

  @override
  Future<Tag> updateTag(String tagId, String name) =>
      api.updateTag(tagId, name);

  @override
  Future<void> deleteTag(String tagId) => api.deleteTag(tagId);
}
