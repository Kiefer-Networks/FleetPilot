// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'device_note.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DeviceNote {

@JsonKey(name: 'note_id') String get noteId; String get content;@JsonKey(name: 'created_at') String? get createdAt;@JsonKey(name: 'updated_at') String? get updatedAt;@JsonKey(name: 'created_by') String? get createdBy;
/// Create a copy of DeviceNote
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeviceNoteCopyWith<DeviceNote> get copyWith => _$DeviceNoteCopyWithImpl<DeviceNote>(this as DeviceNote, _$identity);

  /// Serializes this DeviceNote to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeviceNote&&(identical(other.noteId, noteId) || other.noteId == noteId)&&(identical(other.content, content) || other.content == content)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,noteId,content,createdAt,updatedAt,createdBy);

@override
String toString() {
  return 'DeviceNote(noteId: $noteId, content: $content, createdAt: $createdAt, updatedAt: $updatedAt, createdBy: $createdBy)';
}


}

/// @nodoc
abstract mixin class $DeviceNoteCopyWith<$Res>  {
  factory $DeviceNoteCopyWith(DeviceNote value, $Res Function(DeviceNote) _then) = _$DeviceNoteCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'note_id') String noteId, String content,@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'updated_at') String? updatedAt,@JsonKey(name: 'created_by') String? createdBy
});




}
/// @nodoc
class _$DeviceNoteCopyWithImpl<$Res>
    implements $DeviceNoteCopyWith<$Res> {
  _$DeviceNoteCopyWithImpl(this._self, this._then);

  final DeviceNote _self;
  final $Res Function(DeviceNote) _then;

/// Create a copy of DeviceNote
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? noteId = null,Object? content = null,Object? createdAt = freezed,Object? updatedAt = freezed,Object? createdBy = freezed,}) {
  return _then(_self.copyWith(
noteId: null == noteId ? _self.noteId : noteId // ignore: cast_nullable_to_non_nullable
as String,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,createdBy: freezed == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [DeviceNote].
extension DeviceNotePatterns on DeviceNote {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DeviceNote value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DeviceNote() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DeviceNote value)  $default,){
final _that = this;
switch (_that) {
case _DeviceNote():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DeviceNote value)?  $default,){
final _that = this;
switch (_that) {
case _DeviceNote() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'note_id')  String noteId,  String content, @JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt, @JsonKey(name: 'created_by')  String? createdBy)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DeviceNote() when $default != null:
return $default(_that.noteId,_that.content,_that.createdAt,_that.updatedAt,_that.createdBy);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'note_id')  String noteId,  String content, @JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt, @JsonKey(name: 'created_by')  String? createdBy)  $default,) {final _that = this;
switch (_that) {
case _DeviceNote():
return $default(_that.noteId,_that.content,_that.createdAt,_that.updatedAt,_that.createdBy);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'note_id')  String noteId,  String content, @JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt, @JsonKey(name: 'created_by')  String? createdBy)?  $default,) {final _that = this;
switch (_that) {
case _DeviceNote() when $default != null:
return $default(_that.noteId,_that.content,_that.createdAt,_that.updatedAt,_that.createdBy);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DeviceNote implements DeviceNote {
  const _DeviceNote({@JsonKey(name: 'note_id') required this.noteId, required this.content, @JsonKey(name: 'created_at') this.createdAt, @JsonKey(name: 'updated_at') this.updatedAt, @JsonKey(name: 'created_by') this.createdBy});
  factory _DeviceNote.fromJson(Map<String, dynamic> json) => _$DeviceNoteFromJson(json);

@override@JsonKey(name: 'note_id') final  String noteId;
@override final  String content;
@override@JsonKey(name: 'created_at') final  String? createdAt;
@override@JsonKey(name: 'updated_at') final  String? updatedAt;
@override@JsonKey(name: 'created_by') final  String? createdBy;

/// Create a copy of DeviceNote
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeviceNoteCopyWith<_DeviceNote> get copyWith => __$DeviceNoteCopyWithImpl<_DeviceNote>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DeviceNoteToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeviceNote&&(identical(other.noteId, noteId) || other.noteId == noteId)&&(identical(other.content, content) || other.content == content)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,noteId,content,createdAt,updatedAt,createdBy);

@override
String toString() {
  return 'DeviceNote(noteId: $noteId, content: $content, createdAt: $createdAt, updatedAt: $updatedAt, createdBy: $createdBy)';
}


}

/// @nodoc
abstract mixin class _$DeviceNoteCopyWith<$Res> implements $DeviceNoteCopyWith<$Res> {
  factory _$DeviceNoteCopyWith(_DeviceNote value, $Res Function(_DeviceNote) _then) = __$DeviceNoteCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'note_id') String noteId, String content,@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'updated_at') String? updatedAt,@JsonKey(name: 'created_by') String? createdBy
});




}
/// @nodoc
class __$DeviceNoteCopyWithImpl<$Res>
    implements _$DeviceNoteCopyWith<$Res> {
  __$DeviceNoteCopyWithImpl(this._self, this._then);

  final _DeviceNote _self;
  final $Res Function(_DeviceNote) _then;

/// Create a copy of DeviceNote
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? noteId = null,Object? content = null,Object? createdAt = freezed,Object? updatedAt = freezed,Object? createdBy = freezed,}) {
  return _then(_DeviceNote(
noteId: null == noteId ? _self.noteId : noteId // ignore: cast_nullable_to_non_nullable
as String,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,createdBy: freezed == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
