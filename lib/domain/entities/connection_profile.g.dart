// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'connection_profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ConnectionProfile _$ConnectionProfileFromJson(Map<String, dynamic> json) =>
    _ConnectionProfile(
      id: json['id'] as String,
      displayName: json['displayName'] as String,
      subdomain: json['subdomain'] as String,
      region: $enumDecode(_$ApiRegionEnumMap, json['region']),
    );

Map<String, dynamic> _$ConnectionProfileToJson(_ConnectionProfile instance) =>
    <String, dynamic>{
      'id': instance.id,
      'displayName': instance.displayName,
      'subdomain': instance.subdomain,
      'region': _$ApiRegionEnumMap[instance.region]!,
    };

const _$ApiRegionEnumMap = {ApiRegion.us: 'us', ApiRegion.eu: 'eu'};
