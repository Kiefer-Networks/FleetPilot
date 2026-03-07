// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ade_device.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AdeDevice {

@JsonKey(name: 'serial_number') String? get serialNumber; String? get model; String? get description; String? get color;@JsonKey(name: 'device_family') String? get deviceFamily;@JsonKey(name: 'os') String? get os;@JsonKey(name: 'profile_status') String? get profileStatus;@JsonKey(name: 'profile_assign_time') String? get profileAssignTime;@JsonKey(name: 'profile_push_time') String? get profilePushTime;@JsonKey(name: 'device_assigned_date') String? get deviceAssignedDate;@JsonKey(name: 'device_assigned_by') String? get deviceAssignedBy;
/// Create a copy of AdeDevice
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdeDeviceCopyWith<AdeDevice> get copyWith => _$AdeDeviceCopyWithImpl<AdeDevice>(this as AdeDevice, _$identity);

  /// Serializes this AdeDevice to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdeDevice&&(identical(other.serialNumber, serialNumber) || other.serialNumber == serialNumber)&&(identical(other.model, model) || other.model == model)&&(identical(other.description, description) || other.description == description)&&(identical(other.color, color) || other.color == color)&&(identical(other.deviceFamily, deviceFamily) || other.deviceFamily == deviceFamily)&&(identical(other.os, os) || other.os == os)&&(identical(other.profileStatus, profileStatus) || other.profileStatus == profileStatus)&&(identical(other.profileAssignTime, profileAssignTime) || other.profileAssignTime == profileAssignTime)&&(identical(other.profilePushTime, profilePushTime) || other.profilePushTime == profilePushTime)&&(identical(other.deviceAssignedDate, deviceAssignedDate) || other.deviceAssignedDate == deviceAssignedDate)&&(identical(other.deviceAssignedBy, deviceAssignedBy) || other.deviceAssignedBy == deviceAssignedBy));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,serialNumber,model,description,color,deviceFamily,os,profileStatus,profileAssignTime,profilePushTime,deviceAssignedDate,deviceAssignedBy);

@override
String toString() {
  return 'AdeDevice(serialNumber: $serialNumber, model: $model, description: $description, color: $color, deviceFamily: $deviceFamily, os: $os, profileStatus: $profileStatus, profileAssignTime: $profileAssignTime, profilePushTime: $profilePushTime, deviceAssignedDate: $deviceAssignedDate, deviceAssignedBy: $deviceAssignedBy)';
}


}

