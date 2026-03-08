import '../entities/device.dart';
import '../entities/device_action.dart';
import '../entities/device_activity.dart';
import '../entities/device_app.dart';
import '../entities/device_command.dart';
import '../entities/device_details.dart';
import '../entities/device_note.dart';
import '../entities/device_secret.dart';
import '../entities/device_status.dart';
import '../entities/tag.dart';

/// Abstract interface for device API operations.
///
/// All methods transparently handle pagination for list endpoints.
abstract interface class DeviceRepository {
  /// Fetches all devices, transparently paginating through all pages.
  Future<List<Device>> getDevices({
    String? platform,
    String? blueprintId,
    void Function(int loadedCount)? onPageLoaded,
  });

  /// Fetches a single page of devices starting at [offset].
  ///
  /// Returns up to [ApiConstants.pageLimit] devices. Used for progressive
  /// loading where the first page should be shown immediately while
  /// remaining pages are fetched in the background.
  Future<List<Device>> getDevicesPage({
    required int offset,
    String? platform,
    String? blueprintId,
    String? ordering,
  });

  /// Fetches a single device by [deviceId].
  Future<Device> getDevice(String deviceId);

  /// Fetches extended device details (hardware, security, cellular).
  Future<DeviceDetails> getDeviceDetails(String deviceId);

  /// Fetches apps installed on a device.
  Future<List<DeviceApp>> getDeviceApps(String deviceId);

  /// Fetches status (library items + parameters) for a device.
  Future<DeviceStatus> getDeviceStatus(String deviceId);

  /// Fetches recent activity for a device.
  Future<List<DeviceActivity>> getDeviceActivity(String deviceId);

  /// Fetches MDM commands for a device.
  Future<List<DeviceCommand>> getDeviceCommands(String deviceId);

  /// Fetches device secrets (FileVault key, unlock pin, recovery password, bypass code).
  Future<DeviceSecrets> getDeviceSecrets(String deviceId);

  /// Executes a device [action] on the device with [deviceId].
  Future<void> executeAction(
    String deviceId,
    DeviceAction action, {
    Map<String, dynamic>? body,
  });

  /// Validates credentials by attempting a minimal API request.
  Future<bool> validateCredentials();

  // Notes CRUD
  Future<List<DeviceNote>> getDeviceNotes(String deviceId);
  Future<DeviceNote> createDeviceNote(String deviceId, String content);
  Future<DeviceNote> updateDeviceNote(
    String deviceId,
    String noteId,
    String content,
  );
  Future<void> deleteDeviceNote(String deviceId, String noteId);

  // Update / Delete Device
  Future<Device> updateDevice(String deviceId, Map<String, dynamic> body);
  Future<void> deleteDevice(String deviceId);

  // Cancel Lost Mode
  Future<void> cancelLostMode(String deviceId);

  // Tags CRUD
  Future<List<Tag>> getTags();
  Future<Tag> createTag(String name);
  Future<Tag> updateTag(String tagId, String name);
  Future<void> deleteTag(String tagId);
}
