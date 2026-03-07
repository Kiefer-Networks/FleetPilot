import 'package:freezed_annotation/freezed_annotation.dart';

part 'tag.freezed.dart';

@Freezed(fromJson: false, toJson: false)
abstract class Tag with _$Tag {
  const factory Tag({
    required String tagId,
    required String name,
  }) = _Tag;

  factory Tag.fromJson(Map<String, dynamic> json) => Tag(
        tagId: (json['tag_id'] ?? json['id'] ?? '').toString(),
        name: (json['tag_name'] ?? json['name'] ?? '').toString(),
      );
}
