// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'blueprint.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Blueprint {

 String get id; String get name; String? get description;@JsonKey(name: 'enrollment_code_is_active') bool get enrollmentCodeIsActive;@JsonKey(name: 'enrollment_code_code') String? get enrollmentCode;
/// Create a copy of Blueprint
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BlueprintCopyWith<Blueprint> get copyWith => _$BlueprintCopyWithImpl<Blueprint>(this as Blueprint, _$identity);

  /// Serializes this Blueprint to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Blueprint&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.enrollmentCodeIsActive, enrollmentCodeIsActive) || other.enrollmentCodeIsActive == enrollmentCodeIsActive)&&(identical(other.enrollmentCode, enrollmentCode) || other.enrollmentCode == enrollmentCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,description,enrollmentCodeIsActive,enrollmentCode);

@override
String toString() {
  return 'Blueprint(id: $id, name: $name, description: $description, enrollmentCodeIsActive: $enrollmentCodeIsActive, enrollmentCode: $enrollmentCode)';
}


}

/// @nodoc
abstract mixin class $BlueprintCopyWith<$Res>  {
  factory $BlueprintCopyWith(Blueprint value, $Res Function(Blueprint) _then) = _$BlueprintCopyWithImpl;
@useResult
$Res call({
 String id, String name, String? description,@JsonKey(name: 'enrollment_code_is_active') bool enrollmentCodeIsActive,@JsonKey(name: 'enrollment_code_code') String? enrollmentCode
});




}
/// @nodoc
class _$BlueprintCopyWithImpl<$Res>
    implements $BlueprintCopyWith<$Res> {
  _$BlueprintCopyWithImpl(this._self, this._then);

  final Blueprint _self;
  final $Res Function(Blueprint) _then;

/// Create a copy of Blueprint
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? description = freezed,Object? enrollmentCodeIsActive = null,Object? enrollmentCode = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,enrollmentCodeIsActive: null == enrollmentCodeIsActive ? _self.enrollmentCodeIsActive : enrollmentCodeIsActive // ignore: cast_nullable_to_non_nullable
as bool,enrollmentCode: freezed == enrollmentCode ? _self.enrollmentCode : enrollmentCode // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Blueprint].
extension BlueprintPatterns on Blueprint {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Blueprint value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Blueprint() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Blueprint value)  $default,){
final _that = this;
switch (_that) {
case _Blueprint():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Blueprint value)?  $default,){
final _that = this;
switch (_that) {
case _Blueprint() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String? description, @JsonKey(name: 'enrollment_code_is_active')  bool enrollmentCodeIsActive, @JsonKey(name: 'enrollment_code_code')  String? enrollmentCode)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Blueprint() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.enrollmentCodeIsActive,_that.enrollmentCode);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String? description, @JsonKey(name: 'enrollment_code_is_active')  bool enrollmentCodeIsActive, @JsonKey(name: 'enrollment_code_code')  String? enrollmentCode)  $default,) {final _that = this;
switch (_that) {
case _Blueprint():
return $default(_that.id,_that.name,_that.description,_that.enrollmentCodeIsActive,_that.enrollmentCode);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String? description, @JsonKey(name: 'enrollment_code_is_active')  bool enrollmentCodeIsActive, @JsonKey(name: 'enrollment_code_code')  String? enrollmentCode)?  $default,) {final _that = this;
switch (_that) {
case _Blueprint() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.enrollmentCodeIsActive,_that.enrollmentCode);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Blueprint implements Blueprint {
  const _Blueprint({required this.id, required this.name, this.description, @JsonKey(name: 'enrollment_code_is_active') this.enrollmentCodeIsActive = false, @JsonKey(name: 'enrollment_code_code') this.enrollmentCode});
  factory _Blueprint.fromJson(Map<String, dynamic> json) => _$BlueprintFromJson(json);

@override final  String id;
@override final  String name;
@override final  String? description;
@override@JsonKey(name: 'enrollment_code_is_active') final  bool enrollmentCodeIsActive;
@override@JsonKey(name: 'enrollment_code_code') final  String? enrollmentCode;

/// Create a copy of Blueprint
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BlueprintCopyWith<_Blueprint> get copyWith => __$BlueprintCopyWithImpl<_Blueprint>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BlueprintToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Blueprint&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.enrollmentCodeIsActive, enrollmentCodeIsActive) || other.enrollmentCodeIsActive == enrollmentCodeIsActive)&&(identical(other.enrollmentCode, enrollmentCode) || other.enrollmentCode == enrollmentCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,description,enrollmentCodeIsActive,enrollmentCode);

@override
String toString() {
  return 'Blueprint(id: $id, name: $name, description: $description, enrollmentCodeIsActive: $enrollmentCodeIsActive, enrollmentCode: $enrollmentCode)';
}


}

/// @nodoc
abstract mixin class _$BlueprintCopyWith<$Res> implements $BlueprintCopyWith<$Res> {
  factory _$BlueprintCopyWith(_Blueprint value, $Res Function(_Blueprint) _then) = __$BlueprintCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String? description,@JsonKey(name: 'enrollment_code_is_active') bool enrollmentCodeIsActive,@JsonKey(name: 'enrollment_code_code') String? enrollmentCode
});




}
/// @nodoc
class __$BlueprintCopyWithImpl<$Res>
    implements _$BlueprintCopyWith<$Res> {
  __$BlueprintCopyWithImpl(this._self, this._then);

  final _Blueprint _self;
  final $Res Function(_Blueprint) _then;

/// Create a copy of Blueprint
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? description = freezed,Object? enrollmentCodeIsActive = null,Object? enrollmentCode = freezed,}) {
  return _then(_Blueprint(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,enrollmentCodeIsActive: null == enrollmentCodeIsActive ? _self.enrollmentCodeIsActive : enrollmentCodeIsActive // ignore: cast_nullable_to_non_nullable
as bool,enrollmentCode: freezed == enrollmentCode ? _self.enrollmentCode : enrollmentCode // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
