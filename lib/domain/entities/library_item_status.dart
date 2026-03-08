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
    @JsonKey(name: 'serial_number') String? serialNumber,
    String? status,
    @JsonKey(name: 'last_run') String? lastRun,
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
    @JsonKey(name: 'serial_number') String? serialNumber,
    String? action,
    String? status,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(fromJson: _toNullableString) String? details,
  }) = _LibraryItemActivity;

  factory LibraryItemActivity.fromJson(Map<String, dynamic> json) =>
      _$LibraryItemActivityFromJson(json);
}

String? _toNullableString(dynamic value) => value?.toString();

/// Reads device_id with fallback to computer_id (Kandji API uses both).
Object? _readDeviceId(Map<dynamic, dynamic> json, String key) =>
    json['device_id'] ?? json['computer_id'];

/// Reads device_name with fallback to computer_name.
Object? _readDeviceName(Map<dynamic, dynamic> json, String key) =>
    json['device_name'] ?? json['computer_name'];
