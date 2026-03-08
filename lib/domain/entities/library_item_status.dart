import 'package:freezed_annotation/freezed_annotation.dart';

part 'library_item_status.freezed.dart';
part 'library_item_status.g.dart';

/// Deployment status for a library item on a specific device.
@freezed
abstract class LibraryItemStatus with _$LibraryItemStatus {
  const factory LibraryItemStatus({
    @JsonKey(readValue: _readDeviceId) String? deviceId,
    @JsonKey(readValue: _readDeviceName) String? deviceName,
    @JsonKey(readValue: _readStatus) String? status,
    @JsonKey(name: 'reported_at') String? reportedAt,
    @JsonKey(name: 'last_audit_run') String? lastAuditRun,
    @JsonKey(name: 'last_audit_log') String? lastAuditLog,
    String? log,
    String? type,
  }) = _LibraryItemStatus;

  factory LibraryItemStatus.fromJson(Map<String, dynamic> json) =>
      _$LibraryItemStatusFromJson(json);
}

/// Activity log entry for a library item.
@freezed
abstract class LibraryItemActivity with _$LibraryItemActivity {
  const factory LibraryItemActivity({
    @JsonKey(fromJson: _toNullableString) String? id,
    @JsonKey(readValue: _readDeviceId) String? deviceId,
    @JsonKey(readValue: _readDeviceName) String? deviceName,
    @JsonKey(readValue: _readAction) String? action,
    @JsonKey(readValue: _readStatus) String? status,
    @JsonKey(name: 'created_at', readValue: _readCreatedAt) String? createdAt,
    @JsonKey(fromJson: _toNullableString) String? details,
    @JsonKey(name: 'user_email') String? userEmail,
    @JsonKey(name: 'user_id') String? userId,
  }) = _LibraryItemActivity;

  factory LibraryItemActivity.fromJson(Map<String, dynamic> json) =>
      _$LibraryItemActivityFromJson(json);
}

String? _toNullableString(dynamic value) => value?.toString();

/// Reads device ID — handles nested {computer: {id}} and flat {device_id}.
Object? _readDeviceId(Map<dynamic, dynamic> json, String key) {
  final computer = json['computer'];
  if (computer is Map) return computer['id']?.toString();
  final val = json['device_id'] ?? json['computer_id'];
  if (val != null) return val.toString();
  final id = json['id'];
  if (id is String) return id;
  return null;
}

/// Reads device name — handles nested {computer: {name}} and flat fields.
Object? _readDeviceName(Map<dynamic, dynamic> json, String key) {
  final computer = json['computer'];
  if (computer is Map) return computer['name']?.toString();
  return (json['device_name'] ?? json['computer_name'] ?? json['name'])
      ?.toString();
}

/// Reads action with fallback keys.
Object? _readAction(Map<dynamic, dynamic> json, String key) =>
    (json['action'] ??
            json['action_type'] ??
            json['activity_type'] ??
            json['event_type'] ??
            json['type'])
        ?.toString();

/// Reads status with fallback keys.
Object? _readStatus(Map<dynamic, dynamic> json, String key) =>
    (json['status'] ?? json['run_status'] ?? json['result'])?.toString();

/// Reads created_at with fallback keys.
Object? _readCreatedAt(Map<dynamic, dynamic> json, String key) =>
    (json['created_at'] ??
            json['activity_time'] ??
            json['timestamp'] ??
            json['date'])
        ?.toString();
