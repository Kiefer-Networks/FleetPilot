// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_filter_preset.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DeviceFilterPreset _$DeviceFilterPresetFromJson(Map<String, dynamic> json) =>
    _DeviceFilterPreset(
      id: json['id'] as String,
      name: json['name'] as String,
      searchQuery: json['searchQuery'] as String? ?? '',
      platform: json['platform'] as String?,
      supervised: json['supervised'] as bool?,
      lostMode: json['lostMode'] as bool? ?? false,
      sortAsc: json['sortAsc'] as bool? ?? true,
    );

Map<String, dynamic> _$DeviceFilterPresetToJson(_DeviceFilterPreset instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'searchQuery': instance.searchQuery,
      'platform': instance.platform,
      'supervised': instance.supervised,
      'lostMode': instance.lostMode,
      'sortAsc': instance.sortAsc,
    };
