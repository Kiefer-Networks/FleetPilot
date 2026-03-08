// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'library_item_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LibraryItemStatus _$LibraryItemStatusFromJson(Map<String, dynamic> json) =>
    _LibraryItemStatus(
      deviceId: _readDeviceId(json, 'deviceId') as String?,
      deviceName: _readDeviceName(json, 'deviceName') as String?,
      status: _readStatus(json, 'status') as String?,
      reportedAt: json['reported_at'] as String?,
      lastAuditRun: json['last_audit_run'] as String?,
      lastAuditLog: json['last_audit_log'] as String?,
      log: json['log'] as String?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$LibraryItemStatusToJson(_LibraryItemStatus instance) =>
    <String, dynamic>{
      'deviceId': instance.deviceId,
      'deviceName': instance.deviceName,
      'status': instance.status,
      'reported_at': instance.reportedAt,
      'last_audit_run': instance.lastAuditRun,
      'last_audit_log': instance.lastAuditLog,
      'log': instance.log,
      'type': instance.type,
    };

_LibraryItemActivity _$LibraryItemActivityFromJson(Map<String, dynamic> json) =>
    _LibraryItemActivity(
      id: _toNullableString(json['id']),
      deviceId: _readDeviceId(json, 'deviceId') as String?,
      deviceName: _readDeviceName(json, 'deviceName') as String?,
      action: _readAction(json, 'action') as String?,
      status: _readStatus(json, 'status') as String?,
      createdAt: _readCreatedAt(json, 'created_at') as String?,
      details: _toNullableString(json['details']),
      userEmail: json['user_email'] as String?,
      userId: json['user_id'] as String?,
    );

Map<String, dynamic> _$LibraryItemActivityToJson(
  _LibraryItemActivity instance,
) => <String, dynamic>{
  'id': instance.id,
  'deviceId': instance.deviceId,
  'deviceName': instance.deviceName,
  'action': instance.action,
  'status': instance.status,
  'created_at': instance.createdAt,
  'details': instance.details,
  'user_email': instance.userEmail,
  'user_id': instance.userId,
};
