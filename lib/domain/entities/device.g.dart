// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Device _$DeviceFromJson(Map<String, dynamic> json) => _Device(
  deviceId: json['device_id'] as String,
  deviceName: json['device_name'] as String?,
  serialNumber: json['serial_number'] as String?,
  platform: json['platform'] as String?,
  model: json['model'] as String?,
  osVersion: json['os_version'] as String?,
  assetTag: json['asset_tag'] as String?,
  blueprintId: json['blueprint_id'] as String?,
  blueprintName: json['blueprint_name'] as String?,
  user: _userFromJson(json['user']),
  lastCheckIn: json['last_check_in'] as String?,
  firstEnrollment: json['first_enrollment'] as String?,
  agentVersion: json['agent_version'] as String?,
  isMissing: json['is_missing'] as bool? ?? false,
  isRemoved: json['is_removed'] as bool? ?? false,
  isSupervised: json['is_supervised'] as bool? ?? false,
  generalStatus: json['general_status'] as String?,
  lostModeStatus: json['lost_mode_status'] as String?,
  tags: json['tags'] == null ? const [] : _tagsFromJson(json['tags']),
);

Map<String, dynamic> _$DeviceToJson(_Device instance) => <String, dynamic>{
  'device_id': instance.deviceId,
  'device_name': instance.deviceName,
  'serial_number': instance.serialNumber,
  'platform': instance.platform,
  'model': instance.model,
  'os_version': instance.osVersion,
  'asset_tag': instance.assetTag,
  'blueprint_id': instance.blueprintId,
  'blueprint_name': instance.blueprintName,
  'user': instance.user,
  'last_check_in': instance.lastCheckIn,
  'first_enrollment': instance.firstEnrollment,
  'agent_version': instance.agentVersion,
  'is_missing': instance.isMissing,
  'is_removed': instance.isRemoved,
  'is_supervised': instance.isSupervised,
  'general_status': instance.generalStatus,
  'lost_mode_status': instance.lostModeStatus,
  'tags': instance.tags,
};

_DeviceUser _$DeviceUserFromJson(Map<String, dynamic> json) => _DeviceUser(
  email: json['email'] as String?,
  name: json['name'] as String?,
  userId: json['user_id'] as String?,
);

Map<String, dynamic> _$DeviceUserToJson(_DeviceUser instance) =>
    <String, dynamic>{
      'email': instance.email,
      'name': instance.name,
      'user_id': instance.userId,
    };
