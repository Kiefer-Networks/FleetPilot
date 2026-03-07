// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ade_integration.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AdeIntegration _$AdeIntegrationFromJson(Map<String, dynamic> json) =>
    _AdeIntegration(
      id: json['id'] as String?,
      name: json['name'] as String?,
      serverName: json['server_name'] as String?,
      serverUuid: json['server_uuid'] as String?,
      orgName: json['org_name'] as String?,
      orgEmail: json['org_email'] as String?,
      orgPhone: json['org_phone'] as String?,
      orgAddress: json['org_address'] as String?,
      tokenExpiryDate: json['token_expiry_date'] as String?,
      defaultBlueprintId: json['default_blueprint_id'] as String?,
      deviceCount: (json['device_count'] as num?)?.toInt(),
      isTokenValid: json['is_token_valid'] as bool? ?? true,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$AdeIntegrationToJson(_AdeIntegration instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'server_name': instance.serverName,
      'server_uuid': instance.serverUuid,
      'org_name': instance.orgName,
      'org_email': instance.orgEmail,
      'org_phone': instance.orgPhone,
      'org_address': instance.orgAddress,
      'token_expiry_date': instance.tokenExpiryDate,
      'default_blueprint_id': instance.defaultBlueprintId,
      'device_count': instance.deviceCount,
      'is_token_valid': instance.isTokenValid,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
