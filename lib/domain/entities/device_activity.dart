import 'package:freezed_annotation/freezed_annotation.dart';

part 'device_activity.freezed.dart';
part 'device_activity.g.dart';

/// An activity log entry for a managed device.
@freezed
abstract class DeviceActivity with _$DeviceActivity {
  const factory DeviceActivity({
    dynamic id,
    @JsonKey(name: 'action_type') String? actionType,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(fromJson: _detailsFromJson) String? details,
    dynamic user,
  }) = _DeviceActivity;

  factory DeviceActivity.fromJson(Map<String, dynamic> json) =>
      _$DeviceActivityFromJson(json);
}

String? _detailsFromJson(dynamic value) {
  if (value == null) return null;
  if (value is String) return value;
  if (value is Map) {
    // Convert map to readable string
    return value.entries
        .where((e) => e.value != null && e.value.toString().isNotEmpty)
        .map((e) => '${e.key}: ${e.value}')
        .join(', ');
  }
  return value.toString();
}