/// @nodoc
abstract mixin class $AdeDeviceCopyWith<$Res>  {
  factory $AdeDeviceCopyWith(AdeDevice value, $Res Function(AdeDevice) _then) = _$AdeDeviceCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'serial_number') String? serialNumber, String? model, String? description, String? color,@JsonKey(name: 'device_family') String? deviceFamily,@JsonKey(name: 'os') String? os,@JsonKey(name: 'profile_status') String? profileStatus,@JsonKey(name: 'profile_assign_time') String? profileAssignTime,@JsonKey(name: 'profile_push_time') String? profilePushTime,@JsonKey(name: 'device_assigned_date') String? deviceAssignedDate,@JsonKey(name: 'device_assigned_by') String? deviceAssignedBy
});




}
/// @nodoc
class _$AdeDeviceCopyWithImpl<$Res>
    implements $AdeDeviceCopyWith<$Res> {
  _$AdeDeviceCopyWithImpl(this._self, this._then);

  final AdeDevice _self;
  final $Res Function(AdeDevice) _then;

/// Create a copy of AdeDevice
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? serialNumber = freezed,Object? model = freezed,Object? description = freezed,Object? color = freezed,Object? deviceFamily = freezed,Object? os = freezed,Object? profileStatus = freezed,Object? profileAssignTime = freezed,Object? profilePushTime = freezed,Object? deviceAssignedDate = freezed,Object? deviceAssignedBy = freezed,}) {
  return _then(_self.copyWith(
serialNumber: freezed == serialNumber ? _self.serialNumber : serialNumber // ignore: cast_nullable_to_non_nullable
as String?,model: freezed == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,color: freezed == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as String?,deviceFamily: freezed == deviceFamily ? _self.deviceFamily : deviceFamily // ignore: cast_nullable_to_non_nullable
as String?,os: freezed == os ? _self.os : os // ignore: cast_nullable_to_non_nullable
as String?,profileStatus: freezed == profileStatus ? _self.profileStatus : profileStatus // ignore: cast_nullable_to_non_nullable
as String?,profileAssignTime: freezed == profileAssignTime ? _self.profileAssignTime : profileAssignTime // ignore: cast_nullable_to_non_nullable
as String?,profilePushTime: freezed == profilePushTime ? _self.profilePushTime : profilePushTime // ignore: cast_nullable_to_non_nullable
as String?,deviceAssignedDate: freezed == deviceAssignedDate ? _self.deviceAssignedDate : deviceAssignedDate // ignore: cast_nullable_to_non_nullable
as String?,deviceAssignedBy: freezed == deviceAssignedBy ? _self.deviceAssignedBy : deviceAssignedBy // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AdeDevice].
extension AdeDevicePatterns on AdeDevice {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdeDevice value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdeDevice() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdeDevice value)  $default,){
final _that = this;
switch (_that) {
case _AdeDevice():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdeDevice value)?  $default,){
final _that = this;
switch (_that) {
case _AdeDevice() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'serial_number')  String? serialNumber,  String? model,  String? description,  String? color, @JsonKey(name: 'device_family')  String? deviceFamily, @JsonKey(name: 'os')  String? os, @JsonKey(name: 'profile_status')  String? profileStatus, @JsonKey(name: 'profile_assign_time')  String? profileAssignTime, @JsonKey(name: 'profile_push_time')  String? profilePushTime, @JsonKey(name: 'device_assigned_date')  String? deviceAssignedDate, @JsonKey(name: 'device_assigned_by')  String? deviceAssignedBy)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdeDevice() when $default != null:
return $default(_that.serialNumber,_that.model,_that.description,_that.color,_that.deviceFamily,_that.os,_that.profileStatus,_that.profileAssignTime,_that.profilePushTime,_that.deviceAssignedDate,_that.deviceAssignedBy);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'serial_number')  String? serialNumber,  String? model,  String? description,  String? color, @JsonKey(name: 'device_family')  String? deviceFamily, @JsonKey(name: 'os')  String? os, @JsonKey(name: 'profile_status')  String? profileStatus, @JsonKey(name: 'profile_assign_time')  String? profileAssignTime, @JsonKey(name: 'profile_push_time')  String? profilePushTime, @JsonKey(name: 'device_assigned_date')  String? deviceAssignedDate, @JsonKey(name: 'device_assigned_by')  String? deviceAssignedBy)  $default,) {final _that = this;
switch (_that) {
case _AdeDevice():
return $default(_that.serialNumber,_that.model,_that.description,_that.color,_that.deviceFamily,_that.os,_that.profileStatus,_that.profileAssignTime,_that.profilePushTime,_that.deviceAssignedDate,_that.deviceAssignedBy);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'serial_number')  String? serialNumber,  String? model,  String? description,  String? color, @JsonKey(name: 'device_family')  String? deviceFamily, @JsonKey(name: 'os')  String? os, @JsonKey(name: 'profile_status')  String? profileStatus, @JsonKey(name: 'profile_assign_time')  String? profileAssignTime, @JsonKey(name: 'profile_push_time')  String? profilePushTime, @JsonKey(name: 'device_assigned_date')  String? deviceAssignedDate, @JsonKey(name: 'device_assigned_by')  String? deviceAssignedBy)?  $default,) {final _that = this;
switch (_that) {
case _AdeDevice() when $default != null:
return $default(_that.serialNumber,_that.model,_that.description,_that.color,_that.deviceFamily,_that.os,_that.profileStatus,_that.profileAssignTime,_that.profilePushTime,_that.deviceAssignedDate,_that.deviceAssignedBy);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AdeDevice implements AdeDevice {
  const _AdeDevice({@JsonKey(name: 'serial_number') this.serialNumber, this.model, this.description, this.color, @JsonKey(name: 'device_family') this.deviceFamily, @JsonKey(name: 'os') this.os, @JsonKey(name: 'profile_status') this.profileStatus, @JsonKey(name: 'profile_assign_time') this.profileAssignTime, @JsonKey(name: 'profile_push_time') this.profilePushTime, @JsonKey(name: 'device_assigned_date') this.deviceAssignedDate, @JsonKey(name: 'device_assigned_by') this.deviceAssignedBy});
  factory _AdeDevice.fromJson(Map<String, dynamic> json) => _$AdeDeviceFromJson(json);

@override@JsonKey(name: 'serial_number') final  String? serialNumber;
@override final  String? model;
@override final  String? description;
@override final  String? color;
@override@JsonKey(name: 'device_family') final  String? deviceFamily;
@override@JsonKey(name: 'os') final  String? os;
@override@JsonKey(name: 'profile_status') final  String? profileStatus;
@override@JsonKey(name: 'profile_assign_time') final  String? profileAssignTime;
@override@JsonKey(name: 'profile_push_time') final  String? profilePushTime;
@override@JsonKey(name: 'device_assigned_date') final  String? deviceAssignedDate;
@override@JsonKey(name: 'device_assigned_by') final  String? deviceAssignedBy;

/// Create a copy of AdeDevice
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdeDeviceCopyWith<_AdeDevice> get copyWith => __$AdeDeviceCopyWithImpl<_AdeDevice>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AdeDeviceToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdeDevice&&(identical(other.serialNumber, serialNumber) || other.serialNumber == serialNumber)&&(identical(other.model, model) || other.model == model)&&(identical(other.description, description) || other.description == description)&&(identical(other.color, color) || other.color == color)&&(identical(other.deviceFamily, deviceFamily) || other.deviceFamily == deviceFamily)&&(identical(other.os, os) || other.os == os)&&(identical(other.profileStatus, profileStatus) || other.profileStatus == profileStatus)&&(identical(other.profileAssignTime, profileAssignTime) || other.profileAssignTime == profileAssignTime)&&(identical(other.profilePushTime, profilePushTime) || other.profilePushTime == profilePushTime)&&(identical(other.deviceAssignedDate, deviceAssignedDate) || other.deviceAssignedDate == deviceAssignedDate)&&(identical(other.deviceAssignedBy, deviceAssignedBy) || other.deviceAssignedBy == deviceAssignedBy));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,serialNumber,model,description,color,deviceFamily,os,profileStatus,profileAssignTime,profilePushTime,deviceAssignedDate,deviceAssignedBy);

@override
String toString() {
  return 'AdeDevice(serialNumber: $serialNumber, model: $model, description: $description, color: $color, deviceFamily: $deviceFamily, os: $os, profileStatus: $profileStatus, profileAssignTime: $profileAssignTime, profilePushTime: $profilePushTime, deviceAssignedDate: $deviceAssignedDate, deviceAssignedBy: $deviceAssignedBy)';
}


}

