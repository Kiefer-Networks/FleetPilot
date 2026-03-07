// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'license_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LicenseInfo {

@JsonKey(name: 'device_limit') int? get deviceLimit;@JsonKey(name: 'device_count') int? get deviceCount;@JsonKey(name: 'apple_device_count') int? get appleDeviceCount;@JsonKey(name: 'windows_device_count') int? get windowsDeviceCount;@JsonKey(name: 'android_device_count') int? get androidDeviceCount;@JsonKey(name: 'license_type') String? get licenseType;
/// Create a copy of LicenseInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LicenseInfoCopyWith<LicenseInfo> get copyWith => _$LicenseInfoCopyWithImpl<LicenseInfo>(this as LicenseInfo, _$identity);

  /// Serializes this LicenseInfo to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LicenseInfo&&(identical(other.deviceLimit, deviceLimit) || other.deviceLimit == deviceLimit)&&(identical(other.deviceCount, deviceCount) || other.deviceCount == deviceCount)&&(identical(other.appleDeviceCount, appleDeviceCount) || other.appleDeviceCount == appleDeviceCount)&&(identical(other.windowsDeviceCount, windowsDeviceCount) || other.windowsDeviceCount == windowsDeviceCount)&&(identical(other.androidDeviceCount, androidDeviceCount) || other.androidDeviceCount == androidDeviceCount)&&(identical(other.licenseType, licenseType) || other.licenseType == licenseType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,deviceLimit,deviceCount,appleDeviceCount,windowsDeviceCount,androidDeviceCount,licenseType);

@override
String toString() {
  return 'LicenseInfo(deviceLimit: $deviceLimit, deviceCount: $deviceCount, appleDeviceCount: $appleDeviceCount, windowsDeviceCount: $windowsDeviceCount, androidDeviceCount: $androidDeviceCount, licenseType: $licenseType)';
}


}

