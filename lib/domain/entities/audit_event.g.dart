// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'audit_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AuditEvent _$AuditEventFromJson(Map<String, dynamic> json) => _AuditEvent(
  id: _toNullableString(json['id']),
  action: _toNullableString(json['action']),
  occurredAt: json['occurred_at'] as String?,
  actorId: _toNullableString(json['actor_id']),
  actorType: _toNullableString(json['actor_type']),
  targetId: _toNullableString(json['target_id']),
  targetType: _toNullableString(json['target_type']),
  targetComponent: _toNullableString(json['target_component']),
  newState: _descriptionFromNewState(json['new_state']),
);

Map<String, dynamic> _$AuditEventToJson(_AuditEvent instance) =>
    <String, dynamic>{
      'id': instance.id,
      'action': instance.action,
      'occurred_at': instance.occurredAt,
      'actor_id': instance.actorId,
      'actor_type': instance.actorType,
      'target_id': instance.targetId,
      'target_type': instance.targetType,
      'target_component': instance.targetComponent,
      'new_state': instance.newState,
    };