/// @nodoc
abstract mixin class _$AdeDeviceCopyWith<$Res> implements $AdeDeviceCopyWith<$Res> {
  factory _$AdeDeviceCopyWith(_AdeDevice value, $Res Function(_AdeDevice) _then) = __$AdeDeviceCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'serial_number') String? serialNumber, String? model, String? description, String? color,@JsonKey(name: 'device_family') String? deviceFamily,@JsonKey(name: 'os') String? os,@JsonKey(name: 'profile_status') String? profileStatus,@JsonKey(name: 'profile_assign_time') String? profileAssignTime,@JsonKey(name: 'profile_push_time') String? profilePushTime,@JsonKey(name: 'device_assigned_date') String? deviceAssignedDate,@JsonKey(name: 'device_assigned_by') String? deviceAssignedBy
});




}
/// @nodoc
class __$AdeDeviceCopyWithImpl<$Res>
    implements _$AdeDeviceCopyWith<$Res> {
  __$AdeDeviceCopyWithImpl(this._self, this._then);

  final _AdeDevice _self;
  final $Res Function(_AdeDevice) _then;

/// Create a copy of AdeDevice
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? serialNumber = freezed,Object? model = freezed,Object? description = freezed,Object? color = freezed,Object? deviceFamily = freezed,Object? os = freezed,Object? profileStatus = freezed,Object? profileAssignTime = freezed,Object? profilePushTime = freezed,Object? deviceAssignedDate = freezed,Object? deviceAssignedBy = freezed,}) {
  return _then(_AdeDevice(
serialNumber: freezed == serialNumber ? _self.serialNumber : serialNumber // ignore: cast_nullable_to_non_nullable
as String?,model: freezed == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,color: freezed == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as String?,deviceFamily: freezed == deviceFamily ? _self.deviceFamily : deviceFamily // ignore: cast_nullable_to_non_nullable
as String?,os: freezed == os ? _self.os : os // ignore: cast_nullable_to_non_nullable
as String?,profileStatus: freezed == profileStatus ? _self.profileStatus : profileStatus // ignore: cast_nullable_to_non_nullable
as String?,profileAssignTime: freezed == profileAssignTime ? _self.profileAssignTime : profileAssignTime // ignore: cast_nullable_to_non_nullable
as String?,profilePushTime: freezed == profilePushTime ? _self.profilePushTime : profilePushTime // ignore: cast_nullable_to_non_nullable
as String?,deviceAssignedDate: freezed == deviceAssignedDate ? _self.deviceAssignedDate : deviceAssignedDate // ignore: cast_nullable_to_non_nullable
as String?,deviceAssignedBy: freezed == deviceAssignedBy ? _self.deviceAssignedBy : deviceAssignedBy // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
