// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'blueprint_template.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BlueprintTemplate {

 String? get id; String? get name; String? get description; String? get icon;@JsonKey(name: 'created_at') String? get createdAt;
/// Create a copy of BlueprintTemplate
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BlueprintTemplateCopyWith<BlueprintTemplate> get copyWith => _$BlueprintTemplateCopyWithImpl<BlueprintTemplate>(this as BlueprintTemplate, _$identity);

  /// Serializes this BlueprintTemplate to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BlueprintTemplate&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,description,icon,createdAt);

@override
String toString() {
  return 'BlueprintTemplate(id: $id, name: $name, description: $description, icon: $icon, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $BlueprintTemplateCopyWith<$Res>  {
  factory $BlueprintTemplateCopyWith(BlueprintTemplate value, $Res Function(BlueprintTemplate) _then) = _$BlueprintTemplateCopyWithImpl;
@useResult
$Res call({
 String? id, String? name, String? description, String? icon,@JsonKey(name: 'created_at') String? createdAt
});




}
/// @nodoc
class _$BlueprintTemplateCopyWithImpl<$Res>
    implements $BlueprintTemplateCopyWith<$Res> {
  _$BlueprintTemplateCopyWithImpl(this._self, this._then);

  final BlueprintTemplate _self;
  final $Res Function(BlueprintTemplate) _then;

/// Create a copy of BlueprintTemplate
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? description = freezed,Object? icon = freezed,Object? createdAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,icon: freezed == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [BlueprintTemplate].
extension BlueprintTemplatePatterns on BlueprintTemplate {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BlueprintTemplate value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BlueprintTemplate() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BlueprintTemplate value)  $default,){
final _that = this;
switch (_that) {
case _BlueprintTemplate():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BlueprintTemplate value)?  $default,){
final _that = this;
switch (_that) {
case _BlueprintTemplate() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String? name,  String? description,  String? icon, @JsonKey(name: 'created_at')  String? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BlueprintTemplate() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.icon,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String? name,  String? description,  String? icon, @JsonKey(name: 'created_at')  String? createdAt)  $default,) {final _that = this;
switch (_that) {
case _BlueprintTemplate():
return $default(_that.id,_that.name,_that.description,_that.icon,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String? name,  String? description,  String? icon, @JsonKey(name: 'created_at')  String? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _BlueprintTemplate() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.icon,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BlueprintTemplate implements BlueprintTemplate {
  const _BlueprintTemplate({this.id, this.name, this.description, this.icon, @JsonKey(name: 'created_at') this.createdAt});
  factory _BlueprintTemplate.fromJson(Map<String, dynamic> json) => _$BlueprintTemplateFromJson(json);

@override final  String? id;
@override final  String? name;
@override final  String? description;
@override final  String? icon;
@override@JsonKey(name: 'created_at') final  String? createdAt;

/// Create a copy of BlueprintTemplate
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BlueprintTemplateCopyWith<_BlueprintTemplate> get copyWith => __$BlueprintTemplateCopyWithImpl<_BlueprintTemplate>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BlueprintTemplateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BlueprintTemplate&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,description,icon,createdAt);

@override
String toString() {
  return 'BlueprintTemplate(id: $id, name: $name, description: $description, icon: $icon, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$BlueprintTemplateCopyWith<$Res> implements $BlueprintTemplateCopyWith<$Res> {
  factory _$BlueprintTemplateCopyWith(_BlueprintTemplate value, $Res Function(_BlueprintTemplate) _then) = __$BlueprintTemplateCopyWithImpl;
@override @useResult
$Res call({
 String? id, String? name, String? description, String? icon,@JsonKey(name: 'created_at') String? createdAt
});




}
/// @nodoc
class __$BlueprintTemplateCopyWithImpl<$Res>
    implements _$BlueprintTemplateCopyWith<$Res> {
  __$BlueprintTemplateCopyWithImpl(this._self, this._then);

  final _BlueprintTemplate _self;
  final $Res Function(_BlueprintTemplate) _then;

/// Create a copy of BlueprintTemplate
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? description = freezed,Object? icon = freezed,Object? createdAt = freezed,}) {
  return _then(_BlueprintTemplate(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,icon: freezed == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
