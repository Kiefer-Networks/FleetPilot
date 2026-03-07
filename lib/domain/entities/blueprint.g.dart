// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blueprint.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Blueprint _$BlueprintFromJson(Map<String, dynamic> json) => _Blueprint(
  id: json['id'] as String,
  name: json['name'] as String,
  description: json['description'] as String?,
  enrollmentCodeIsActive: json['enrollment_code_is_active'] as bool? ?? false,
  enrollmentCode: json['enrollment_code_code'] as String?,
);

Map<String, dynamic> _$BlueprintToJson(_Blueprint instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'enrollment_code_is_active': instance.enrollmentCodeIsActive,
      'enrollment_code_code': instance.enrollmentCode,
    };
