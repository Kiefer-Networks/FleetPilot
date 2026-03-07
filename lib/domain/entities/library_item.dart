import 'package:freezed_annotation/freezed_annotation.dart';

part 'library_item.freezed.dart';
part 'library_item.g.dart';

/// A library item assigned to a blueprint.
@freezed
abstract class LibraryItem with _$LibraryItem {
  const factory LibraryItem({
    String? id,
    String? name,
    String? type,
    @JsonKey(name: 'item_id') String? itemId,
  }) = _LibraryItem;

  factory LibraryItem.fromJson(Map<String, dynamic> json) =>
      _$LibraryItemFromJson(json);
}
