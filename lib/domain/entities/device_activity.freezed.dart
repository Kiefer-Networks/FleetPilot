// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'device_activity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DeviceActivity {

 dynamic get id;@JsonKey(name: 'action_type') String? get actionType;@JsonKey(name: 'created_at') String? get createdAt;@JsonKey(fromJson: _detailsMapFromJson) Map<String, dynamic>? get details; dynamic get user;
/// Create a copy of DeviceActivity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeviceActivityCopyWith<DeviceActivity> get copyWith => _$DeviceActivityCopyWithImpl<DeviceActivity>(this as DeviceActivity, _$identity);

  /// Serializes this DeviceActivity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeviceActivity&&const DeepCollectionEquality().equals(other.id, id)&&(identical(other.actionType, actionType) || other.actionType == actionType)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&const DeepCollectionEquality().equals(other.details, details)&&const DeepCollectionEquality().equals(other.user, user));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(id),actionType,createdAt,const DeepCollectionEquality().hash(details),const DeepCollectionEquality().hash(user));

@override
String toString() {
  return 'DeviceActivity(id: $id, actionType: $actionType, createdAt: $createdAt, details: $details, user: $user)';
}


}

/// @nodoc
abstract mixin class $DeviceActivityCopyWith<$Res>  {
  factory $DeviceActivityCopyWith(DeviceActivity value, $Res Function(DeviceActivity) _then) = _$DeviceActivityCopyWithImpl;
@useResult
$Res call({
 dynamic id,@JsonKey(name: 'action_type') String? actionType,@JsonKey(name: 'created_at') String? createdAt,@JsonKey(fromJson: _detailsMapFromJson) Map<String, dynamic>? details, dynamic user
});




}
/// @nodoc
class _$DeviceActivityCopyWithImpl<$Res>
    implements $DeviceActivityCopyWith<$Res> {
  _$DeviceActivityCopyWithImpl(this._self, this._then);

  final DeviceActivity _self;
  final $Res Function(DeviceActivity) _then;

/// Create a copy of DeviceActivity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? actionType = freezed,Object? createdAt = freezed,Object? details = freezed,Object? user = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as dynamic,actionType: freezed == actionType ? _self.actionType : actionType // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,details: freezed == details ? _self.details : details // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

}


/// Adds pattern-matching-related methods to [DeviceActivity].
extension DeviceActivityPatterns on DeviceActivity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DeviceActivity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DeviceActivity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DeviceActivity value)  $default,){
final _that = this;
switch (_that) {
case _DeviceActivity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DeviceActivity value)?  $default,){
final _that = this;
switch (_that) {
case _DeviceActivity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( dynamic id, @JsonKey(name: 'action_type')  String? actionType, @JsonKey(name: 'created_at')  String? createdAt, @JsonKey(fromJson: _detailsMapFromJson)  Map<String, dynamic>? details,  dynamic user)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DeviceActivity() when $default != null:
return $default(_that.id,_that.actionType,_that.createdAt,_that.details,_that.user);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( dynamic id, @JsonKey(name: 'action_type')  String? actionType, @JsonKey(name: 'created_at')  String? createdAt, @JsonKey(fromJson: _detailsMapFromJson)  Map<String, dynamic>? details,  dynamic user)  $default,) {final _that = this;
switch (_that) {
case _DeviceActivity():
return $default(_that.id,_that.actionType,_that.createdAt,_that.details,_that.user);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( dynamic id, @JsonKey(name: 'action_type')  String? actionType, @JsonKey(name: 'created_at')  String? createdAt, @JsonKey(fromJson: _detailsMapFromJson)  Map<String, dynamic>? details,  dynamic user)?  $default,) {final _that = this;
switch (_that) {
case _DeviceActivity() when $default != null:
return $default(_that.id,_that.actionType,_that.createdAt,_that.details,_that.user);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DeviceActivity implements DeviceActivity {
  const _DeviceActivity({this.id, @JsonKey(name: 'action_type') this.actionType, @JsonKey(name: 'created_at') this.createdAt, @JsonKey(fromJson: _detailsMapFromJson) final  Map<String, dynamic>? details, this.user}): _details = details;
  factory _DeviceActivity.fromJson(Map<String, dynamic> json) => _$DeviceActivityFromJson(json);

@override final  dynamic id;
@override@JsonKey(name: 'action_type') final  String? actionType;
@override@JsonKey(name: 'created_at') final  String? createdAt;
 final  Map<String, dynamic>? _details;
@override@JsonKey(fromJson: _detailsMapFromJson) Map<String, dynamic>? get details {
  final value = _details;
  if (value == null) return null;
  if (_details is EqualUnmodifiableMapView) return _details;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

@override final  dynamic user;

/// Create a copy of DeviceActivity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeviceActivityCopyWith<_DeviceActivity> get copyWith => __$DeviceActivityCopyWithImpl<_DeviceActivity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DeviceActivityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeviceActivity&&const DeepCollectionEquality().equals(other.id, id)&&(identical(other.actionType, actionType) || other.actionType == actionType)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&const DeepCollectionEquality().equals(other._details, _details)&&const DeepCollectionEquality().equals(other.user, user));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(id),actionType,createdAt,const DeepCollectionEquality().hash(_details),const DeepCollectionEquality().hash(user));

@override
String toString() {
  return 'DeviceActivity(id: $id, actionType: $actionType, createdAt: $createdAt, details: $details, user: $user)';
}


}

/// @nodoc
abstract mixin class _$DeviceActivityCopyWith<$Res> implements $DeviceActivityCopyWith<$Res> {
  factory _$DeviceActivityCopyWith(_DeviceActivity value, $Res Function(_DeviceActivity) _then) = __$DeviceActivityCopyWithImpl;
@override @useResult
$Res call({
 dynamic id,@JsonKey(name: 'action_type') String? actionType,@JsonKey(name: 'created_at') String? createdAt,@JsonKey(fromJson: _detailsMapFromJson) Map<String, dynamic>? details, dynamic user
});




}
/// @nodoc
class __$DeviceActivityCopyWithImpl<$Res>
    implements _$DeviceActivityCopyWith<$Res> {
  __$DeviceActivityCopyWithImpl(this._self, this._then);

  final _DeviceActivity _self;
  final $Res Function(_DeviceActivity) _then;

/// Create a copy of DeviceActivity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? actionType = freezed,Object? createdAt = freezed,Object? details = freezed,Object? user = freezed,}) {
  return _then(_DeviceActivity(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as dynamic,actionType: freezed == actionType ? _self.actionType : actionType // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,details: freezed == details ? _self._details : details // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}

// dart format on
