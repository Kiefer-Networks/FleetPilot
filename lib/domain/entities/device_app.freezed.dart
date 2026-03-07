// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'device_app.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DeviceApp {

// Android fields
@JsonKey(name: 'display_name') String? get displayName;@JsonKey(name: 'package_name') String? get packageName;@JsonKey(name: 'version_name') String? get versionName;@JsonKey(name: 'application_source') String? get applicationSource;@JsonKey(name: 'installer_package_name') String? get installerPackageName;// Apple fields
@JsonKey(name: 'app_name') String? get appName;@JsonKey(name: 'bundle_name') String? get bundleName;@JsonKey(name: 'bundle_id') String? get bundleId; String? get name; String? get version;@JsonKey(name: 'short_version') String? get shortVersion; String? get path;@JsonKey(name: 'developer_name') String? get developerName;
/// Create a copy of DeviceApp
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeviceAppCopyWith<DeviceApp> get copyWith => _$DeviceAppCopyWithImpl<DeviceApp>(this as DeviceApp, _$identity);

  /// Serializes this DeviceApp to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeviceApp&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.packageName, packageName) || other.packageName == packageName)&&(identical(other.versionName, versionName) || other.versionName == versionName)&&(identical(other.applicationSource, applicationSource) || other.applicationSource == applicationSource)&&(identical(other.installerPackageName, installerPackageName) || other.installerPackageName == installerPackageName)&&(identical(other.appName, appName) || other.appName == appName)&&(identical(other.bundleName, bundleName) || other.bundleName == bundleName)&&(identical(other.bundleId, bundleId) || other.bundleId == bundleId)&&(identical(other.name, name) || other.name == name)&&(identical(other.version, version) || other.version == version)&&(identical(other.shortVersion, shortVersion) || other.shortVersion == shortVersion)&&(identical(other.path, path) || other.path == path)&&(identical(other.developerName, developerName) || other.developerName == developerName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,displayName,packageName,versionName,applicationSource,installerPackageName,appName,bundleName,bundleId,name,version,shortVersion,path,developerName);

@override
String toString() {
  return 'DeviceApp(displayName: $displayName, packageName: $packageName, versionName: $versionName, applicationSource: $applicationSource, installerPackageName: $installerPackageName, appName: $appName, bundleName: $bundleName, bundleId: $bundleId, name: $name, version: $version, shortVersion: $shortVersion, path: $path, developerName: $developerName)';
}


}

