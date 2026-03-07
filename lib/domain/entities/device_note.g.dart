// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_note.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DeviceNote _$DeviceNoteFromJson(Map<String, dynamic> json) => _DeviceNote(
  noteId: json['note_id'] as String,
  content: json['content'] as String,
  createdAt: json['created_at'] as String?,
  updatedAt: json['updated_at'] as String?,
  createdBy: json['created_by'] as String?,
);

Map<String, dynamic> _$DeviceNoteToJson(_DeviceNote instance) =>
    <String, dynamic>{
      'note_id': instance.noteId,
      'content': instance.content,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'created_by': instance.createdBy,
    };
