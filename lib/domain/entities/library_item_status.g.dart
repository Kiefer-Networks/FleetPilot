// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'library_item_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LibraryItemStatus _$LibraryItemStatusFromJson(Map<String, dynamic> json) =>
    _LibraryItemStatus(
      deviceId: _readDeviceId(json, 'device_id') as String?,
      deviceName: _readDeviceName(json, 'device_name') as String?,
      serialNumber: json['serial_number'] as String?,
      status: json['status'] as String?,
      lastRun: json['last_run'] as String?,
      completedAt: json['completed_at'] as String?,
    );

Map<String, dynamic> _$LibraryItemStatusToJson(_LibraryItemStatus instance) =>
    <String, dynamic>{
      'device_id': instance.deviceId,
      'device_name': instance.deviceName,
      'serial_number': instance.serialNumber,
      'status': instance.status,
      'last_run': instance.lastRun,
      'completed_at': instance.completedAt,
    };

_LibraryItemActivity _$LibraryItemActivityFromJson(Map<String, dynamic> json) =>
    _LibraryItemActivity(
      id: _toNullableString(json['id']),
      deviceId: _readDeviceId(json, 'device_id') as String?,
      deviceName: _readDeviceName(json, 'device_name') as String?,
      serialNumber: json['serial_number'] as String?,
      action: json['action'] as String?,
      status: json['status'] as String?,
      createdAt: json['created_at'] as String?,
      details: _toNullableString(json['details']),
    );

Map<String, dynamic> _$LibraryItemActivityToJson(
  _LibraryItemActivity instance,
) => <String, dynamic>{
  'id': instance.id,
  'device_id': instance.deviceId,
  'device_name': instance.deviceName,
  'serial_number': instance.serialNumber,
  'action': instance.action,
  'status': instance.status,
  'created_at': instance.createdAt,
  'details': instance.details,
};
