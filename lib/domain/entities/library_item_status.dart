import 'package:freezed_annotation/freezed_annotation.dart';

part 'library_item_status.freezed.dart';
part 'library_item_status.g.dart';

/// Deployment status for a library item on a specific device.
@freezed
abstract class LibraryItemStatus with _$LibraryItemStatus {
  const factory LibraryItemStatus({
    @JsonKey(name: 'device_id') String? deviceId,
    @JsonKey(name: 'device_name') String? deviceName,
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
    String? id,
    @JsonKey(name: 'device_id') String? deviceId,
    @JsonKey(name: 'device_name') String? deviceName,
    @JsonKey(name: 'serial_number') String? serialNumber,
    String? action,
    String? status,
    @JsonKey(name: 'created_at') String? createdAt,
    String? details,
  }) = _LibraryItemActivity;

  factory LibraryItemActivity.fromJson(Map<String, dynamic> json) =>
      _$LibraryItemActivityFromJson(json);
}
