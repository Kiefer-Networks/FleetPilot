// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mdm_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MdmUser {

 String get id; String? get name; String? get email;@JsonKey(name: 'job_title') String? get jobTitle; String? get department;@JsonKey(name: 'device_count') int get deviceCount; bool get archived;@JsonKey(name: 'created_at') String? get createdAt;@JsonKey(name: 'updated_at') String? get updatedAt;
/// Create a copy of MdmUser
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MdmUserCopyWith<MdmUser> get copyWith => _$MdmUserCopyWithImpl<MdmUser>(this as MdmUser, _$identity);

  /// Serializes this MdmUser to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MdmUser&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.jobTitle, jobTitle) || other.jobTitle == jobTitle)&&(identical(other.department, department) || other.department == department)&&(identical(other.deviceCount, deviceCount) || other.deviceCount == deviceCount)&&(identical(other.archived, archived) || other.archived == archived)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,email,jobTitle,department,deviceCount,archived,createdAt,updatedAt);

@override
String toString() {
  return 'MdmUser(id: $id, name: $name, email: $email, jobTitle: $jobTitle, department: $department, deviceCount: $deviceCount, archived: $archived, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $MdmUserCopyWith<$Res>  {
  factory $MdmUserCopyWith(MdmUser value, $Res Function(MdmUser) _then) = _$MdmUserCopyWithImpl;
@useResult
$Res call({
 String id, String? name, String? email,@JsonKey(name: 'job_title') String? jobTitle, String? department,@JsonKey(name: 'device_count') int deviceCount, bool archived,@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'updated_at') String? updatedAt
});




}
/// @nodoc
class _$MdmUserCopyWithImpl<$Res>
    implements $MdmUserCopyWith<$Res> {
  _$MdmUserCopyWithImpl(this._self, this._then);

  final MdmUser _self;
  final $Res Function(MdmUser) _then;

/// Create a copy of MdmUser
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = freezed,Object? email = freezed,Object? jobTitle = freezed,Object? department = freezed,Object? deviceCount = null,Object? archived = null,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,jobTitle: freezed == jobTitle ? _self.jobTitle : jobTitle // ignore: cast_nullable_to_non_nullable
as String?,department: freezed == department ? _self.department : department // ignore: cast_nullable_to_non_nullable
as String?,deviceCount: null == deviceCount ? _self.deviceCount : deviceCount // ignore: cast_nullable_to_non_nullable
as int,archived: null == archived ? _self.archived : archived // ignore: cast_nullable_to_non_nullable
as bool,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [MdmUser].
extension MdmUserPatterns on MdmUser {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MdmUser value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MdmUser() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MdmUser value)  $default,){
final _that = this;
switch (_that) {
case _MdmUser():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MdmUser value)?  $default,){
final _that = this;
switch (_that) {
case _MdmUser() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String? name,  String? email, @JsonKey(name: 'job_title')  String? jobTitle,  String? department, @JsonKey(name: 'device_count')  int deviceCount,  bool archived, @JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MdmUser() when $default != null:
return $default(_that.id,_that.name,_that.email,_that.jobTitle,_that.department,_that.deviceCount,_that.archived,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String? name,  String? email, @JsonKey(name: 'job_title')  String? jobTitle,  String? department, @JsonKey(name: 'device_count')  int deviceCount,  bool archived, @JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _MdmUser():
return $default(_that.id,_that.name,_that.email,_that.jobTitle,_that.department,_that.deviceCount,_that.archived,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String? name,  String? email, @JsonKey(name: 'job_title')  String? jobTitle,  String? department, @JsonKey(name: 'device_count')  int deviceCount,  bool archived, @JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _MdmUser() when $default != null:
return $default(_that.id,_that.name,_that.email,_that.jobTitle,_that.department,_that.deviceCount,_that.archived,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MdmUser implements MdmUser {
  const _MdmUser({required this.id, this.name, this.email, @JsonKey(name: 'job_title') this.jobTitle, this.department, @JsonKey(name: 'device_count') this.deviceCount = 0, this.archived = false, @JsonKey(name: 'created_at') this.createdAt, @JsonKey(name: 'updated_at') this.updatedAt});
  factory _MdmUser.fromJson(Map<String, dynamic> json) => _$MdmUserFromJson(json);

@override final  String id;
@override final  String? name;
@override final  String? email;
@override@JsonKey(name: 'job_title') final  String? jobTitle;
@override final  String? department;
@override@JsonKey(name: 'device_count') final  int deviceCount;
@override@JsonKey() final  bool archived;
@override@JsonKey(name: 'created_at') final  String? createdAt;
@override@JsonKey(name: 'updated_at') final  String? updatedAt;

/// Create a copy of MdmUser
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MdmUserCopyWith<_MdmUser> get copyWith => __$MdmUserCopyWithImpl<_MdmUser>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MdmUserToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MdmUser&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.jobTitle, jobTitle) || other.jobTitle == jobTitle)&&(identical(other.department, department) || other.department == department)&&(identical(other.deviceCount, deviceCount) || other.deviceCount == deviceCount)&&(identical(other.archived, archived) || other.archived == archived)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,email,jobTitle,department,deviceCount,archived,createdAt,updatedAt);

@override
String toString() {
  return 'MdmUser(id: $id, name: $name, email: $email, jobTitle: $jobTitle, department: $department, deviceCount: $deviceCount, archived: $archived, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$MdmUserCopyWith<$Res> implements $MdmUserCopyWith<$Res> {
  factory _$MdmUserCopyWith(_MdmUser value, $Res Function(_MdmUser) _then) = __$MdmUserCopyWithImpl;
@override @useResult
$Res call({
 String id, String? name, String? email,@JsonKey(name: 'job_title') String? jobTitle, String? department,@JsonKey(name: 'device_count') int deviceCount, bool archived,@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'updated_at') String? updatedAt
});




}
/// @nodoc
class __$MdmUserCopyWithImpl<$Res>
    implements _$MdmUserCopyWith<$Res> {
  __$MdmUserCopyWithImpl(this._self, this._then);

  final _MdmUser _self;
  final $Res Function(_MdmUser) _then;

/// Create a copy of MdmUser
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = freezed,Object? email = freezed,Object? jobTitle = freezed,Object? department = freezed,Object? deviceCount = null,Object? archived = null,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_MdmUser(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,jobTitle: freezed == jobTitle ? _self.jobTitle : jobTitle // ignore: cast_nullable_to_non_nullable
as String?,department: freezed == department ? _self.department : department // ignore: cast_nullable_to_non_nullable
as String?,deviceCount: null == deviceCount ? _self.deviceCount : deviceCount // ignore: cast_nullable_to_non_nullable
as int,archived: null == archived ? _self.archived : archived // ignore: cast_nullable_to_non_nullable
as bool,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
