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
class DeviceRepositoryImpl implements DeviceRepository {
  DeviceRepositoryImpl({required this.api});

  final DeviceApi api;

  @override
  Future<List<Device>> getDevices({
    String? platform,
    String? blueprintId,
    void Function(int loadedCount)? onPageLoaded,
  }) {
    return api.getAllDevices(
      platform: platform,
      blueprintId: blueprintId,
      onPageLoaded: onPageLoaded,
    );
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
  Future<List<Tag>> getTags() => api.getTags();

  @override
  Future<Tag> createTag(String name) => api.createTag(name);

  @override
  Future<Tag> updateTag(String tagId, String name) =>
      api.updateTag(tagId, name);

  @override
  Future<void> deleteTag(String tagId) => api.deleteTag(tagId);
}
