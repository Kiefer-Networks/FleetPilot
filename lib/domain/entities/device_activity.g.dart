// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_activity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DeviceActivity _$DeviceActivityFromJson(Map<String, dynamic> json) =>
    _DeviceActivity(
      id: json['id'],
      actionType: json['action_type'] as String?,
      createdAt: json['created_at'] as String?,
      details: _detailsMapFromJson(json['details']),
      user: json['user'],
    );

Map<String, dynamic> _$DeviceActivityToJson(_DeviceActivity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'action_type': instance.actionType,
      'created_at': instance.createdAt,
      'details': instance.details,
      'user': instance.user,
    };
