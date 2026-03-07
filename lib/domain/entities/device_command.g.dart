// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_command.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DeviceCommand _$DeviceCommandFromJson(Map<String, dynamic> json) =>
    _DeviceCommand(
      uuid: json['uuid'] as String?,
      commandType: json['command_type'] as String?,
      requestType: json['request_type'] as String?,
      status: _statusFromJson(json['status']),
      dateRequested: json['date_requested'] as String?,
      dateCompleted: json['date_completed'] as String?,
      lastPushed: json['last_pushed'] as String?,
      attempts: (json['attempts'] as num?)?.toInt(),
      priority: (json['priority'] as num?)?.toInt(),
    );

Map<String, dynamic> _$DeviceCommandToJson(_DeviceCommand instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'command_type': instance.commandType,
      'request_type': instance.requestType,
      'status': instance.status,
      'date_requested': instance.dateRequested,
      'date_completed': instance.dateCompleted,
      'last_pushed': instance.lastPushed,
      'attempts': instance.attempts,
      'priority': instance.priority,
    };
