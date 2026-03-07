// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ade_device.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AdeDevice _$AdeDeviceFromJson(Map<String, dynamic> json) => _AdeDevice(
  serialNumber: json['serial_number'] as String?,
  model: json['model'] as String?,
  description: json['description'] as String?,
  color: json['color'] as String?,
  deviceFamily: json['device_family'] as String?,
  os: json['os'] as String?,
  profileStatus: json['profile_status'] as String?,
  profileAssignTime: json['profile_assign_time'] as String?,
  profilePushTime: json['profile_push_time'] as String?,
  deviceAssignedDate: json['device_assigned_date'] as String?,
  deviceAssignedBy: json['device_assigned_by'] as String?,
);

Map<String, dynamic> _$AdeDeviceToJson(_AdeDevice instance) =>
    <String, dynamic>{
      'serial_number': instance.serialNumber,
      'model': instance.model,
      'description': instance.description,
      'color': instance.color,
      'device_family': instance.deviceFamily,
      'os': instance.os,
      'profile_status': instance.profileStatus,
      'profile_assign_time': instance.profileAssignTime,
      'profile_push_time': instance.profilePushTime,
      'device_assigned_date': instance.deviceAssignedDate,
      'device_assigned_by': instance.deviceAssignedBy,
    };
