import 'package:freezed_annotation/freezed_annotation.dart';

part 'ade_device.freezed.dart';
part 'ade_device.g.dart';

/// A device from Apple's Automated Device Enrollment.
@freezed
abstract class AdeDevice with _$AdeDevice {
  const factory AdeDevice({
    @JsonKey(name: 'serial_number') String? serialNumber,
    String? model,
    String? description,
    String? color,
    @JsonKey(name: 'device_family') String? deviceFamily,
    @JsonKey(name: 'os') String? os,
    @JsonKey(name: 'profile_status') String? profileStatus,
    @JsonKey(name: 'profile_assign_time') String? profileAssignTime,
    @JsonKey(name: 'profile_push_time') String? profilePushTime,
    @JsonKey(name: 'device_assigned_date') String? deviceAssignedDate,
    @JsonKey(name: 'device_assigned_by') String? deviceAssignedBy,
  }) = _AdeDevice;

  factory AdeDevice.fromJson(Map<String, dynamic> json) =>
      _$AdeDeviceFromJson(json);
}
