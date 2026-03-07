// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DeviceStatus _$DeviceStatusFromJson(Map<String, dynamic> json) =>
    _DeviceStatus(
      deviceId: json['device_id'] as String?,
      libraryItems:
          (json['library_items'] as List<dynamic>?)
              ?.map((e) => StatusItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      parameters:
          (json['parameters'] as List<dynamic>?)
              ?.map((e) => StatusItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$DeviceStatusToJson(_DeviceStatus instance) =>
    <String, dynamic>{
      'device_id': instance.deviceId,
      'library_items': instance.libraryItems,
      'parameters': instance.parameters,
    };

_StatusItem _$StatusItemFromJson(Map<String, dynamic> json) => _StatusItem(
  name: json['name'] as String?,
  status: json['status'] as String?,
  type: json['type'] as String?,
  category: json['category'] as String?,
  subcategory: json['subcategory'] as String?,
  itemId: json['item_id'] as String?,
  reportedAt: json['reported_at'] as String?,
);

Map<String, dynamic> _$StatusItemToJson(_StatusItem instance) =>
    <String, dynamic>{
      'name': instance.name,
      'status': instance.status,
      'type': instance.type,
      'category': instance.category,
      'subcategory': instance.subcategory,
      'item_id': instance.itemId,
      'reported_at': instance.reportedAt,
    };
