import '../entities/device_action.dart';
import '../repositories/device_repository.dart';

/// Executes a remote action on a managed device.
class ExecuteDeviceAction {
  ExecuteDeviceAction({required this.repository});

  final DeviceRepository repository;

  /// Sends the [action] command to the device identified by [deviceId].
  Future<void> call(String deviceId, DeviceAction action, {Map<String, dynamic>? body}) {
    return repository.executeAction(deviceId, action, body: body);
  }
}
