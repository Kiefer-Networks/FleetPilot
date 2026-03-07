import 'package:freezed_annotation/freezed_annotation.dart';

part 'device_note.freezed.dart';
part 'device_note.g.dart';

@freezed
abstract class DeviceNote with _$DeviceNote {
  const factory DeviceNote({
    @JsonKey(name: 'note_id') required String noteId,
    required String content,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    @JsonKey(name: 'created_by') String? createdBy,
  }) = _DeviceNote;

  factory DeviceNote.fromJson(Map<String, dynamic> json) =>
      _$DeviceNoteFromJson(json);
}