/// @nodoc
abstract mixin class $LicenseInfoCopyWith<$Res>  {
  factory $LicenseInfoCopyWith(LicenseInfo value, $Res Function(LicenseInfo) _then) = _$LicenseInfoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'device_limit') int? deviceLimit,@JsonKey(name: 'device_count') int? deviceCount,@JsonKey(name: 'apple_device_count') int? appleDeviceCount,@JsonKey(name: 'windows_device_count') int? windowsDeviceCount,@JsonKey(name: 'android_device_count') int? androidDeviceCount,@JsonKey(name: 'license_type') String? licenseType
});




}
/// @nodoc
class _$LicenseInfoCopyWithImpl<$Res>
    implements $LicenseInfoCopyWith<$Res> {
  _$LicenseInfoCopyWithImpl(this._self, this._then);

  final LicenseInfo _self;
  final $Res Function(LicenseInfo) _then;

/// Create a copy of LicenseInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? deviceLimit = freezed,Object? deviceCount = freezed,Object? appleDeviceCount = freezed,Object? windowsDeviceCount = freezed,Object? androidDeviceCount = freezed,Object? licenseType = freezed,}) {
  return _then(_self.copyWith(
deviceLimit: freezed == deviceLimit ? _self.deviceLimit : deviceLimit // ignore: cast_nullable_to_non_nullable
as int?,deviceCount: freezed == deviceCount ? _self.deviceCount : deviceCount // ignore: cast_nullable_to_non_nullable
as int?,appleDeviceCount: freezed == appleDeviceCount ? _self.appleDeviceCount : appleDeviceCount // ignore: cast_nullable_to_non_nullable
as int?,windowsDeviceCount: freezed == windowsDeviceCount ? _self.windowsDeviceCount : windowsDeviceCount // ignore: cast_nullable_to_non_nullable
as int?,androidDeviceCount: freezed == androidDeviceCount ? _self.androidDeviceCount : androidDeviceCount // ignore: cast_nullable_to_non_nullable
as int?,licenseType: freezed == licenseType ? _self.licenseType : licenseType // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [LicenseInfo].
extension LicenseInfoPatterns on LicenseInfo {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LicenseInfo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LicenseInfo() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LicenseInfo value)  $default,){
final _that = this;
switch (_that) {
case _LicenseInfo():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LicenseInfo value)?  $default,){
final _that = this;
switch (_that) {
case _LicenseInfo() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'device_limit')  int? deviceLimit, @JsonKey(name: 'device_count')  int? deviceCount, @JsonKey(name: 'apple_device_count')  int? appleDeviceCount, @JsonKey(name: 'windows_device_count')  int? windowsDeviceCount, @JsonKey(name: 'android_device_count')  int? androidDeviceCount, @JsonKey(name: 'license_type')  String? licenseType)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LicenseInfo() when $default != null:
return $default(_that.deviceLimit,_that.deviceCount,_that.appleDeviceCount,_that.windowsDeviceCount,_that.androidDeviceCount,_that.licenseType);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'device_limit')  int? deviceLimit, @JsonKey(name: 'device_count')  int? deviceCount, @JsonKey(name: 'apple_device_count')  int? appleDeviceCount, @JsonKey(name: 'windows_device_count')  int? windowsDeviceCount, @JsonKey(name: 'android_device_count')  int? androidDeviceCount, @JsonKey(name: 'license_type')  String? licenseType)  $default,) {final _that = this;
switch (_that) {
case _LicenseInfo():
return $default(_that.deviceLimit,_that.deviceCount,_that.appleDeviceCount,_that.windowsDeviceCount,_that.androidDeviceCount,_that.licenseType);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'device_limit')  int? deviceLimit, @JsonKey(name: 'device_count')  int? deviceCount, @JsonKey(name: 'apple_device_count')  int? appleDeviceCount, @JsonKey(name: 'windows_device_count')  int? windowsDeviceCount, @JsonKey(name: 'android_device_count')  int? androidDeviceCount, @JsonKey(name: 'license_type')  String? licenseType)?  $default,) {final _that = this;
switch (_that) {
case _LicenseInfo() when $default != null:
return $default(_that.deviceLimit,_that.deviceCount,_that.appleDeviceCount,_that.windowsDeviceCount,_that.androidDeviceCount,_that.licenseType);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LicenseInfo implements LicenseInfo {
  const _LicenseInfo({@JsonKey(name: 'device_limit') this.deviceLimit, @JsonKey(name: 'device_count') this.deviceCount, @JsonKey(name: 'apple_device_count') this.appleDeviceCount, @JsonKey(name: 'windows_device_count') this.windowsDeviceCount, @JsonKey(name: 'android_device_count') this.androidDeviceCount, @JsonKey(name: 'license_type') this.licenseType});
  factory _LicenseInfo.fromJson(Map<String, dynamic> json) => _$LicenseInfoFromJson(json);

@override@JsonKey(name: 'device_limit') final  int? deviceLimit;
@override@JsonKey(name: 'device_count') final  int? deviceCount;
@override@JsonKey(name: 'apple_device_count') final  int? appleDeviceCount;
@override@JsonKey(name: 'windows_device_count') final  int? windowsDeviceCount;
@override@JsonKey(name: 'android_device_count') final  int? androidDeviceCount;
@override@JsonKey(name: 'license_type') final  String? licenseType;

/// Create a copy of LicenseInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LicenseInfoCopyWith<_LicenseInfo> get copyWith => __$LicenseInfoCopyWithImpl<_LicenseInfo>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LicenseInfoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LicenseInfo&&(identical(other.deviceLimit, deviceLimit) || other.deviceLimit == deviceLimit)&&(identical(other.deviceCount, deviceCount) || other.deviceCount == deviceCount)&&(identical(other.appleDeviceCount, appleDeviceCount) || other.appleDeviceCount == appleDeviceCount)&&(identical(other.windowsDeviceCount, windowsDeviceCount) || other.windowsDeviceCount == windowsDeviceCount)&&(identical(other.androidDeviceCount, androidDeviceCount) || other.androidDeviceCount == androidDeviceCount)&&(identical(other.licenseType, licenseType) || other.licenseType == licenseType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,deviceLimit,deviceCount,appleDeviceCount,windowsDeviceCount,androidDeviceCount,licenseType);

@override
String toString() {
  return 'LicenseInfo(deviceLimit: $deviceLimit, deviceCount: $deviceCount, appleDeviceCount: $appleDeviceCount, windowsDeviceCount: $windowsDeviceCount, androidDeviceCount: $androidDeviceCount, licenseType: $licenseType)';
}


}

/// @nodoc
abstract mixin class _$LicenseInfoCopyWith<$Res> implements $LicenseInfoCopyWith<$Res> {
  factory _$LicenseInfoCopyWith(_LicenseInfo value, $Res Function(_LicenseInfo) _then) = __$LicenseInfoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'device_limit') int? deviceLimit,@JsonKey(name: 'device_count') int? deviceCount,@JsonKey(name: 'apple_device_count') int? appleDeviceCount,@JsonKey(name: 'windows_device_count') int? windowsDeviceCount,@JsonKey(name: 'android_device_count') int? androidDeviceCount,@JsonKey(name: 'license_type') String? licenseType
});




}
/// @nodoc
class __$LicenseInfoCopyWithImpl<$Res>
    implements _$LicenseInfoCopyWith<$Res> {
  __$LicenseInfoCopyWithImpl(this._self, this._then);

  final _LicenseInfo _self;
  final $Res Function(_LicenseInfo) _then;

/// Create a copy of LicenseInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? deviceLimit = freezed,Object? deviceCount = freezed,Object? appleDeviceCount = freezed,Object? windowsDeviceCount = freezed,Object? androidDeviceCount = freezed,Object? licenseType = freezed,}) {
  return _then(_LicenseInfo(
deviceLimit: freezed == deviceLimit ? _self.deviceLimit : deviceLimit // ignore: cast_nullable_to_non_nullable
as int?,deviceCount: freezed == deviceCount ? _self.deviceCount : deviceCount // ignore: cast_nullable_to_non_nullable
as int?,appleDeviceCount: freezed == appleDeviceCount ? _self.appleDeviceCount : appleDeviceCount // ignore: cast_nullable_to_non_nullable
as int?,windowsDeviceCount: freezed == windowsDeviceCount ? _self.windowsDeviceCount : windowsDeviceCount // ignore: cast_nullable_to_non_nullable
as int?,androidDeviceCount: freezed == androidDeviceCount ? _self.androidDeviceCount : androidDeviceCount // ignore: cast_nullable_to_non_nullable
as int?,licenseType: freezed == licenseType ? _self.licenseType : licenseType // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
