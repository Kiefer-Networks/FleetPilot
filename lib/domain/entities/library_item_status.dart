import 'package:freezed_annotation/freezed_annotation.dart';

part 'library_item_status.freezed.dart';
part 'library_item_status.g.dart';

/// Deployment status for a library item on a specific device.
@freezed
abstract class LibraryItemStatus with _$LibraryItemStatus {
  const factory LibraryItemStatus({
    @JsonKey(name: 'device_id', readValue: _readDeviceId) String? deviceId,
    @JsonKey(name: 'device_name', readValue: _readDeviceName)
    String? deviceName,
    @JsonKey(name: 'serial_number', readValue: _readSerialNumber)
    String? serialNumber,
    @JsonKey(readValue: _readStatus) String? status,
    @JsonKey(name: 'last_run', readValue: _readLastRun) String? lastRun,
    @JsonKey(name: 'completed_at') String? completedAt,
  }) = _LibraryItemStatus;

  factory LibraryItemStatus.fromJson(Map<String, dynamic> json) =>
      _$LibraryItemStatusFromJson(json);
}

/// Activity log entry for a library item.
@freezed
abstract class LibraryItemActivity with _$LibraryItemActivity {
  const factory LibraryItemActivity({
    @JsonKey(fromJson: _toNullableString) String? id,
    @JsonKey(name: 'device_id', readValue: _readDeviceId) String? deviceId,
    @JsonKey(name: 'device_name', readValue: _readDeviceName)
    String? deviceName,
    @JsonKey(name: 'serial_number', readValue: _readSerialNumber)
    String? serialNumber,
    @JsonKey(readValue: _readAction) String? action,
    @JsonKey(readValue: _readStatus) String? status,
    @JsonKey(name: 'created_at', readValue: _readCreatedAt) String? createdAt,
    @JsonKey(fromJson: _toNullableString) String? details,
  }) = _LibraryItemActivity;

  factory LibraryItemActivity.fromJson(Map<String, dynamic> json) =>
      _$LibraryItemActivityFromJson(json);
}

String? _toNullableString(dynamic value) => value?.toString();

/// Reads device_id with fallback keys.
Object? _readDeviceId(Map<dynamic, dynamic> json, String key) =>
    json['device_id'] ?? json['computer_id'] ?? json['id'];

/// Reads device_name with fallback keys.
Object? _readDeviceName(Map<dynamic, dynamic> json, String key) =>
    json['device_name'] ?? json['computer_name'] ?? json['name'];

/// Reads serial_number with fallback keys.
Object? _readSerialNumber(Map<dynamic, dynamic> json, String key) =>
    json['serial_number'] ?? json['serial'];

/// Reads action with fallback keys.
Object? _readAction(Map<dynamic, dynamic> json, String key) =>
    json['action'] ?? json['action_type'] ?? json['event_type'] ?? json['type'];

/// Reads status with fallback keys.
Object? _readStatus(Map<dynamic, dynamic> json, String key) =>
    json['status'] ?? json['run_status'] ?? json['result'];

/// Reads created_at with fallback keys.
Object? _readCreatedAt(Map<dynamic, dynamic> json, String key) =>
    json['created_at'] ?? json['timestamp'] ?? json['date'];

/// Reads last_run with fallback keys.
Object? _readLastRun(Map<dynamic, dynamic> json, String key) =>
    json['last_run'] ?? json['last_execution'] ?? json['completed_at'];
