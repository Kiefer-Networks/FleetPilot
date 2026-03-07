// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'library_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LibraryItem _$LibraryItemFromJson(Map<String, dynamic> json) => _LibraryItem(
  id: json['id'] as String?,
  name: json['name'] as String?,
  type: json['type'] as String?,
  itemId: json['item_id'] as String?,
);

Map<String, dynamic> _$LibraryItemToJson(_LibraryItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'type': instance.type,
      'item_id': instance.itemId,
    };
