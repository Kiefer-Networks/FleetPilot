// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'device.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Device {

@JsonKey(name: 'device_id') String get deviceId;@JsonKey(name: 'device_name') String? get deviceName;@JsonKey(name: 'serial_number') String? get serialNumber; String? get platform; String? get model;@JsonKey(name: 'os_version') String? get osVersion;@JsonKey(name: 'asset_tag') String? get assetTag;@JsonKey(name: 'blueprint_id') String? get blueprintId;@JsonKey(name: 'blueprint_name') String? get blueprintName;@JsonKey(name: 'user', fromJson: _userFromJson) DeviceUser? get user;@JsonKey(name: 'last_check_in') String? get lastCheckIn;@JsonKey(name: 'first_enrollment') String? get firstEnrollment;@JsonKey(name: 'agent_version') String? get agentVersion;@JsonKey(name: 'is_missing') bool get isMissing;@JsonKey(name: 'is_removed') bool get isRemoved;@JsonKey(name: 'is_supervised') bool get isSupervised;@JsonKey(name: 'general_status') String? get generalStatus;@JsonKey(name: 'lost_mode_status') String? get lostModeStatus;@JsonKey(name: 'tags', fromJson: _tagsFromJson) List<String> get tags;
/// Create a copy of Device
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeviceCopyWith<Device> get copyWith => _$DeviceCopyWithImpl<Device>(this as Device, _$identity);

  /// Serializes this Device to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Device&&(identical(other.deviceId, deviceId) || other.deviceId == deviceId)&&(identical(other.deviceName, deviceName) || other.deviceName == deviceName)&&(identical(other.serialNumber, serialNumber) || other.serialNumber == serialNumber)&&(identical(other.platform, platform) || other.platform == platform)&&(identical(other.model, model) || other.model == model)&&(identical(other.osVersion, osVersion) || other.osVersion == osVersion)&&(identical(other.assetTag, assetTag) || other.assetTag == assetTag)&&(identical(other.blueprintId, blueprintId) || other.blueprintId == blueprintId)&&(identical(other.blueprintName, blueprintName) || other.blueprintName == blueprintName)&&(identical(other.user, user) || other.user == user)&&(identical(other.lastCheckIn, lastCheckIn) || other.lastCheckIn == lastCheckIn)&&(identical(other.firstEnrollment, firstEnrollment) || other.firstEnrollment == firstEnrollment)&&(identical(other.agentVersion, agentVersion) || other.agentVersion == agentVersion)&&(identical(other.isMissing, isMissing) || other.isMissing == isMissing)&&(identical(other.isRemoved, isRemoved) || other.isRemoved == isRemoved)&&(identical(other.isSupervised, isSupervised) || other.isSupervised == isSupervised)&&(identical(other.generalStatus, generalStatus) || other.generalStatus == generalStatus)&&(identical(other.lostModeStatus, lostModeStatus) || other.lostModeStatus == lostModeStatus)&&const DeepCollectionEquality().equals(other.tags, tags));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,deviceId,deviceName,serialNumber,platform,model,osVersion,assetTag,blueprintId,blueprintName,user,lastCheckIn,firstEnrollment,agentVersion,isMissing,isRemoved,isSupervised,generalStatus,lostModeStatus,const DeepCollectionEquality().hash(tags)]);

@override
String toString() {
  return 'Device(deviceId: $deviceId, deviceName: $deviceName, serialNumber: $serialNumber, platform: $platform, model: $model, osVersion: $osVersion, assetTag: $assetTag, blueprintId: $blueprintId, blueprintName: $blueprintName, user: $user, lastCheckIn: $lastCheckIn, firstEnrollment: $firstEnrollment, agentVersion: $agentVersion, isMissing: $isMissing, isRemoved: $isRemoved, isSupervised: $isSupervised, generalStatus: $generalStatus, lostModeStatus: $lostModeStatus, tags: $tags)';
}


}

