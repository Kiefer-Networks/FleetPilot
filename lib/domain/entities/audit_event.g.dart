// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'audit_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AuditEvent _$AuditEventFromJson(Map<String, dynamic> json) => _AuditEvent(
  id: json['id'] as String?,
  eventType: json['event_type'] as String?,
  eventAction: json['event_action'] as String?,
  eventDescription: json['event_description'] as String?,
  eventDate: json['event_date'] as String?,
  adminEmail: json['admin_email'] as String?,
  adminName: json['admin_name'] as String?,
  deviceName: json['device_name'] as String?,
  deviceSerialNumber: json['device_serial_number'] as String?,
  blueprintName: json['blueprint_name'] as String?,
  userEmail: json['user_email'] as String?,
);

Map<String, dynamic> _$AuditEventToJson(_AuditEvent instance) =>
    <String, dynamic>{
      'id': instance.id,
      'event_type': instance.eventType,
      'event_action': instance.eventAction,
      'event_description': instance.eventDescription,
      'event_date': instance.eventDate,
      'admin_email': instance.adminEmail,
      'admin_name': instance.adminName,
      'device_name': instance.deviceName,
      'device_serial_number': instance.deviceSerialNumber,
      'blueprint_name': instance.blueprintName,
      'user_email': instance.userEmail,
    };
