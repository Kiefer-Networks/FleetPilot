import 'package:freezed_annotation/freezed_annotation.dart';

part 'device.freezed.dart';
part 'device.g.dart';

/// Represents a managed Apple device enrolled in the MDM tenant.
@freezed
abstract class Device with _$Device {
  const factory Device({
    @JsonKey(name: 'device_id') required String deviceId,
    @JsonKey(name: 'device_name') String? deviceName,
    @JsonKey(name: 'serial_number') String? serialNumber,
    String? platform,
    String? model,
    @JsonKey(name: 'os_version') String? osVersion,
    @JsonKey(name: 'asset_tag') String? assetTag,
    @JsonKey(name: 'blueprint_id') String? blueprintId,
    @JsonKey(name: 'blueprint_name') String? blueprintName,
    @JsonKey(name: 'user', fromJson: _userFromJson) DeviceUser? user,
    @JsonKey(name: 'last_check_in') String? lastCheckIn,
    @JsonKey(name: 'first_enrollment') String? firstEnrollment,
    @JsonKey(name: 'agent_version') String? agentVersion,
    @JsonKey(name: 'is_missing') @Default(false) bool isMissing,
    @JsonKey(name: 'is_removed') @Default(false) bool isRemoved,
    @JsonKey(name: 'is_supervised') @Default(false) bool isSupervised,
    @JsonKey(name: 'general_status') String? generalStatus,
    @JsonKey(name: 'lost_mode_status') String? lostModeStatus,
    @JsonKey(name: 'tags', fromJson: _tagsFromJson) @Default([]) List<String> tags,
  }) = _Device;

  factory Device.fromJson(Map<String, dynamic> json) => _$DeviceFromJson(json);
}

/// Parses the `user` field which can be null, an empty string, or a Map.
DeviceUser? _userFromJson(dynamic value) {
  if (value == null || value is! Map<String, dynamic>) return null;
  return DeviceUser.fromJson(value);
}

/// Parses the `tags` field which can be null, a list of strings, or a list of maps.
List<String> _tagsFromJson(dynamic value) {
  if (value == null || value is! List) return [];
  return value.map((e) {
    if (e is String) return e;
    if (e is Map<String, dynamic>) return (e['name'] as String?) ?? '';
    return e.toString();
  }).where((s) => s.isNotEmpty).toList();
}

/// The user assigned to a device.
@freezed
abstract class DeviceUser with _$DeviceUser {
  const factory DeviceUser({
    String? email,
    String? name,
    @JsonKey(name: 'user_id') String? userId,
  }) = _DeviceUser;

  factory DeviceUser.fromJson(Map<String, dynamic> json) =>
      _$DeviceUserFromJson(json);
}