/// @nodoc
abstract mixin class $DeviceCopyWith<$Res>  {
  factory $DeviceCopyWith(Device value, $Res Function(Device) _then) = _$DeviceCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'device_id') String deviceId,@JsonKey(name: 'device_name') String? deviceName,@JsonKey(name: 'serial_number') String? serialNumber, String? platform, String? model,@JsonKey(name: 'os_version') String? osVersion,@JsonKey(name: 'asset_tag') String? assetTag,@JsonKey(name: 'blueprint_id') String? blueprintId,@JsonKey(name: 'blueprint_name') String? blueprintName,@JsonKey(name: 'user', fromJson: _userFromJson) DeviceUser? user,@JsonKey(name: 'last_check_in') String? lastCheckIn,@JsonKey(name: 'first_enrollment') String? firstEnrollment,@JsonKey(name: 'agent_version') String? agentVersion,@JsonKey(name: 'is_missing') bool isMissing,@JsonKey(name: 'is_removed') bool isRemoved,@JsonKey(name: 'is_supervised') bool isSupervised,@JsonKey(name: 'general_status') String? generalStatus,@JsonKey(name: 'lost_mode_status') String? lostModeStatus,@JsonKey(name: 'tags', fromJson: _tagsFromJson) List<String> tags
});


$DeviceUserCopyWith<$Res>? get user;

}
/// @nodoc
class _$DeviceCopyWithImpl<$Res>
    implements $DeviceCopyWith<$Res> {
  _$DeviceCopyWithImpl(this._self, this._then);

  final Device _self;
  final $Res Function(Device) _then;

/// Create a copy of Device
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? deviceId = null,Object? deviceName = freezed,Object? serialNumber = freezed,Object? platform = freezed,Object? model = freezed,Object? osVersion = freezed,Object? assetTag = freezed,Object? blueprintId = freezed,Object? blueprintName = freezed,Object? user = freezed,Object? lastCheckIn = freezed,Object? firstEnrollment = freezed,Object? agentVersion = freezed,Object? isMissing = null,Object? isRemoved = null,Object? isSupervised = null,Object? generalStatus = freezed,Object? lostModeStatus = freezed,Object? tags = null,}) {
  return _then(_self.copyWith(
deviceId: null == deviceId ? _self.deviceId : deviceId // ignore: cast_nullable_to_non_nullable
as String,deviceName: freezed == deviceName ? _self.deviceName : deviceName // ignore: cast_nullable_to_non_nullable
as String?,serialNumber: freezed == serialNumber ? _self.serialNumber : serialNumber // ignore: cast_nullable_to_non_nullable
as String?,platform: freezed == platform ? _self.platform : platform // ignore: cast_nullable_to_non_nullable
as String?,model: freezed == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as String?,osVersion: freezed == osVersion ? _self.osVersion : osVersion // ignore: cast_nullable_to_non_nullable
as String?,assetTag: freezed == assetTag ? _self.assetTag : assetTag // ignore: cast_nullable_to_non_nullable
as String?,blueprintId: freezed == blueprintId ? _self.blueprintId : blueprintId // ignore: cast_nullable_to_non_nullable
as String?,blueprintName: freezed == blueprintName ? _self.blueprintName : blueprintName // ignore: cast_nullable_to_non_nullable
as String?,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as DeviceUser?,lastCheckIn: freezed == lastCheckIn ? _self.lastCheckIn : lastCheckIn // ignore: cast_nullable_to_non_nullable
as String?,firstEnrollment: freezed == firstEnrollment ? _self.firstEnrollment : firstEnrollment // ignore: cast_nullable_to_non_nullable
as String?,agentVersion: freezed == agentVersion ? _self.agentVersion : agentVersion // ignore: cast_nullable_to_non_nullable
as String?,isMissing: null == isMissing ? _self.isMissing : isMissing // ignore: cast_nullable_to_non_nullable
as bool,isRemoved: null == isRemoved ? _self.isRemoved : isRemoved // ignore: cast_nullable_to_non_nullable
as bool,isSupervised: null == isSupervised ? _self.isSupervised : isSupervised // ignore: cast_nullable_to_non_nullable
as bool,generalStatus: freezed == generalStatus ? _self.generalStatus : generalStatus // ignore: cast_nullable_to_non_nullable
as String?,lostModeStatus: freezed == lostModeStatus ? _self.lostModeStatus : lostModeStatus // ignore: cast_nullable_to_non_nullable
as String?,tags: null == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}
/// Create a copy of Device
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DeviceUserCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $DeviceUserCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// Adds pattern-matching-related methods to [Device].
extension DevicePatterns on Device {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Device value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Device() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Device value)  $default,){
final _that = this;
switch (_that) {
case _Device():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Device value)?  $default,){
final _that = this;
switch (_that) {
case _Device() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'device_id')  String deviceId, @JsonKey(name: 'device_name')  String? deviceName, @JsonKey(name: 'serial_number')  String? serialNumber,  String? platform,  String? model, @JsonKey(name: 'os_version')  String? osVersion, @JsonKey(name: 'asset_tag')  String? assetTag, @JsonKey(name: 'blueprint_id')  String? blueprintId, @JsonKey(name: 'blueprint_name')  String? blueprintName, @JsonKey(name: 'user', fromJson: _userFromJson)  DeviceUser? user, @JsonKey(name: 'last_check_in')  String? lastCheckIn, @JsonKey(name: 'first_enrollment')  String? firstEnrollment, @JsonKey(name: 'agent_version')  String? agentVersion, @JsonKey(name: 'is_missing')  bool isMissing, @JsonKey(name: 'is_removed')  bool isRemoved, @JsonKey(name: 'is_supervised')  bool isSupervised, @JsonKey(name: 'general_status')  String? generalStatus, @JsonKey(name: 'lost_mode_status')  String? lostModeStatus, @JsonKey(name: 'tags', fromJson: _tagsFromJson)  List<String> tags)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Device() when $default != null:
return $default(_that.deviceId,_that.deviceName,_that.serialNumber,_that.platform,_that.model,_that.osVersion,_that.assetTag,_that.blueprintId,_that.blueprintName,_that.user,_that.lastCheckIn,_that.firstEnrollment,_that.agentVersion,_that.isMissing,_that.isRemoved,_that.isSupervised,_that.generalStatus,_that.lostModeStatus,_that.tags);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'device_id')  String deviceId, @JsonKey(name: 'device_name')  String? deviceName, @JsonKey(name: 'serial_number')  String? serialNumber,  String? platform,  String? model, @JsonKey(name: 'os_version')  String? osVersion, @JsonKey(name: 'asset_tag')  String? assetTag, @JsonKey(name: 'blueprint_id')  String? blueprintId, @JsonKey(name: 'blueprint_name')  String? blueprintName, @JsonKey(name: 'user', fromJson: _userFromJson)  DeviceUser? user, @JsonKey(name: 'last_check_in')  String? lastCheckIn, @JsonKey(name: 'first_enrollment')  String? firstEnrollment, @JsonKey(name: 'agent_version')  String? agentVersion, @JsonKey(name: 'is_missing')  bool isMissing, @JsonKey(name: 'is_removed')  bool isRemoved, @JsonKey(name: 'is_supervised')  bool isSupervised, @JsonKey(name: 'general_status')  String? generalStatus, @JsonKey(name: 'lost_mode_status')  String? lostModeStatus, @JsonKey(name: 'tags', fromJson: _tagsFromJson)  List<String> tags)  $default,) {final _that = this;
switch (_that) {
case _Device():
return $default(_that.deviceId,_that.deviceName,_that.serialNumber,_that.platform,_that.model,_that.osVersion,_that.assetTag,_that.blueprintId,_that.blueprintName,_that.user,_that.lastCheckIn,_that.firstEnrollment,_that.agentVersion,_that.isMissing,_that.isRemoved,_that.isSupervised,_that.generalStatus,_that.lostModeStatus,_that.tags);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'device_id')  String deviceId, @JsonKey(name: 'device_name')  String? deviceName, @JsonKey(name: 'serial_number')  String? serialNumber,  String? platform,  String? model, @JsonKey(name: 'os_version')  String? osVersion, @JsonKey(name: 'asset_tag')  String? assetTag, @JsonKey(name: 'blueprint_id')  String? blueprintId, @JsonKey(name: 'blueprint_name')  String? blueprintName, @JsonKey(name: 'user', fromJson: _userFromJson)  DeviceUser? user, @JsonKey(name: 'last_check_in')  String? lastCheckIn, @JsonKey(name: 'first_enrollment')  String? firstEnrollment, @JsonKey(name: 'agent_version')  String? agentVersion, @JsonKey(name: 'is_missing')  bool isMissing, @JsonKey(name: 'is_removed')  bool isRemoved, @JsonKey(name: 'is_supervised')  bool isSupervised, @JsonKey(name: 'general_status')  String? generalStatus, @JsonKey(name: 'lost_mode_status')  String? lostModeStatus, @JsonKey(name: 'tags', fromJson: _tagsFromJson)  List<String> tags)?  $default,) {final _that = this;
switch (_that) {
case _Device() when $default != null:
return $default(_that.deviceId,_that.deviceName,_that.serialNumber,_that.platform,_that.model,_that.osVersion,_that.assetTag,_that.blueprintId,_that.blueprintName,_that.user,_that.lastCheckIn,_that.firstEnrollment,_that.agentVersion,_that.isMissing,_that.isRemoved,_that.isSupervised,_that.generalStatus,_that.lostModeStatus,_that.tags);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Device implements Device {
  const _Device({@JsonKey(name: 'device_id') required this.deviceId, @JsonKey(name: 'device_name') this.deviceName, @JsonKey(name: 'serial_number') this.serialNumber, this.platform, this.model, @JsonKey(name: 'os_version') this.osVersion, @JsonKey(name: 'asset_tag') this.assetTag, @JsonKey(name: 'blueprint_id') this.blueprintId, @JsonKey(name: 'blueprint_name') this.blueprintName, @JsonKey(name: 'user', fromJson: _userFromJson) this.user, @JsonKey(name: 'last_check_in') this.lastCheckIn, @JsonKey(name: 'first_enrollment') this.firstEnrollment, @JsonKey(name: 'agent_version') this.agentVersion, @JsonKey(name: 'is_missing') this.isMissing = false, @JsonKey(name: 'is_removed') this.isRemoved = false, @JsonKey(name: 'is_supervised') this.isSupervised = false, @JsonKey(name: 'general_status') this.generalStatus, @JsonKey(name: 'lost_mode_status') this.lostModeStatus, @JsonKey(name: 'tags', fromJson: _tagsFromJson) final  List<String> tags = const []}): _tags = tags;
  factory _Device.fromJson(Map<String, dynamic> json) => _$DeviceFromJson(json);

@override@JsonKey(name: 'device_id') final  String deviceId;
@override@JsonKey(name: 'device_name') final  String? deviceName;
@override@JsonKey(name: 'serial_number') final  String? serialNumber;
@override final  String? platform;
@override final  String? model;
@override@JsonKey(name: 'os_version') final  String? osVersion;
@override@JsonKey(name: 'asset_tag') final  String? assetTag;
@override@JsonKey(name: 'blueprint_id') final  String? blueprintId;
@override@JsonKey(name: 'blueprint_name') final  String? blueprintName;
@override@JsonKey(name: 'user', fromJson: _userFromJson) final  DeviceUser? user;
@override@JsonKey(name: 'last_check_in') final  String? lastCheckIn;
@override@JsonKey(name: 'first_enrollment') final  String? firstEnrollment;
@override@JsonKey(name: 'agent_version') final  String? agentVersion;
@override@JsonKey(name: 'is_missing') final  bool isMissing;
@override@JsonKey(name: 'is_removed') final  bool isRemoved;
@override@JsonKey(name: 'is_supervised') final  bool isSupervised;
@override@JsonKey(name: 'general_status') final  String? generalStatus;
@override@JsonKey(name: 'lost_mode_status') final  String? lostModeStatus;
 final  List<String> _tags;
@override@JsonKey(name: 'tags', fromJson: _tagsFromJson) List<String> get tags {
  if (_tags is EqualUnmodifiableListView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tags);
}


/// Create a copy of Device
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeviceCopyWith<_Device> get copyWith => __$DeviceCopyWithImpl<_Device>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DeviceToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Device&&(identical(other.deviceId, deviceId) || other.deviceId == deviceId)&&(identical(other.deviceName, deviceName) || other.deviceName == deviceName)&&(identical(other.serialNumber, serialNumber) || other.serialNumber == serialNumber)&&(identical(other.platform, platform) || other.platform == platform)&&(identical(other.model, model) || other.model == model)&&(identical(other.osVersion, osVersion) || other.osVersion == osVersion)&&(identical(other.assetTag, assetTag) || other.assetTag == assetTag)&&(identical(other.blueprintId, blueprintId) || other.blueprintId == blueprintId)&&(identical(other.blueprintName, blueprintName) || other.blueprintName == blueprintName)&&(identical(other.user, user) || other.user == user)&&(identical(other.lastCheckIn, lastCheckIn) || other.lastCheckIn == lastCheckIn)&&(identical(other.firstEnrollment, firstEnrollment) || other.firstEnrollment == firstEnrollment)&&(identical(other.agentVersion, agentVersion) || other.agentVersion == agentVersion)&&(identical(other.isMissing, isMissing) || other.isMissing == isMissing)&&(identical(other.isRemoved, isRemoved) || other.isRemoved == isRemoved)&&(identical(other.isSupervised, isSupervised) || other.isSupervised == isSupervised)&&(identical(other.generalStatus, generalStatus) || other.generalStatus == generalStatus)&&(identical(other.lostModeStatus, lostModeStatus) || other.lostModeStatus == lostModeStatus)&&const DeepCollectionEquality().equals(other._tags, _tags));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,deviceId,deviceName,serialNumber,platform,model,osVersion,assetTag,blueprintId,blueprintName,user,lastCheckIn,firstEnrollment,agentVersion,isMissing,isRemoved,isSupervised,generalStatus,lostModeStatus,const DeepCollectionEquality().hash(_tags)]);

