import 'package:freezed_annotation/freezed_annotation.dart';

part 'device_status.freezed.dart';
part 'device_status.g.dart';

/// Status response for a device's library items and parameters.
@freezed
abstract class DeviceStatus with _$DeviceStatus {
  const factory DeviceStatus({
    @JsonKey(name: 'device_id') String? deviceId,
    @JsonKey(name: 'library_items') @Default([]) List<StatusItem> libraryItems,
    @Default([]) List<StatusItem> parameters,
  }) = _DeviceStatus;

  factory DeviceStatus.fromJson(Map<String, dynamic> json) =>
      _$DeviceStatusFromJson(json);
}

/// A library item or parameter with its compliance status.
@freezed
abstract class StatusItem with _$StatusItem {
  const factory StatusItem({
    String? name,
    String? status,
    String? type,
    String? category,
    String? subcategory,
    @JsonKey(name: 'item_id') String? itemId,
    @JsonKey(name: 'reported_at') String? reportedAt,
  }) = _StatusItem;

  factory StatusItem.fromJson(Map<String, dynamic> json) =>
      _$StatusItemFromJson(json);
}