/// @nodoc
abstract mixin class $DeviceAppCopyWith<$Res>  {
  factory $DeviceAppCopyWith(DeviceApp value, $Res Function(DeviceApp) _then) = _$DeviceAppCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'display_name') String? displayName,@JsonKey(name: 'package_name') String? packageName,@JsonKey(name: 'version_name') String? versionName,@JsonKey(name: 'application_source') String? applicationSource,@JsonKey(name: 'installer_package_name') String? installerPackageName,@JsonKey(name: 'app_name') String? appName,@JsonKey(name: 'bundle_name') String? bundleName,@JsonKey(name: 'bundle_id') String? bundleId, String? name, String? version,@JsonKey(name: 'short_version') String? shortVersion, String? path,@JsonKey(name: 'developer_name') String? developerName
});




}
/// @nodoc
class _$DeviceAppCopyWithImpl<$Res>
    implements $DeviceAppCopyWith<$Res> {
  _$DeviceAppCopyWithImpl(this._self, this._then);

  final DeviceApp _self;
  final $Res Function(DeviceApp) _then;

/// Create a copy of DeviceApp
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? displayName = freezed,Object? packageName = freezed,Object? versionName = freezed,Object? applicationSource = freezed,Object? installerPackageName = freezed,Object? appName = freezed,Object? bundleName = freezed,Object? bundleId = freezed,Object? name = freezed,Object? version = freezed,Object? shortVersion = freezed,Object? path = freezed,Object? developerName = freezed,}) {
  return _then(_self.copyWith(
displayName: freezed == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String?,packageName: freezed == packageName ? _self.packageName : packageName // ignore: cast_nullable_to_non_nullable
as String?,versionName: freezed == versionName ? _self.versionName : versionName // ignore: cast_nullable_to_non_nullable
as String?,applicationSource: freezed == applicationSource ? _self.applicationSource : applicationSource // ignore: cast_nullable_to_non_nullable
as String?,installerPackageName: freezed == installerPackageName ? _self.installerPackageName : installerPackageName // ignore: cast_nullable_to_non_nullable
as String?,appName: freezed == appName ? _self.appName : appName // ignore: cast_nullable_to_non_nullable
as String?,bundleName: freezed == bundleName ? _self.bundleName : bundleName // ignore: cast_nullable_to_non_nullable
as String?,bundleId: freezed == bundleId ? _self.bundleId : bundleId // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,version: freezed == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String?,shortVersion: freezed == shortVersion ? _self.shortVersion : shortVersion // ignore: cast_nullable_to_non_nullable
as String?,path: freezed == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as String?,developerName: freezed == developerName ? _self.developerName : developerName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [DeviceApp].
extension DeviceAppPatterns on DeviceApp {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DeviceApp value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DeviceApp() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DeviceApp value)  $default,){
final _that = this;
switch (_that) {
case _DeviceApp():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DeviceApp value)?  $default,){
final _that = this;
switch (_that) {
case _DeviceApp() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'display_name')  String? displayName, @JsonKey(name: 'package_name')  String? packageName, @JsonKey(name: 'version_name')  String? versionName, @JsonKey(name: 'application_source')  String? applicationSource, @JsonKey(name: 'installer_package_name')  String? installerPackageName, @JsonKey(name: 'app_name')  String? appName, @JsonKey(name: 'bundle_name')  String? bundleName, @JsonKey(name: 'bundle_id')  String? bundleId,  String? name,  String? version, @JsonKey(name: 'short_version')  String? shortVersion,  String? path, @JsonKey(name: 'developer_name')  String? developerName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DeviceApp() when $default != null:
return $default(_that.displayName,_that.packageName,_that.versionName,_that.applicationSource,_that.installerPackageName,_that.appName,_that.bundleName,_that.bundleId,_that.name,_that.version,_that.shortVersion,_that.path,_that.developerName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'display_name')  String? displayName, @JsonKey(name: 'package_name')  String? packageName, @JsonKey(name: 'version_name')  String? versionName, @JsonKey(name: 'application_source')  String? applicationSource, @JsonKey(name: 'installer_package_name')  String? installerPackageName, @JsonKey(name: 'app_name')  String? appName, @JsonKey(name: 'bundle_name')  String? bundleName, @JsonKey(name: 'bundle_id')  String? bundleId,  String? name,  String? version, @JsonKey(name: 'short_version')  String? shortVersion,  String? path, @JsonKey(name: 'developer_name')  String? developerName)  $default,) {final _that = this;
switch (_that) {
case _DeviceApp():
return $default(_that.displayName,_that.packageName,_that.versionName,_that.applicationSource,_that.installerPackageName,_that.appName,_that.bundleName,_that.bundleId,_that.name,_that.version,_that.shortVersion,_that.path,_that.developerName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'display_name')  String? displayName, @JsonKey(name: 'package_name')  String? packageName, @JsonKey(name: 'version_name')  String? versionName, @JsonKey(name: 'application_source')  String? applicationSource, @JsonKey(name: 'installer_package_name')  String? installerPackageName, @JsonKey(name: 'app_name')  String? appName, @JsonKey(name: 'bundle_name')  String? bundleName, @JsonKey(name: 'bundle_id')  String? bundleId,  String? name,  String? version, @JsonKey(name: 'short_version')  String? shortVersion,  String? path, @JsonKey(name: 'developer_name')  String? developerName)?  $default,) {final _that = this;
switch (_that) {
case _DeviceApp() when $default != null:
return $default(_that.displayName,_that.packageName,_that.versionName,_that.applicationSource,_that.installerPackageName,_that.appName,_that.bundleName,_that.bundleId,_that.name,_that.version,_that.shortVersion,_that.path,_that.developerName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DeviceApp extends DeviceApp {
  const _DeviceApp({@JsonKey(name: 'display_name') this.displayName, @JsonKey(name: 'package_name') this.packageName, @JsonKey(name: 'version_name') this.versionName, @JsonKey(name: 'application_source') this.applicationSource, @JsonKey(name: 'installer_package_name') this.installerPackageName, @JsonKey(name: 'app_name') this.appName, @JsonKey(name: 'bundle_name') this.bundleName, @JsonKey(name: 'bundle_id') this.bundleId, this.name, this.version, @JsonKey(name: 'short_version') this.shortVersion, this.path, @JsonKey(name: 'developer_name') this.developerName}): super._();
  factory _DeviceApp.fromJson(Map<String, dynamic> json) => _$DeviceAppFromJson(json);

// Android fields
@override@JsonKey(name: 'display_name') final  String? displayName;
@override@JsonKey(name: 'package_name') final  String? packageName;
@override@JsonKey(name: 'version_name') final  String? versionName;
@override@JsonKey(name: 'application_source') final  String? applicationSource;
@override@JsonKey(name: 'installer_package_name') final  String? installerPackageName;
// Apple fields
@override@JsonKey(name: 'app_name') final  String? appName;
@override@JsonKey(name: 'bundle_name') final  String? bundleName;
@override@JsonKey(name: 'bundle_id') final  String? bundleId;
@override final  String? name;
@override final  String? version;
@override@JsonKey(name: 'short_version') final  String? shortVersion;
@override final  String? path;
@override@JsonKey(name: 'developer_name') final  String? developerName;

/// Create a copy of DeviceApp
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeviceAppCopyWith<_DeviceApp> get copyWith => __$DeviceAppCopyWithImpl<_DeviceApp>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DeviceAppToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeviceApp&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.packageName, packageName) || other.packageName == packageName)&&(identical(other.versionName, versionName) || other.versionName == versionName)&&(identical(other.applicationSource, applicationSource) || other.applicationSource == applicationSource)&&(identical(other.installerPackageName, installerPackageName) || other.installerPackageName == installerPackageName)&&(identical(other.appName, appName) || other.appName == appName)&&(identical(other.bundleName, bundleName) || other.bundleName == bundleName)&&(identical(other.bundleId, bundleId) || other.bundleId == bundleId)&&(identical(other.name, name) || other.name == name)&&(identical(other.version, version) || other.version == version)&&(identical(other.shortVersion, shortVersion) || other.shortVersion == shortVersion)&&(identical(other.path, path) || other.path == path)&&(identical(other.developerName, developerName) || other.developerName == developerName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,displayName,packageName,versionName,applicationSource,installerPackageName,appName,bundleName,bundleId,name,version,shortVersion,path,developerName);

@override
String toString() {
  return 'DeviceApp(displayName: $displayName, packageName: $packageName, versionName: $versionName, applicationSource: $applicationSource, installerPackageName: $installerPackageName, appName: $appName, bundleName: $bundleName, bundleId: $bundleId, name: $name, version: $version, shortVersion: $shortVersion, path: $path, developerName: $developerName)';
}


}

/// @nodoc
abstract mixin class _$DeviceAppCopyWith<$Res> implements $DeviceAppCopyWith<$Res> {
  factory _$DeviceAppCopyWith(_DeviceApp value, $Res Function(_DeviceApp) _then) = __$DeviceAppCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'display_name') String? displayName,@JsonKey(name: 'package_name') String? packageName,@JsonKey(name: 'version_name') String? versionName,@JsonKey(name: 'application_source') String? applicationSource,@JsonKey(name: 'installer_package_name') String? installerPackageName,@JsonKey(name: 'app_name') String? appName,@JsonKey(name: 'bundle_name') String? bundleName,@JsonKey(name: 'bundle_id') String? bundleId, String? name, String? version,@JsonKey(name: 'short_version') String? shortVersion, String? path,@JsonKey(name: 'developer_name') String? developerName
});




}
/// @nodoc
class __$DeviceAppCopyWithImpl<$Res>
    implements _$DeviceAppCopyWith<$Res> {
  __$DeviceAppCopyWithImpl(this._self, this._then);

  final _DeviceApp _self;
  final $Res Function(_DeviceApp) _then;

/// Create a copy of DeviceApp
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? displayName = freezed,Object? packageName = freezed,Object? versionName = freezed,Object? applicationSource = freezed,Object? installerPackageName = freezed,Object? appName = freezed,Object? bundleName = freezed,Object? bundleId = freezed,Object? name = freezed,Object? version = freezed,Object? shortVersion = freezed,Object? path = freezed,Object? developerName = freezed,}) {
  return _then(_DeviceApp(
displayName: freezed == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String?,packageName: freezed == packageName ? _self.packageName : packageName // ignore: cast_nullable_to_non_nullable
as String?,versionName: freezed == versionName ? _self.versionName : versionName // ignore: cast_nullable_to_non_nullable
as String?,applicationSource: freezed == applicationSource ? _self.applicationSource : applicationSource // ignore: cast_nullable_to_non_nullable
as String?,installerPackageName: freezed == installerPackageName ? _self.installerPackageName : installerPackageName // ignore: cast_nullable_to_non_nullable
as String?,appName: freezed == appName ? _self.appName : appName // ignore: cast_nullable_to_non_nullable
as String?,bundleName: freezed == bundleName ? _self.bundleName : bundleName // ignore: cast_nullable_to_non_nullable
as String?,bundleId: freezed == bundleId ? _self.bundleId : bundleId // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,version: freezed == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String?,shortVersion: freezed == shortVersion ? _self.shortVersion : shortVersion // ignore: cast_nullable_to_non_nullable
as String?,path: freezed == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as String?,developerName: freezed == developerName ? _self.developerName : developerName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