@override
String toString() {
  return 'Device(deviceId: $deviceId, deviceName: $deviceName, serialNumber: $serialNumber, platform: $platform, model: $model, osVersion: $osVersion, assetTag: $assetTag, blueprintId: $blueprintId, blueprintName: $blueprintName, user: $user, lastCheckIn: $lastCheckIn, firstEnrollment: $firstEnrollment, agentVersion: $agentVersion, isMissing: $isMissing, isRemoved: $isRemoved, isSupervised: $isSupervised, generalStatus: $generalStatus, lostModeStatus: $lostModeStatus, tags: $tags)';
}


}

/// @nodoc
abstract mixin class _$DeviceCopyWith<$Res> implements $DeviceCopyWith<$Res> {
  factory _$DeviceCopyWith(_Device value, $Res Function(_Device) _then) = __$DeviceCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'device_id') String deviceId,@JsonKey(name: 'device_name') String? deviceName,@JsonKey(name: 'serial_number') String? serialNumber, String? platform, String? model,@JsonKey(name: 'os_version') String? osVersion,@JsonKey(name: 'asset_tag') String? assetTag,@JsonKey(name: 'blueprint_id') String? blueprintId,@JsonKey(name: 'blueprint_name') String? blueprintName,@JsonKey(name: 'user', fromJson: _userFromJson) DeviceUser? user,@JsonKey(name: 'last_check_in') String? lastCheckIn,@JsonKey(name: 'first_enrollment') String? firstEnrollment,@JsonKey(name: 'agent_version') String? agentVersion,@JsonKey(name: 'is_missing') bool isMissing,@JsonKey(name: 'is_removed') bool isRemoved,@JsonKey(name: 'is_supervised') bool isSupervised,@JsonKey(name: 'general_status') String? generalStatus,@JsonKey(name: 'lost_mode_status') String? lostModeStatus,@JsonKey(name: 'tags', fromJson: _tagsFromJson) List<String> tags
});


