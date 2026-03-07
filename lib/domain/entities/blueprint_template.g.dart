// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blueprint_template.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BlueprintTemplate _$BlueprintTemplateFromJson(Map<String, dynamic> json) =>
    _BlueprintTemplate(
      id: json['id'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      icon: json['icon'] as String?,
      createdAt: json['created_at'] as String?,
    );

Map<String, dynamic> _$BlueprintTemplateToJson(_BlueprintTemplate instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'icon': instance.icon,
      'created_at': instance.createdAt,
    };