@override $DeviceUserCopyWith<$Res>? get user;

}
/// @nodoc
class __$DeviceCopyWithImpl<$Res>
    implements _$DeviceCopyWith<$Res> {
  __$DeviceCopyWithImpl(this._self, this._then);

  final _Device _self;
  final $Res Function(_Device) _then;

/// Create a copy of Device
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? deviceId = null,Object? deviceName = freezed,Object? serialNumber = freezed,Object? platform = freezed,Object? model = freezed,Object? osVersion = freezed,Object? assetTag = freezed,Object? blueprintId = freezed,Object? blueprintName = freezed,Object? user = freezed,Object? lastCheckIn = freezed,Object? firstEnrollment = freezed,Object? agentVersion = freezed,Object? isMissing = null,Object? isRemoved = null,Object? isSupervised = null,Object? generalStatus = freezed,Object? lostModeStatus = freezed,Object? tags = null,}) {
  return _then(_Device(
deviceId: null == deviceId ? _self.deviceId : deviceId // ignore: cast_nullable_to_non_nullable
as String,deviceName: freezed == deviceName ? _self.deviceName : deviceName // ignore: cast_nullable_to_non_nullable
as String?,serialNumber: freezed == serialNumber ? _self.serialNumber : serialNumber // ignore: cast_nullable_to_non_nullable
as String?,platform: freezed == platform ? _self.platform : platform // ignore: cast_nullable_to_non_nullable
as String?,model: freezed == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as String?,osVersion: freezed == osVersion ? _self.osVersion : osVersion // ignore: cast_nullable_to_non_nullable
as String?,assetTag: freezed == assetTag ? _self.assetTag : assetTag // ignore: cast_nullable_to_non_nullable
as String?,blueprintId: freezed == blueprintId ? _self.blueprintId : blueprintId // ignore: cast_nullable_to_non_nullable
as String?,blueprintName: freezed == blueprintName ? _self.blueprintName : blueprintName // ignore: cast_nullable_to_non_nullable
as String?,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as DeviceUser?,lastCheckIn: freezed == lastCheckIn ? _self.lastCheckIn : lastCheckIn // ignore: cast_nullable_to_non_nullable
as String?,firstEnrollment: freezed == firstEnrollment ? _self.firstEnrollment : firstEnrollment // ignore: cast_nullable_to_non_nullable
as String?,agentVersion: freezed == agentVersion ? _self.agentVersion : agentVersion // ignore: cast_nullable_to_non_nullable
as String?,isMissing: null == isMissing ? _self.isMissing : isMissing // ignore: cast_nullable_to_non_nullable
as bool,isRemoved: null == isRemoved ? _self.isRemoved : isRemoved // ignore: cast_nullable_to_non_nullable
as bool,isSupervised: null == isSupervised ? _self.isSupervised : isSupervised // ignore: cast_nullable_to_non_nullable
as bool,generalStatus: freezed == generalStatus ? _self.generalStatus : generalStatus // ignore: cast_nullable_to_non_nullable
as String?,lostModeStatus: freezed == lostModeStatus ? _self.lostModeStatus : lostModeStatus // ignore: cast_nullable_to_non_nullable
as String?,tags: null == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

/// Create a copy of Device
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DeviceUserCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $DeviceUserCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// @nodoc
mixin _$DeviceUser {

 String? get email; String? get name;@JsonKey(name: 'user_id') String? get userId;
/// Create a copy of DeviceUser
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeviceUserCopyWith<DeviceUser> get copyWith => _$DeviceUserCopyWithImpl<DeviceUser>(this as DeviceUser, _$identity);

  /// Serializes this DeviceUser to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeviceUser&&(identical(other.email, email) || other.email == email)&&(identical(other.name, name) || other.name == name)&&(identical(other.userId, userId) || other.userId == userId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email,name,userId);

@override
String toString() {
  return 'DeviceUser(email: $email, name: $name, userId: $userId)';
}


}

/// @nodoc
abstract mixin class $DeviceUserCopyWith<$Res>  {
  factory $DeviceUserCopyWith(DeviceUser value, $Res Function(DeviceUser) _then) = _$DeviceUserCopyWithImpl;
@useResult
$Res call({
 String? email, String? name,@JsonKey(name: 'user_id') String? userId
});




}
/// @nodoc
class _$DeviceUserCopyWithImpl<$Res>
    implements $DeviceUserCopyWith<$Res> {
  _$DeviceUserCopyWithImpl(this._self, this._then);

  final DeviceUser _self;
  final $Res Function(DeviceUser) _then;

/// Create a copy of DeviceUser
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? email = freezed,Object? name = freezed,Object? userId = freezed,}) {
  return _then(_self.copyWith(
email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [DeviceUser].
extension DeviceUserPatterns on DeviceUser {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DeviceUser value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DeviceUser() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DeviceUser value)  $default,){
final _that = this;
switch (_that) {
case _DeviceUser():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DeviceUser value)?  $default,){
final _that = this;
switch (_that) {
case _DeviceUser() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? email,  String? name, @JsonKey(name: 'user_id')  String? userId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DeviceUser() when $default != null:
return $default(_that.email,_that.name,_that.userId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? email,  String? name, @JsonKey(name: 'user_id')  String? userId)  $default,) {final _that = this;
switch (_that) {
case _DeviceUser():
return $default(_that.email,_that.name,_that.userId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? email,  String? name, @JsonKey(name: 'user_id')  String? userId)?  $default,) {final _that = this;
switch (_that) {
case _DeviceUser() when $default != null:
return $default(_that.email,_that.name,_that.userId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DeviceUser implements DeviceUser {
  const _DeviceUser({this.email, this.name, @JsonKey(name: 'user_id') this.userId});
  factory _DeviceUser.fromJson(Map<String, dynamic> json) => _$DeviceUserFromJson(json);

@override final  String? email;
@override final  String? name;
@override@JsonKey(name: 'user_id') final  String? userId;

/// Create a copy of DeviceUser
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeviceUserCopyWith<_DeviceUser> get copyWith => __$DeviceUserCopyWithImpl<_DeviceUser>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DeviceUserToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeviceUser&&(identical(other.email, email) || other.email == email)&&(identical(other.name, name) || other.name == name)&&(identical(other.userId, userId) || other.userId == userId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email,name,userId);

@override
String toString() {
  return 'DeviceUser(email: $email, name: $name, userId: $userId)';
}


}

/// @nodoc
abstract mixin class _$DeviceUserCopyWith<$Res> implements $DeviceUserCopyWith<$Res> {
  factory _$DeviceUserCopyWith(_DeviceUser value, $Res Function(_DeviceUser) _then) = __$DeviceUserCopyWithImpl;
@override @useResult
$Res call({
 String? email, String? name,@JsonKey(name: 'user_id') String? userId
});




}
/// @nodoc
class __$DeviceUserCopyWithImpl<$Res>
    implements _$DeviceUserCopyWith<$Res> {
  __$DeviceUserCopyWithImpl(this._self, this._then);

  final _DeviceUser _self;
  final $Res Function(_DeviceUser) _then;

/// Create a copy of DeviceUser
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? email = freezed,Object? name = freezed,Object? userId = freezed,}) {
  return _then(_DeviceUser(
email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
