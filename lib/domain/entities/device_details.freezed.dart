// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'device_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DeviceDetails {

 DeviceGeneral? get general; DeviceHardware? get hardware; DeviceSecurity? get security; DeviceCellular? get cellular; DeviceLostMode? get lostMode; DeviceMdm? get mdm; DeviceNetwork? get network; List<DeviceVolume> get volumes; DeviceUsers? get users;
/// Create a copy of DeviceDetails
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeviceDetailsCopyWith<DeviceDetails> get copyWith => _$DeviceDetailsCopyWithImpl<DeviceDetails>(this as DeviceDetails, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeviceDetails&&(identical(other.general, general) || other.general == general)&&(identical(other.hardware, hardware) || other.hardware == hardware)&&(identical(other.security, security) || other.security == security)&&(identical(other.cellular, cellular) || other.cellular == cellular)&&(identical(other.lostMode, lostMode) || other.lostMode == lostMode)&&(identical(other.mdm, mdm) || other.mdm == mdm)&&(identical(other.network, network) || other.network == network)&&const DeepCollectionEquality().equals(other.volumes, volumes)&&(identical(other.users, users) || other.users == users));
}


@override
int get hashCode => Object.hash(runtimeType,general,hardware,security,cellular,lostMode,mdm,network,const DeepCollectionEquality().hash(volumes),users);

@override
String toString() {
  return 'DeviceDetails(general: $general, hardware: $hardware, security: $security, cellular: $cellular, lostMode: $lostMode, mdm: $mdm, network: $network, volumes: $volumes, users: $users)';
}


}

/// @nodoc
abstract mixin class $DeviceDetailsCopyWith<$Res>  {
  factory $DeviceDetailsCopyWith(DeviceDetails value, $Res Function(DeviceDetails) _then) = _$DeviceDetailsCopyWithImpl;
@useResult
$Res call({
 DeviceGeneral? general, DeviceHardware? hardware, DeviceSecurity? security, DeviceCellular? cellular, DeviceLostMode? lostMode, DeviceMdm? mdm, DeviceNetwork? network, List<DeviceVolume> volumes, DeviceUsers? users
});


$DeviceGeneralCopyWith<$Res>? get general;$DeviceHardwareCopyWith<$Res>? get hardware;$DeviceSecurityCopyWith<$Res>? get security;$DeviceCellularCopyWith<$Res>? get cellular;$DeviceLostModeCopyWith<$Res>? get lostMode;$DeviceMdmCopyWith<$Res>? get mdm;$DeviceNetworkCopyWith<$Res>? get network;$DeviceUsersCopyWith<$Res>? get users;

}
/// @nodoc
class _$DeviceDetailsCopyWithImpl<$Res>
    implements $DeviceDetailsCopyWith<$Res> {
  _$DeviceDetailsCopyWithImpl(this._self, this._then);

  final DeviceDetails _self;
  final $Res Function(DeviceDetails) _then;

/// Create a copy of DeviceDetails
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? general = freezed,Object? hardware = freezed,Object? security = freezed,Object? cellular = freezed,Object? lostMode = freezed,Object? mdm = freezed,Object? network = freezed,Object? volumes = null,Object? users = freezed,}) {
  return _then(_self.copyWith(
general: freezed == general ? _self.general : general // ignore: cast_nullable_to_non_nullable
as DeviceGeneral?,hardware: freezed == hardware ? _self.hardware : hardware // ignore: cast_nullable_to_non_nullable
as DeviceHardware?,security: freezed == security ? _self.security : security // ignore: cast_nullable_to_non_nullable
as DeviceSecurity?,cellular: freezed == cellular ? _self.cellular : cellular // ignore: cast_nullable_to_non_nullable
as DeviceCellular?,lostMode: freezed == lostMode ? _self.lostMode : lostMode // ignore: cast_nullable_to_non_nullable
as DeviceLostMode?,mdm: freezed == mdm ? _self.mdm : mdm // ignore: cast_nullable_to_non_nullable
as DeviceMdm?,network: freezed == network ? _self.network : network // ignore: cast_nullable_to_non_nullable
as DeviceNetwork?,volumes: null == volumes ? _self.volumes : volumes // ignore: cast_nullable_to_non_nullable
as List<DeviceVolume>,users: freezed == users ? _self.users : users // ignore: cast_nullable_to_non_nullable
as DeviceUsers?,
  ));
}
/// Create a copy of DeviceDetails
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DeviceGeneralCopyWith<$Res>? get general {
    if (_self.general == null) {
    return null;
  }

  return $DeviceGeneralCopyWith<$Res>(_self.general!, (value) {
    return _then(_self.copyWith(general: value));
  });
}/// Create a copy of DeviceDetails
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DeviceHardwareCopyWith<$Res>? get hardware {
    if (_self.hardware == null) {
    return null;
  }

  return $DeviceHardwareCopyWith<$Res>(_self.hardware!, (value) {
    return _then(_self.copyWith(hardware: value));
  });
}/// Create a copy of DeviceDetails
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DeviceSecurityCopyWith<$Res>? get security {
    if (_self.security == null) {
    return null;
  }

  return $DeviceSecurityCopyWith<$Res>(_self.security!, (value) {
    return _then(_self.copyWith(security: value));
  });
}/// Create a copy of DeviceDetails
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DeviceCellularCopyWith<$Res>? get cellular {
    if (_self.cellular == null) {
    return null;
  }

  return $DeviceCellularCopyWith<$Res>(_self.cellular!, (value) {
    return _then(_self.copyWith(cellular: value));
  });
}/// Create a copy of DeviceDetails
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DeviceLostModeCopyWith<$Res>? get lostMode {
    if (_self.lostMode == null) {
    return null;
  }

  return $DeviceLostModeCopyWith<$Res>(_self.lostMode!, (value) {
    return _then(_self.copyWith(lostMode: value));
  });
}/// Create a copy of DeviceDetails
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DeviceMdmCopyWith<$Res>? get mdm {
    if (_self.mdm == null) {
    return null;
  }

  return $DeviceMdmCopyWith<$Res>(_self.mdm!, (value) {
    return _then(_self.copyWith(mdm: value));
  });
}/// Create a copy of DeviceDetails
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DeviceNetworkCopyWith<$Res>? get network {
    if (_self.network == null) {
    return null;
  }

  return $DeviceNetworkCopyWith<$Res>(_self.network!, (value) {
    return _then(_self.copyWith(network: value));
  });
}/// Create a copy of DeviceDetails
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DeviceUsersCopyWith<$Res>? get users {
    if (_self.users == null) {
    return null;
  }

  return $DeviceUsersCopyWith<$Res>(_self.users!, (value) {
    return _then(_self.copyWith(users: value));
  });
}
}


/// Adds pattern-matching-related methods to [DeviceDetails].
extension DeviceDetailsPatterns on DeviceDetails {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DeviceDetails value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DeviceDetails() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DeviceDetails value)  $default,){
final _that = this;
switch (_that) {
case _DeviceDetails():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DeviceDetails value)?  $default,){
final _that = this;
switch (_that) {
case _DeviceDetails() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DeviceGeneral? general,  DeviceHardware? hardware,  DeviceSecurity? security,  DeviceCellular? cellular,  DeviceLostMode? lostMode,  DeviceMdm? mdm,  DeviceNetwork? network,  List<DeviceVolume> volumes,  DeviceUsers? users)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DeviceDetails() when $default != null:
return $default(_that.general,_that.hardware,_that.security,_that.cellular,_that.lostMode,_that.mdm,_that.network,_that.volumes,_that.users);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DeviceGeneral? general,  DeviceHardware? hardware,  DeviceSecurity? security,  DeviceCellular? cellular,  DeviceLostMode? lostMode,  DeviceMdm? mdm,  DeviceNetwork? network,  List<DeviceVolume> volumes,  DeviceUsers? users)  $default,) {final _that = this;
switch (_that) {
case _DeviceDetails():
return $default(_that.general,_that.hardware,_that.security,_that.cellular,_that.lostMode,_that.mdm,_that.network,_that.volumes,_that.users);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DeviceGeneral? general,  DeviceHardware? hardware,  DeviceSecurity? security,  DeviceCellular? cellular,  DeviceLostMode? lostMode,  DeviceMdm? mdm,  DeviceNetwork? network,  List<DeviceVolume> volumes,  DeviceUsers? users)?  $default,) {final _that = this;
switch (_that) {
case _DeviceDetails() when $default != null:
return $default(_that.general,_that.hardware,_that.security,_that.cellular,_that.lostMode,_that.mdm,_that.network,_that.volumes,_that.users);case _:
  return null;

}
}

}

/// @nodoc


class _DeviceDetails extends DeviceDetails {
  const _DeviceDetails({this.general, this.hardware, this.security, this.cellular, this.lostMode, this.mdm, this.network, final  List<DeviceVolume> volumes = const [], this.users}): _volumes = volumes,super._();
  

@override final  DeviceGeneral? general;
@override final  DeviceHardware? hardware;
@override final  DeviceSecurity? security;
@override final  DeviceCellular? cellular;
@override final  DeviceLostMode? lostMode;
@override final  DeviceMdm? mdm;
@override final  DeviceNetwork? network;
 final  List<DeviceVolume> _volumes;
@override@JsonKey() List<DeviceVolume> get volumes {
  if (_volumes is EqualUnmodifiableListView) return _volumes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_volumes);
}

@override final  DeviceUsers? users;

/// Create a copy of DeviceDetails
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeviceDetailsCopyWith<_DeviceDetails> get copyWith => __$DeviceDetailsCopyWithImpl<_DeviceDetails>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeviceDetails&&(identical(other.general, general) || other.general == general)&&(identical(other.hardware, hardware) || other.hardware == hardware)&&(identical(other.security, security) || other.security == security)&&(identical(other.cellular, cellular) || other.cellular == cellular)&&(identical(other.lostMode, lostMode) || other.lostMode == lostMode)&&(identical(other.mdm, mdm) || other.mdm == mdm)&&(identical(other.network, network) || other.network == network)&&const DeepCollectionEquality().equals(other._volumes, _volumes)&&(identical(other.users, users) || other.users == users));
}


@override
int get hashCode => Object.hash(runtimeType,general,hardware,security,cellular,lostMode,mdm,network,const DeepCollectionEquality().hash(_volumes),users);

@override
String toString() {
  return 'DeviceDetails(general: $general, hardware: $hardware, security: $security, cellular: $cellular, lostMode: $lostMode, mdm: $mdm, network: $network, volumes: $volumes, users: $users)';
}


}

/// @nodoc
abstract mixin class _$DeviceDetailsCopyWith<$Res> implements $DeviceDetailsCopyWith<$Res> {
  factory _$DeviceDetailsCopyWith(_DeviceDetails value, $Res Function(_DeviceDetails) _then) = __$DeviceDetailsCopyWithImpl;
@override @useResult
$Res call({
 DeviceGeneral? general, DeviceHardware? hardware, DeviceSecurity? security, DeviceCellular? cellular, DeviceLostMode? lostMode, DeviceMdm? mdm, DeviceNetwork? network, List<DeviceVolume> volumes, DeviceUsers? users
});


@override $DeviceGeneralCopyWith<$Res>? get general;@override $DeviceHardwareCopyWith<$Res>? get hardware;@override $DeviceSecurityCopyWith<$Res>? get security;@override $DeviceCellularCopyWith<$Res>? get cellular;@override $DeviceLostModeCopyWith<$Res>? get lostMode;@override $DeviceMdmCopyWith<$Res>? get mdm;@override $DeviceNetworkCopyWith<$Res>? get network;@override $DeviceUsersCopyWith<$Res>? get users;

}
/// @nodoc
class __$DeviceDetailsCopyWithImpl<$Res>
    implements _$DeviceDetailsCopyWith<$Res> {
  __$DeviceDetailsCopyWithImpl(this._self, this._then);

  final _DeviceDetails _self;
  final $Res Function(_DeviceDetails) _then;

/// Create a copy of DeviceDetails
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? general = freezed,Object? hardware = freezed,Object? security = freezed,Object? cellular = freezed,Object? lostMode = freezed,Object? mdm = freezed,Object? network = freezed,Object? volumes = null,Object? users = freezed,}) {
  return _then(_DeviceDetails(
general: freezed == general ? _self.general : general // ignore: cast_nullable_to_non_nullable
as DeviceGeneral?,hardware: freezed == hardware ? _self.hardware : hardware // ignore: cast_nullable_to_non_nullable
as DeviceHardware?,security: freezed == security ? _self.security : security // ignore: cast_nullable_to_non_nullable
as DeviceSecurity?,cellular: freezed == cellular ? _self.cellular : cellular // ignore: cast_nullable_to_non_nullable
as DeviceCellular?,lostMode: freezed == lostMode ? _self.lostMode : lostMode // ignore: cast_nullable_to_non_nullable
as DeviceLostMode?,mdm: freezed == mdm ? _self.mdm : mdm // ignore: cast_nullable_to_non_nullable
as DeviceMdm?,network: freezed == network ? _self.network : network // ignore: cast_nullable_to_non_nullable
as DeviceNetwork?,volumes: null == volumes ? _self._volumes : volumes // ignore: cast_nullable_to_non_nullable
as List<DeviceVolume>,users: freezed == users ? _self.users : users // ignore: cast_nullable_to_non_nullable
as DeviceUsers?,
  ));
}

/// Create a copy of DeviceDetails
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DeviceGeneralCopyWith<$Res>? get general {
    if (_self.general == null) {
    return null;
  }

  return $DeviceGeneralCopyWith<$Res>(_self.general!, (value) {
    return _then(_self.copyWith(general: value));
  });
}/// Create a copy of DeviceDetails
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DeviceHardwareCopyWith<$Res>? get hardware {
    if (_self.hardware == null) {
    return null;
  }

  return $DeviceHardwareCopyWith<$Res>(_self.hardware!, (value) {
    return _then(_self.copyWith(hardware: value));
  });
}/// Create a copy of DeviceDetails
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DeviceSecurityCopyWith<$Res>? get security {
    if (_self.security == null) {
    return null;
  }

  return $DeviceSecurityCopyWith<$Res>(_self.security!, (value) {
    return _then(_self.copyWith(security: value));
  });
}/// Create a copy of DeviceDetails
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DeviceCellularCopyWith<$Res>? get cellular {
    if (_self.cellular == null) {
    return null;
  }

  return $DeviceCellularCopyWith<$Res>(_self.cellular!, (value) {
    return _then(_self.copyWith(cellular: value));
  });
}/// Create a copy of DeviceDetails
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DeviceLostModeCopyWith<$Res>? get lostMode {
    if (_self.lostMode == null) {
    return null;
  }

  return $DeviceLostModeCopyWith<$Res>(_self.lostMode!, (value) {
    return _then(_self.copyWith(lostMode: value));
  });
}/// Create a copy of DeviceDetails
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DeviceMdmCopyWith<$Res>? get mdm {
    if (_self.mdm == null) {
    return null;
  }

  return $DeviceMdmCopyWith<$Res>(_self.mdm!, (value) {
    return _then(_self.copyWith(mdm: value));
  });
}/// Create a copy of DeviceDetails
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DeviceNetworkCopyWith<$Res>? get network {
    if (_self.network == null) {
    return null;
  }

  return $DeviceNetworkCopyWith<$Res>(_self.network!, (value) {
    return _then(_self.copyWith(network: value));
  });
}/// Create a copy of DeviceDetails
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DeviceUsersCopyWith<$Res>? get users {
    if (_self.users == null) {
    return null;
  }

  return $DeviceUsersCopyWith<$Res>(_self.users!, (value) {
    return _then(_self.copyWith(users: value));
  });
}
}


/// @nodoc
mixin _$DeviceGeneral {

@JsonKey(name: 'device_id') String? get deviceId;@JsonKey(name: 'device_name') String? get deviceName;@JsonKey(name: 'serial_number') String? get serialNumber;@JsonKey(name: 'model_name') String? get modelName; String? get platform;@JsonKey(name: 'os_version') String? get osVersion;@JsonKey(name: 'os_build') String? get osBuild;@JsonKey(name: 'asset_tag') String? get assetTag;@JsonKey(name: 'blueprint_name') String? get blueprintName;@JsonKey(name: 'blueprint_uuid') String? get blueprintUuid;@JsonKey(name: 'first_enrollment') String? get firstEnrollment;@JsonKey(name: 'last_enrollment') String? get lastEnrollment;@JsonKey(name: 'api_level') String? get apiLevel;@JsonKey(name: 'security_patch_level') String? get securityPatchLevel; String? get manufacturer;@JsonKey(name: 'enterprise_id') String? get enterpriseId;@JsonKey(name: 'boot_volume') String? get bootVolume;@JsonKey(name: 'last_user') String? get lastUser;@JsonKey(name: 'battery_level') String? get batteryLevel;
/// Create a copy of DeviceGeneral
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeviceGeneralCopyWith<DeviceGeneral> get copyWith => _$DeviceGeneralCopyWithImpl<DeviceGeneral>(this as DeviceGeneral, _$identity);

  /// Serializes this DeviceGeneral to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeviceGeneral&&(identical(other.deviceId, deviceId) || other.deviceId == deviceId)&&(identical(other.deviceName, deviceName) || other.deviceName == deviceName)&&(identical(other.serialNumber, serialNumber) || other.serialNumber == serialNumber)&&(identical(other.modelName, modelName) || other.modelName == modelName)&&(identical(other.platform, platform) || other.platform == platform)&&(identical(other.osVersion, osVersion) || other.osVersion == osVersion)&&(identical(other.osBuild, osBuild) || other.osBuild == osBuild)&&(identical(other.assetTag, assetTag) || other.assetTag == assetTag)&&(identical(other.blueprintName, blueprintName) || other.blueprintName == blueprintName)&&(identical(other.blueprintUuid, blueprintUuid) || other.blueprintUuid == blueprintUuid)&&(identical(other.firstEnrollment, firstEnrollment) || other.firstEnrollment == firstEnrollment)&&(identical(other.lastEnrollment, lastEnrollment) || other.lastEnrollment == lastEnrollment)&&(identical(other.apiLevel, apiLevel) || other.apiLevel == apiLevel)&&(identical(other.securityPatchLevel, securityPatchLevel) || other.securityPatchLevel == securityPatchLevel)&&(identical(other.manufacturer, manufacturer) || other.manufacturer == manufacturer)&&(identical(other.enterpriseId, enterpriseId) || other.enterpriseId == enterpriseId)&&(identical(other.bootVolume, bootVolume) || other.bootVolume == bootVolume)&&(identical(other.lastUser, lastUser) || other.lastUser == lastUser)&&(identical(other.batteryLevel, batteryLevel) || other.batteryLevel == batteryLevel));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,deviceId,deviceName,serialNumber,modelName,platform,osVersion,osBuild,assetTag,blueprintName,blueprintUuid,firstEnrollment,lastEnrollment,apiLevel,securityPatchLevel,manufacturer,enterpriseId,bootVolume,lastUser,batteryLevel]);

@override
String toString() {
  return 'DeviceGeneral(deviceId: $deviceId, deviceName: $deviceName, serialNumber: $serialNumber, modelName: $modelName, platform: $platform, osVersion: $osVersion, osBuild: $osBuild, assetTag: $assetTag, blueprintName: $blueprintName, blueprintUuid: $blueprintUuid, firstEnrollment: $firstEnrollment, lastEnrollment: $lastEnrollment, apiLevel: $apiLevel, securityPatchLevel: $securityPatchLevel, manufacturer: $manufacturer, enterpriseId: $enterpriseId, bootVolume: $bootVolume, lastUser: $lastUser, batteryLevel: $batteryLevel)';
}


}

/// @nodoc
abstract mixin class $DeviceGeneralCopyWith<$Res>  {
  factory $DeviceGeneralCopyWith(DeviceGeneral value, $Res Function(DeviceGeneral) _then) = _$DeviceGeneralCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'device_id') String? deviceId,@JsonKey(name: 'device_name') String? deviceName,@JsonKey(name: 'serial_number') String? serialNumber,@JsonKey(name: 'model_name') String? modelName, String? platform,@JsonKey(name: 'os_version') String? osVersion,@JsonKey(name: 'os_build') String? osBuild,@JsonKey(name: 'asset_tag') String? assetTag,@JsonKey(name: 'blueprint_name') String? blueprintName,@JsonKey(name: 'blueprint_uuid') String? blueprintUuid,@JsonKey(name: 'first_enrollment') String? firstEnrollment,@JsonKey(name: 'last_enrollment') String? lastEnrollment,@JsonKey(name: 'api_level') String? apiLevel,@JsonKey(name: 'security_patch_level') String? securityPatchLevel, String? manufacturer,@JsonKey(name: 'enterprise_id') String? enterpriseId,@JsonKey(name: 'boot_volume') String? bootVolume,@JsonKey(name: 'last_user') String? lastUser,@JsonKey(name: 'battery_level') String? batteryLevel
});




}
/// @nodoc
class _$DeviceGeneralCopyWithImpl<$Res>
    implements $DeviceGeneralCopyWith<$Res> {
  _$DeviceGeneralCopyWithImpl(this._self, this._then);

  final DeviceGeneral _self;
  final $Res Function(DeviceGeneral) _then;

/// Create a copy of DeviceGeneral
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? deviceId = freezed,Object? deviceName = freezed,Object? serialNumber = freezed,Object? modelName = freezed,Object? platform = freezed,Object? osVersion = freezed,Object? osBuild = freezed,Object? assetTag = freezed,Object? blueprintName = freezed,Object? blueprintUuid = freezed,Object? firstEnrollment = freezed,Object? lastEnrollment = freezed,Object? apiLevel = freezed,Object? securityPatchLevel = freezed,Object? manufacturer = freezed,Object? enterpriseId = freezed,Object? bootVolume = freezed,Object? lastUser = freezed,Object? batteryLevel = freezed,}) {
  return _then(_self.copyWith(
deviceId: freezed == deviceId ? _self.deviceId : deviceId // ignore: cast_nullable_to_non_nullable
as String?,deviceName: freezed == deviceName ? _self.deviceName : deviceName // ignore: cast_nullable_to_non_nullable
as String?,serialNumber: freezed == serialNumber ? _self.serialNumber : serialNumber // ignore: cast_nullable_to_non_nullable
as String?,modelName: freezed == modelName ? _self.modelName : modelName // ignore: cast_nullable_to_non_nullable
as String?,platform: freezed == platform ? _self.platform : platform // ignore: cast_nullable_to_non_nullable
as String?,osVersion: freezed == osVersion ? _self.osVersion : osVersion // ignore: cast_nullable_to_non_nullable
as String?,osBuild: freezed == osBuild ? _self.osBuild : osBuild // ignore: cast_nullable_to_non_nullable
as String?,assetTag: freezed == assetTag ? _self.assetTag : assetTag // ignore: cast_nullable_to_non_nullable
as String?,blueprintName: freezed == blueprintName ? _self.blueprintName : blueprintName // ignore: cast_nullable_to_non_nullable
as String?,blueprintUuid: freezed == blueprintUuid ? _self.blueprintUuid : blueprintUuid // ignore: cast_nullable_to_non_nullable
as String?,firstEnrollment: freezed == firstEnrollment ? _self.firstEnrollment : firstEnrollment // ignore: cast_nullable_to_non_nullable
as String?,lastEnrollment: freezed == lastEnrollment ? _self.lastEnrollment : lastEnrollment // ignore: cast_nullable_to_non_nullable
as String?,apiLevel: freezed == apiLevel ? _self.apiLevel : apiLevel // ignore: cast_nullable_to_non_nullable
as String?,securityPatchLevel: freezed == securityPatchLevel ? _self.securityPatchLevel : securityPatchLevel // ignore: cast_nullable_to_non_nullable
as String?,manufacturer: freezed == manufacturer ? _self.manufacturer : manufacturer // ignore: cast_nullable_to_non_nullable
as String?,enterpriseId: freezed == enterpriseId ? _self.enterpriseId : enterpriseId // ignore: cast_nullable_to_non_nullable
as String?,bootVolume: freezed == bootVolume ? _self.bootVolume : bootVolume // ignore: cast_nullable_to_non_nullable
as String?,lastUser: freezed == lastUser ? _self.lastUser : lastUser // ignore: cast_nullable_to_non_nullable
as String?,batteryLevel: freezed == batteryLevel ? _self.batteryLevel : batteryLevel // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [DeviceGeneral].
extension DeviceGeneralPatterns on DeviceGeneral {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DeviceGeneral value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DeviceGeneral() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DeviceGeneral value)  $default,){
final _that = this;
switch (_that) {
case _DeviceGeneral():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DeviceGeneral value)?  $default,){
final _that = this;
switch (_that) {
case _DeviceGeneral() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'device_id')  String? deviceId, @JsonKey(name: 'device_name')  String? deviceName, @JsonKey(name: 'serial_number')  String? serialNumber, @JsonKey(name: 'model_name')  String? modelName,  String? platform, @JsonKey(name: 'os_version')  String? osVersion, @JsonKey(name: 'os_build')  String? osBuild, @JsonKey(name: 'asset_tag')  String? assetTag, @JsonKey(name: 'blueprint_name')  String? blueprintName, @JsonKey(name: 'blueprint_uuid')  String? blueprintUuid, @JsonKey(name: 'first_enrollment')  String? firstEnrollment, @JsonKey(name: 'last_enrollment')  String? lastEnrollment, @JsonKey(name: 'api_level')  String? apiLevel, @JsonKey(name: 'security_patch_level')  String? securityPatchLevel,  String? manufacturer, @JsonKey(name: 'enterprise_id')  String? enterpriseId, @JsonKey(name: 'boot_volume')  String? bootVolume, @JsonKey(name: 'last_user')  String? lastUser, @JsonKey(name: 'battery_level')  String? batteryLevel)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DeviceGeneral() when $default != null:
return $default(_that.deviceId,_that.deviceName,_that.serialNumber,_that.modelName,_that.platform,_that.osVersion,_that.osBuild,_that.assetTag,_that.blueprintName,_that.blueprintUuid,_that.firstEnrollment,_that.lastEnrollment,_that.apiLevel,_that.securityPatchLevel,_that.manufacturer,_that.enterpriseId,_that.bootVolume,_that.lastUser,_that.batteryLevel);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'device_id')  String? deviceId, @JsonKey(name: 'device_name')  String? deviceName, @JsonKey(name: 'serial_number')  String? serialNumber, @JsonKey(name: 'model_name')  String? modelName,  String? platform, @JsonKey(name: 'os_version')  String? osVersion, @JsonKey(name: 'os_build')  String? osBuild, @JsonKey(name: 'asset_tag')  String? assetTag, @JsonKey(name: 'blueprint_name')  String? blueprintName, @JsonKey(name: 'blueprint_uuid')  String? blueprintUuid, @JsonKey(name: 'first_enrollment')  String? firstEnrollment, @JsonKey(name: 'last_enrollment')  String? lastEnrollment, @JsonKey(name: 'api_level')  String? apiLevel, @JsonKey(name: 'security_patch_level')  String? securityPatchLevel,  String? manufacturer, @JsonKey(name: 'enterprise_id')  String? enterpriseId, @JsonKey(name: 'boot_volume')  String? bootVolume, @JsonKey(name: 'last_user')  String? lastUser, @JsonKey(name: 'battery_level')  String? batteryLevel)  $default,) {final _that = this;
switch (_that) {
case _DeviceGeneral():
return $default(_that.deviceId,_that.deviceName,_that.serialNumber,_that.modelName,_that.platform,_that.osVersion,_that.osBuild,_that.assetTag,_that.blueprintName,_that.blueprintUuid,_that.firstEnrollment,_that.lastEnrollment,_that.apiLevel,_that.securityPatchLevel,_that.manufacturer,_that.enterpriseId,_that.bootVolume,_that.lastUser,_that.batteryLevel);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'device_id')  String? deviceId, @JsonKey(name: 'device_name')  String? deviceName, @JsonKey(name: 'serial_number')  String? serialNumber, @JsonKey(name: 'model_name')  String? modelName,  String? platform, @JsonKey(name: 'os_version')  String? osVersion, @JsonKey(name: 'os_build')  String? osBuild, @JsonKey(name: 'asset_tag')  String? assetTag, @JsonKey(name: 'blueprint_name')  String? blueprintName, @JsonKey(name: 'blueprint_uuid')  String? blueprintUuid, @JsonKey(name: 'first_enrollment')  String? firstEnrollment, @JsonKey(name: 'last_enrollment')  String? lastEnrollment, @JsonKey(name: 'api_level')  String? apiLevel, @JsonKey(name: 'security_patch_level')  String? securityPatchLevel,  String? manufacturer, @JsonKey(name: 'enterprise_id')  String? enterpriseId, @JsonKey(name: 'boot_volume')  String? bootVolume, @JsonKey(name: 'last_user')  String? lastUser, @JsonKey(name: 'battery_level')  String? batteryLevel)?  $default,) {final _that = this;
switch (_that) {
case _DeviceGeneral() when $default != null:
return $default(_that.deviceId,_that.deviceName,_that.serialNumber,_that.modelName,_that.platform,_that.osVersion,_that.osBuild,_that.assetTag,_that.blueprintName,_that.blueprintUuid,_that.firstEnrollment,_that.lastEnrollment,_that.apiLevel,_that.securityPatchLevel,_that.manufacturer,_that.enterpriseId,_that.bootVolume,_that.lastUser,_that.batteryLevel);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DeviceGeneral implements DeviceGeneral {
  const _DeviceGeneral({@JsonKey(name: 'device_id') this.deviceId, @JsonKey(name: 'device_name') this.deviceName, @JsonKey(name: 'serial_number') this.serialNumber, @JsonKey(name: 'model_name') this.modelName, this.platform, @JsonKey(name: 'os_version') this.osVersion, @JsonKey(name: 'os_build') this.osBuild, @JsonKey(name: 'asset_tag') this.assetTag, @JsonKey(name: 'blueprint_name') this.blueprintName, @JsonKey(name: 'blueprint_uuid') this.blueprintUuid, @JsonKey(name: 'first_enrollment') this.firstEnrollment, @JsonKey(name: 'last_enrollment') this.lastEnrollment, @JsonKey(name: 'api_level') this.apiLevel, @JsonKey(name: 'security_patch_level') this.securityPatchLevel, this.manufacturer, @JsonKey(name: 'enterprise_id') this.enterpriseId, @JsonKey(name: 'boot_volume') this.bootVolume, @JsonKey(name: 'last_user') this.lastUser, @JsonKey(name: 'battery_level') this.batteryLevel});
  factory _DeviceGeneral.fromJson(Map<String, dynamic> json) => _$DeviceGeneralFromJson(json);

@override@JsonKey(name: 'device_id') final  String? deviceId;
@override@JsonKey(name: 'device_name') final  String? deviceName;
@override@JsonKey(name: 'serial_number') final  String? serialNumber;
@override@JsonKey(name: 'model_name') final  String? modelName;
@override final  String? platform;
@override@JsonKey(name: 'os_version') final  String? osVersion;
@override@JsonKey(name: 'os_build') final  String? osBuild;
@override@JsonKey(name: 'asset_tag') final  String? assetTag;
@override@JsonKey(name: 'blueprint_name') final  String? blueprintName;
@override@JsonKey(name: 'blueprint_uuid') final  String? blueprintUuid;
@override@JsonKey(name: 'first_enrollment') final  String? firstEnrollment;
@override@JsonKey(name: 'last_enrollment') final  String? lastEnrollment;
@override@JsonKey(name: 'api_level') final  String? apiLevel;
@override@JsonKey(name: 'security_patch_level') final  String? securityPatchLevel;
@override final  String? manufacturer;
@override@JsonKey(name: 'enterprise_id') final  String? enterpriseId;
@override@JsonKey(name: 'boot_volume') final  String? bootVolume;
@override@JsonKey(name: 'last_user') final  String? lastUser;
@override@JsonKey(name: 'battery_level') final  String? batteryLevel;

/// Create a copy of DeviceGeneral
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeviceGeneralCopyWith<_DeviceGeneral> get copyWith => __$DeviceGeneralCopyWithImpl<_DeviceGeneral>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DeviceGeneralToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeviceGeneral&&(identical(other.deviceId, deviceId) || other.deviceId == deviceId)&&(identical(other.deviceName, deviceName) || other.deviceName == deviceName)&&(identical(other.serialNumber, serialNumber) || other.serialNumber == serialNumber)&&(identical(other.modelName, modelName) || other.modelName == modelName)&&(identical(other.platform, platform) || other.platform == platform)&&(identical(other.osVersion, osVersion) || other.osVersion == osVersion)&&(identical(other.osBuild, osBuild) || other.osBuild == osBuild)&&(identical(other.assetTag, assetTag) || other.assetTag == assetTag)&&(identical(other.blueprintName, blueprintName) || other.blueprintName == blueprintName)&&(identical(other.blueprintUuid, blueprintUuid) || other.blueprintUuid == blueprintUuid)&&(identical(other.firstEnrollment, firstEnrollment) || other.firstEnrollment == firstEnrollment)&&(identical(other.lastEnrollment, lastEnrollment) || other.lastEnrollment == lastEnrollment)&&(identical(other.apiLevel, apiLevel) || other.apiLevel == apiLevel)&&(identical(other.securityPatchLevel, securityPatchLevel) || other.securityPatchLevel == securityPatchLevel)&&(identical(other.manufacturer, manufacturer) || other.manufacturer == manufacturer)&&(identical(other.enterpriseId, enterpriseId) || other.enterpriseId == enterpriseId)&&(identical(other.bootVolume, bootVolume) || other.bootVolume == bootVolume)&&(identical(other.lastUser, lastUser) || other.lastUser == lastUser)&&(identical(other.batteryLevel, batteryLevel) || other.batteryLevel == batteryLevel));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,deviceId,deviceName,serialNumber,modelName,platform,osVersion,osBuild,assetTag,blueprintName,blueprintUuid,firstEnrollment,lastEnrollment,apiLevel,securityPatchLevel,manufacturer,enterpriseId,bootVolume,lastUser,batteryLevel]);

@override
String toString() {
  return 'DeviceGeneral(deviceId: $deviceId, deviceName: $deviceName, serialNumber: $serialNumber, modelName: $modelName, platform: $platform, osVersion: $osVersion, osBuild: $osBuild, assetTag: $assetTag, blueprintName: $blueprintName, blueprintUuid: $blueprintUuid, firstEnrollment: $firstEnrollment, lastEnrollment: $lastEnrollment, apiLevel: $apiLevel, securityPatchLevel: $securityPatchLevel, manufacturer: $manufacturer, enterpriseId: $enterpriseId, bootVolume: $bootVolume, lastUser: $lastUser, batteryLevel: $batteryLevel)';
}


}

/// @nodoc
abstract mixin class _$DeviceGeneralCopyWith<$Res> implements $DeviceGeneralCopyWith<$Res> {
  factory _$DeviceGeneralCopyWith(_DeviceGeneral value, $Res Function(_DeviceGeneral) _then) = __$DeviceGeneralCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'device_id') String? deviceId,@JsonKey(name: 'device_name') String? deviceName,@JsonKey(name: 'serial_number') String? serialNumber,@JsonKey(name: 'model_name') String? modelName, String? platform,@JsonKey(name: 'os_version') String? osVersion,@JsonKey(name: 'os_build') String? osBuild,@JsonKey(name: 'asset_tag') String? assetTag,@JsonKey(name: 'blueprint_name') String? blueprintName,@JsonKey(name: 'blueprint_uuid') String? blueprintUuid,@JsonKey(name: 'first_enrollment') String? firstEnrollment,@JsonKey(name: 'last_enrollment') String? lastEnrollment,@JsonKey(name: 'api_level') String? apiLevel,@JsonKey(name: 'security_patch_level') String? securityPatchLevel, String? manufacturer,@JsonKey(name: 'enterprise_id') String? enterpriseId,@JsonKey(name: 'boot_volume') String? bootVolume,@JsonKey(name: 'last_user') String? lastUser,@JsonKey(name: 'battery_level') String? batteryLevel
});




}
/// @nodoc
class __$DeviceGeneralCopyWithImpl<$Res>
    implements _$DeviceGeneralCopyWith<$Res> {
  __$DeviceGeneralCopyWithImpl(this._self, this._then);

  final _DeviceGeneral _self;
  final $Res Function(_DeviceGeneral) _then;

/// Create a copy of DeviceGeneral
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? deviceId = freezed,Object? deviceName = freezed,Object? serialNumber = freezed,Object? modelName = freezed,Object? platform = freezed,Object? osVersion = freezed,Object? osBuild = freezed,Object? assetTag = freezed,Object? blueprintName = freezed,Object? blueprintUuid = freezed,Object? firstEnrollment = freezed,Object? lastEnrollment = freezed,Object? apiLevel = freezed,Object? securityPatchLevel = freezed,Object? manufacturer = freezed,Object? enterpriseId = freezed,Object? bootVolume = freezed,Object? lastUser = freezed,Object? batteryLevel = freezed,}) {
  return _then(_DeviceGeneral(
deviceId: freezed == deviceId ? _self.deviceId : deviceId // ignore: cast_nullable_to_non_nullable
as String?,deviceName: freezed == deviceName ? _self.deviceName : deviceName // ignore: cast_nullable_to_non_nullable
as String?,serialNumber: freezed == serialNumber ? _self.serialNumber : serialNumber // ignore: cast_nullable_to_non_nullable
as String?,modelName: freezed == modelName ? _self.modelName : modelName // ignore: cast_nullable_to_non_nullable
as String?,platform: freezed == platform ? _self.platform : platform // ignore: cast_nullable_to_non_nullable
as String?,osVersion: freezed == osVersion ? _self.osVersion : osVersion // ignore: cast_nullable_to_non_nullable
as String?,osBuild: freezed == osBuild ? _self.osBuild : osBuild // ignore: cast_nullable_to_non_nullable
as String?,assetTag: freezed == assetTag ? _self.assetTag : assetTag // ignore: cast_nullable_to_non_nullable
as String?,blueprintName: freezed == blueprintName ? _self.blueprintName : blueprintName // ignore: cast_nullable_to_non_nullable
as String?,blueprintUuid: freezed == blueprintUuid ? _self.blueprintUuid : blueprintUuid // ignore: cast_nullable_to_non_nullable
as String?,firstEnrollment: freezed == firstEnrollment ? _self.firstEnrollment : firstEnrollment // ignore: cast_nullable_to_non_nullable
as String?,lastEnrollment: freezed == lastEnrollment ? _self.lastEnrollment : lastEnrollment // ignore: cast_nullable_to_non_nullable
as String?,apiLevel: freezed == apiLevel ? _self.apiLevel : apiLevel // ignore: cast_nullable_to_non_nullable
as String?,securityPatchLevel: freezed == securityPatchLevel ? _self.securityPatchLevel : securityPatchLevel // ignore: cast_nullable_to_non_nullable
as String?,manufacturer: freezed == manufacturer ? _self.manufacturer : manufacturer // ignore: cast_nullable_to_non_nullable
as String?,enterpriseId: freezed == enterpriseId ? _self.enterpriseId : enterpriseId // ignore: cast_nullable_to_non_nullable
as String?,bootVolume: freezed == bootVolume ? _self.bootVolume : bootVolume // ignore: cast_nullable_to_non_nullable
as String?,lastUser: freezed == lastUser ? _self.lastUser : lastUser // ignore: cast_nullable_to_non_nullable
as String?,batteryLevel: freezed == batteryLevel ? _self.batteryLevel : batteryLevel // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$DeviceHardware {

// Android fields
@JsonKey(name: 'total_capacity') String? get totalCapacity;@JsonKey(name: 'available_capacity') String? get availableCapacity;@JsonKey(name: 'total_ram') String? get totalRam;@JsonKey(name: 'wifi_mac_address') String? get wifiMacAddress;// Apple hardware_overview fields
@JsonKey(name: 'model_name') String? get modelName;@JsonKey(name: 'model_identifier') String? get modelIdentifier;@JsonKey(name: 'processor_type') String? get processorType; String? get chip; String? get memory;@JsonKey(name: 'serial_number') String? get serialNumber;@JsonKey(name: 'hardware_uuid') String? get hardwareUuid;@JsonKey(name: 'provisioning_udid') String? get provisioningUdid;// CPU details
@JsonKey(name: 'processor_name') String? get processorName;@JsonKey(name: 'number_of_processors') String? get numberOfProcessors;@JsonKey(name: 'total_number_of_cores') String? get totalNumberOfCores;
/// Create a copy of DeviceHardware
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeviceHardwareCopyWith<DeviceHardware> get copyWith => _$DeviceHardwareCopyWithImpl<DeviceHardware>(this as DeviceHardware, _$identity);

  /// Serializes this DeviceHardware to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeviceHardware&&(identical(other.totalCapacity, totalCapacity) || other.totalCapacity == totalCapacity)&&(identical(other.availableCapacity, availableCapacity) || other.availableCapacity == availableCapacity)&&(identical(other.totalRam, totalRam) || other.totalRam == totalRam)&&(identical(other.wifiMacAddress, wifiMacAddress) || other.wifiMacAddress == wifiMacAddress)&&(identical(other.modelName, modelName) || other.modelName == modelName)&&(identical(other.modelIdentifier, modelIdentifier) || other.modelIdentifier == modelIdentifier)&&(identical(other.processorType, processorType) || other.processorType == processorType)&&(identical(other.chip, chip) || other.chip == chip)&&(identical(other.memory, memory) || other.memory == memory)&&(identical(other.serialNumber, serialNumber) || other.serialNumber == serialNumber)&&(identical(other.hardwareUuid, hardwareUuid) || other.hardwareUuid == hardwareUuid)&&(identical(other.provisioningUdid, provisioningUdid) || other.provisioningUdid == provisioningUdid)&&(identical(other.processorName, processorName) || other.processorName == processorName)&&(identical(other.numberOfProcessors, numberOfProcessors) || other.numberOfProcessors == numberOfProcessors)&&(identical(other.totalNumberOfCores, totalNumberOfCores) || other.totalNumberOfCores == totalNumberOfCores));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalCapacity,availableCapacity,totalRam,wifiMacAddress,modelName,modelIdentifier,processorType,chip,memory,serialNumber,hardwareUuid,provisioningUdid,processorName,numberOfProcessors,totalNumberOfCores);

@override
String toString() {
  return 'DeviceHardware(totalCapacity: $totalCapacity, availableCapacity: $availableCapacity, totalRam: $totalRam, wifiMacAddress: $wifiMacAddress, modelName: $modelName, modelIdentifier: $modelIdentifier, processorType: $processorType, chip: $chip, memory: $memory, serialNumber: $serialNumber, hardwareUuid: $hardwareUuid, provisioningUdid: $provisioningUdid, processorName: $processorName, numberOfProcessors: $numberOfProcessors, totalNumberOfCores: $totalNumberOfCores)';
}


}

/// @nodoc
abstract mixin class $DeviceHardwareCopyWith<$Res>  {
  factory $DeviceHardwareCopyWith(DeviceHardware value, $Res Function(DeviceHardware) _then) = _$DeviceHardwareCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'total_capacity') String? totalCapacity,@JsonKey(name: 'available_capacity') String? availableCapacity,@JsonKey(name: 'total_ram') String? totalRam,@JsonKey(name: 'wifi_mac_address') String? wifiMacAddress,@JsonKey(name: 'model_name') String? modelName,@JsonKey(name: 'model_identifier') String? modelIdentifier,@JsonKey(name: 'processor_type') String? processorType, String? chip, String? memory,@JsonKey(name: 'serial_number') String? serialNumber,@JsonKey(name: 'hardware_uuid') String? hardwareUuid,@JsonKey(name: 'provisioning_udid') String? provisioningUdid,@JsonKey(name: 'processor_name') String? processorName,@JsonKey(name: 'number_of_processors') String? numberOfProcessors,@JsonKey(name: 'total_number_of_cores') String? totalNumberOfCores
});




}
/// @nodoc
class _$DeviceHardwareCopyWithImpl<$Res>
    implements $DeviceHardwareCopyWith<$Res> {
  _$DeviceHardwareCopyWithImpl(this._self, this._then);

  final DeviceHardware _self;
  final $Res Function(DeviceHardware) _then;

/// Create a copy of DeviceHardware
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? totalCapacity = freezed,Object? availableCapacity = freezed,Object? totalRam = freezed,Object? wifiMacAddress = freezed,Object? modelName = freezed,Object? modelIdentifier = freezed,Object? processorType = freezed,Object? chip = freezed,Object? memory = freezed,Object? serialNumber = freezed,Object? hardwareUuid = freezed,Object? provisioningUdid = freezed,Object? processorName = freezed,Object? numberOfProcessors = freezed,Object? totalNumberOfCores = freezed,}) {
  return _then(_self.copyWith(
totalCapacity: freezed == totalCapacity ? _self.totalCapacity : totalCapacity // ignore: cast_nullable_to_non_nullable
as String?,availableCapacity: freezed == availableCapacity ? _self.availableCapacity : availableCapacity // ignore: cast_nullable_to_non_nullable
as String?,totalRam: freezed == totalRam ? _self.totalRam : totalRam // ignore: cast_nullable_to_non_nullable
as String?,wifiMacAddress: freezed == wifiMacAddress ? _self.wifiMacAddress : wifiMacAddress // ignore: cast_nullable_to_non_nullable
as String?,modelName: freezed == modelName ? _self.modelName : modelName // ignore: cast_nullable_to_non_nullable
as String?,modelIdentifier: freezed == modelIdentifier ? _self.modelIdentifier : modelIdentifier // ignore: cast_nullable_to_non_nullable
as String?,processorType: freezed == processorType ? _self.processorType : processorType // ignore: cast_nullable_to_non_nullable
as String?,chip: freezed == chip ? _self.chip : chip // ignore: cast_nullable_to_non_nullable
as String?,memory: freezed == memory ? _self.memory : memory // ignore: cast_nullable_to_non_nullable
as String?,serialNumber: freezed == serialNumber ? _self.serialNumber : serialNumber // ignore: cast_nullable_to_non_nullable
as String?,hardwareUuid: freezed == hardwareUuid ? _self.hardwareUuid : hardwareUuid // ignore: cast_nullable_to_non_nullable
as String?,provisioningUdid: freezed == provisioningUdid ? _self.provisioningUdid : provisioningUdid // ignore: cast_nullable_to_non_nullable
as String?,processorName: freezed == processorName ? _self.processorName : processorName // ignore: cast_nullable_to_non_nullable
as String?,numberOfProcessors: freezed == numberOfProcessors ? _self.numberOfProcessors : numberOfProcessors // ignore: cast_nullable_to_non_nullable
as String?,totalNumberOfCores: freezed == totalNumberOfCores ? _self.totalNumberOfCores : totalNumberOfCores // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [DeviceHardware].
extension DeviceHardwarePatterns on DeviceHardware {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DeviceHardware value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DeviceHardware() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DeviceHardware value)  $default,){
final _that = this;
switch (_that) {
case _DeviceHardware():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DeviceHardware value)?  $default,){
final _that = this;
switch (_that) {
case _DeviceHardware() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'total_capacity')  String? totalCapacity, @JsonKey(name: 'available_capacity')  String? availableCapacity, @JsonKey(name: 'total_ram')  String? totalRam, @JsonKey(name: 'wifi_mac_address')  String? wifiMacAddress, @JsonKey(name: 'model_name')  String? modelName, @JsonKey(name: 'model_identifier')  String? modelIdentifier, @JsonKey(name: 'processor_type')  String? processorType,  String? chip,  String? memory, @JsonKey(name: 'serial_number')  String? serialNumber, @JsonKey(name: 'hardware_uuid')  String? hardwareUuid, @JsonKey(name: 'provisioning_udid')  String? provisioningUdid, @JsonKey(name: 'processor_name')  String? processorName, @JsonKey(name: 'number_of_processors')  String? numberOfProcessors, @JsonKey(name: 'total_number_of_cores')  String? totalNumberOfCores)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DeviceHardware() when $default != null:
return $default(_that.totalCapacity,_that.availableCapacity,_that.totalRam,_that.wifiMacAddress,_that.modelName,_that.modelIdentifier,_that.processorType,_that.chip,_that.memory,_that.serialNumber,_that.hardwareUuid,_that.provisioningUdid,_that.processorName,_that.numberOfProcessors,_that.totalNumberOfCores);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'total_capacity')  String? totalCapacity, @JsonKey(name: 'available_capacity')  String? availableCapacity, @JsonKey(name: 'total_ram')  String? totalRam, @JsonKey(name: 'wifi_mac_address')  String? wifiMacAddress, @JsonKey(name: 'model_name')  String? modelName, @JsonKey(name: 'model_identifier')  String? modelIdentifier, @JsonKey(name: 'processor_type')  String? processorType,  String? chip,  String? memory, @JsonKey(name: 'serial_number')  String? serialNumber, @JsonKey(name: 'hardware_uuid')  String? hardwareUuid, @JsonKey(name: 'provisioning_udid')  String? provisioningUdid, @JsonKey(name: 'processor_name')  String? processorName, @JsonKey(name: 'number_of_processors')  String? numberOfProcessors, @JsonKey(name: 'total_number_of_cores')  String? totalNumberOfCores)  $default,) {final _that = this;
switch (_that) {
case _DeviceHardware():
return $default(_that.totalCapacity,_that.availableCapacity,_that.totalRam,_that.wifiMacAddress,_that.modelName,_that.modelIdentifier,_that.processorType,_that.chip,_that.memory,_that.serialNumber,_that.hardwareUuid,_that.provisioningUdid,_that.processorName,_that.numberOfProcessors,_that.totalNumberOfCores);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'total_capacity')  String? totalCapacity, @JsonKey(name: 'available_capacity')  String? availableCapacity, @JsonKey(name: 'total_ram')  String? totalRam, @JsonKey(name: 'wifi_mac_address')  String? wifiMacAddress, @JsonKey(name: 'model_name')  String? modelName, @JsonKey(name: 'model_identifier')  String? modelIdentifier, @JsonKey(name: 'processor_type')  String? processorType,  String? chip,  String? memory, @JsonKey(name: 'serial_number')  String? serialNumber, @JsonKey(name: 'hardware_uuid')  String? hardwareUuid, @JsonKey(name: 'provisioning_udid')  String? provisioningUdid, @JsonKey(name: 'processor_name')  String? processorName, @JsonKey(name: 'number_of_processors')  String? numberOfProcessors, @JsonKey(name: 'total_number_of_cores')  String? totalNumberOfCores)?  $default,) {final _that = this;
switch (_that) {
case _DeviceHardware() when $default != null:
return $default(_that.totalCapacity,_that.availableCapacity,_that.totalRam,_that.wifiMacAddress,_that.modelName,_that.modelIdentifier,_that.processorType,_that.chip,_that.memory,_that.serialNumber,_that.hardwareUuid,_that.provisioningUdid,_that.processorName,_that.numberOfProcessors,_that.totalNumberOfCores);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DeviceHardware extends DeviceHardware {
  const _DeviceHardware({@JsonKey(name: 'total_capacity') this.totalCapacity, @JsonKey(name: 'available_capacity') this.availableCapacity, @JsonKey(name: 'total_ram') this.totalRam, @JsonKey(name: 'wifi_mac_address') this.wifiMacAddress, @JsonKey(name: 'model_name') this.modelName, @JsonKey(name: 'model_identifier') this.modelIdentifier, @JsonKey(name: 'processor_type') this.processorType, this.chip, this.memory, @JsonKey(name: 'serial_number') this.serialNumber, @JsonKey(name: 'hardware_uuid') this.hardwareUuid, @JsonKey(name: 'provisioning_udid') this.provisioningUdid, @JsonKey(name: 'processor_name') this.processorName, @JsonKey(name: 'number_of_processors') this.numberOfProcessors, @JsonKey(name: 'total_number_of_cores') this.totalNumberOfCores}): super._();
  factory _DeviceHardware.fromJson(Map<String, dynamic> json) => _$DeviceHardwareFromJson(json);

// Android fields
@override@JsonKey(name: 'total_capacity') final  String? totalCapacity;
@override@JsonKey(name: 'available_capacity') final  String? availableCapacity;
@override@JsonKey(name: 'total_ram') final  String? totalRam;
@override@JsonKey(name: 'wifi_mac_address') final  String? wifiMacAddress;
// Apple hardware_overview fields
@override@JsonKey(name: 'model_name') final  String? modelName;
@override@JsonKey(name: 'model_identifier') final  String? modelIdentifier;
@override@JsonKey(name: 'processor_type') final  String? processorType;
@override final  String? chip;
@override final  String? memory;
@override@JsonKey(name: 'serial_number') final  String? serialNumber;
@override@JsonKey(name: 'hardware_uuid') final  String? hardwareUuid;
@override@JsonKey(name: 'provisioning_udid') final  String? provisioningUdid;
// CPU details
@override@JsonKey(name: 'processor_name') final  String? processorName;
@override@JsonKey(name: 'number_of_processors') final  String? numberOfProcessors;
@override@JsonKey(name: 'total_number_of_cores') final  String? totalNumberOfCores;

/// Create a copy of DeviceHardware
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeviceHardwareCopyWith<_DeviceHardware> get copyWith => __$DeviceHardwareCopyWithImpl<_DeviceHardware>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DeviceHardwareToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeviceHardware&&(identical(other.totalCapacity, totalCapacity) || other.totalCapacity == totalCapacity)&&(identical(other.availableCapacity, availableCapacity) || other.availableCapacity == availableCapacity)&&(identical(other.totalRam, totalRam) || other.totalRam == totalRam)&&(identical(other.wifiMacAddress, wifiMacAddress) || other.wifiMacAddress == wifiMacAddress)&&(identical(other.modelName, modelName) || other.modelName == modelName)&&(identical(other.modelIdentifier, modelIdentifier) || other.modelIdentifier == modelIdentifier)&&(identical(other.processorType, processorType) || other.processorType == processorType)&&(identical(other.chip, chip) || other.chip == chip)&&(identical(other.memory, memory) || other.memory == memory)&&(identical(other.serialNumber, serialNumber) || other.serialNumber == serialNumber)&&(identical(other.hardwareUuid, hardwareUuid) || other.hardwareUuid == hardwareUuid)&&(identical(other.provisioningUdid, provisioningUdid) || other.provisioningUdid == provisioningUdid)&&(identical(other.processorName, processorName) || other.processorName == processorName)&&(identical(other.numberOfProcessors, numberOfProcessors) || other.numberOfProcessors == numberOfProcessors)&&(identical(other.totalNumberOfCores, totalNumberOfCores) || other.totalNumberOfCores == totalNumberOfCores));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalCapacity,availableCapacity,totalRam,wifiMacAddress,modelName,modelIdentifier,processorType,chip,memory,serialNumber,hardwareUuid,provisioningUdid,processorName,numberOfProcessors,totalNumberOfCores);

@override
String toString() {
  return 'DeviceHardware(totalCapacity: $totalCapacity, availableCapacity: $availableCapacity, totalRam: $totalRam, wifiMacAddress: $wifiMacAddress, modelName: $modelName, modelIdentifier: $modelIdentifier, processorType: $processorType, chip: $chip, memory: $memory, serialNumber: $serialNumber, hardwareUuid: $hardwareUuid, provisioningUdid: $provisioningUdid, processorName: $processorName, numberOfProcessors: $numberOfProcessors, totalNumberOfCores: $totalNumberOfCores)';
}


}

/// @nodoc
abstract mixin class _$DeviceHardwareCopyWith<$Res> implements $DeviceHardwareCopyWith<$Res> {
  factory _$DeviceHardwareCopyWith(_DeviceHardware value, $Res Function(_DeviceHardware) _then) = __$DeviceHardwareCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'total_capacity') String? totalCapacity,@JsonKey(name: 'available_capacity') String? availableCapacity,@JsonKey(name: 'total_ram') String? totalRam,@JsonKey(name: 'wifi_mac_address') String? wifiMacAddress,@JsonKey(name: 'model_name') String? modelName,@JsonKey(name: 'model_identifier') String? modelIdentifier,@JsonKey(name: 'processor_type') String? processorType, String? chip, String? memory,@JsonKey(name: 'serial_number') String? serialNumber,@JsonKey(name: 'hardware_uuid') String? hardwareUuid,@JsonKey(name: 'provisioning_udid') String? provisioningUdid,@JsonKey(name: 'processor_name') String? processorName,@JsonKey(name: 'number_of_processors') String? numberOfProcessors,@JsonKey(name: 'total_number_of_cores') String? totalNumberOfCores
});




}
/// @nodoc
class __$DeviceHardwareCopyWithImpl<$Res>
    implements _$DeviceHardwareCopyWith<$Res> {
  __$DeviceHardwareCopyWithImpl(this._self, this._then);

  final _DeviceHardware _self;
  final $Res Function(_DeviceHardware) _then;

/// Create a copy of DeviceHardware
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? totalCapacity = freezed,Object? availableCapacity = freezed,Object? totalRam = freezed,Object? wifiMacAddress = freezed,Object? modelName = freezed,Object? modelIdentifier = freezed,Object? processorType = freezed,Object? chip = freezed,Object? memory = freezed,Object? serialNumber = freezed,Object? hardwareUuid = freezed,Object? provisioningUdid = freezed,Object? processorName = freezed,Object? numberOfProcessors = freezed,Object? totalNumberOfCores = freezed,}) {
  return _then(_DeviceHardware(
totalCapacity: freezed == totalCapacity ? _self.totalCapacity : totalCapacity // ignore: cast_nullable_to_non_nullable
as String?,availableCapacity: freezed == availableCapacity ? _self.availableCapacity : availableCapacity // ignore: cast_nullable_to_non_nullable
as String?,totalRam: freezed == totalRam ? _self.totalRam : totalRam // ignore: cast_nullable_to_non_nullable
as String?,wifiMacAddress: freezed == wifiMacAddress ? _self.wifiMacAddress : wifiMacAddress // ignore: cast_nullable_to_non_nullable
as String?,modelName: freezed == modelName ? _self.modelName : modelName // ignore: cast_nullable_to_non_nullable
as String?,modelIdentifier: freezed == modelIdentifier ? _self.modelIdentifier : modelIdentifier // ignore: cast_nullable_to_non_nullable
as String?,processorType: freezed == processorType ? _self.processorType : processorType // ignore: cast_nullable_to_non_nullable
as String?,chip: freezed == chip ? _self.chip : chip // ignore: cast_nullable_to_non_nullable
as String?,memory: freezed == memory ? _self.memory : memory // ignore: cast_nullable_to_non_nullable
as String?,serialNumber: freezed == serialNumber ? _self.serialNumber : serialNumber // ignore: cast_nullable_to_non_nullable
as String?,hardwareUuid: freezed == hardwareUuid ? _self.hardwareUuid : hardwareUuid // ignore: cast_nullable_to_non_nullable
as String?,provisioningUdid: freezed == provisioningUdid ? _self.provisioningUdid : provisioningUdid // ignore: cast_nullable_to_non_nullable
as String?,processorName: freezed == processorName ? _self.processorName : processorName // ignore: cast_nullable_to_non_nullable
as String?,numberOfProcessors: freezed == numberOfProcessors ? _self.numberOfProcessors : numberOfProcessors // ignore: cast_nullable_to_non_nullable
as String?,totalNumberOfCores: freezed == totalNumberOfCores ? _self.totalNumberOfCores : totalNumberOfCores // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$DeviceSecurity {

@JsonKey(name: 'encryption_status') String? get encryptionStatus;@JsonKey(name: 'device_posture') String? get devicePosture;@JsonKey(name: 'has_passcode', fromJson: _toNullableInt) int? get hasPasscode;@JsonKey(name: 'is_encrypted', fromJson: _toNullableInt) int? get isEncrypted;@JsonKey(name: 'has_google_play_protect', fromJson: _toNullableInt) int? get hasGooglePlayProtect;@JsonKey(name: 'developer_mode_enabled') dynamic get developerModeEnabled;@JsonKey(name: 'android_debug_bridge_enabled') dynamic get androidDebugBridgeEnabled;@JsonKey(name: 'unknown_app_sources_enabled') dynamic get unknownAppSourcesEnabled;@JsonKey(name: 'activation_lock_enabled') dynamic get activationLockEnabled;
/// Create a copy of DeviceSecurity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeviceSecurityCopyWith<DeviceSecurity> get copyWith => _$DeviceSecurityCopyWithImpl<DeviceSecurity>(this as DeviceSecurity, _$identity);

  /// Serializes this DeviceSecurity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeviceSecurity&&(identical(other.encryptionStatus, encryptionStatus) || other.encryptionStatus == encryptionStatus)&&(identical(other.devicePosture, devicePosture) || other.devicePosture == devicePosture)&&(identical(other.hasPasscode, hasPasscode) || other.hasPasscode == hasPasscode)&&(identical(other.isEncrypted, isEncrypted) || other.isEncrypted == isEncrypted)&&(identical(other.hasGooglePlayProtect, hasGooglePlayProtect) || other.hasGooglePlayProtect == hasGooglePlayProtect)&&const DeepCollectionEquality().equals(other.developerModeEnabled, developerModeEnabled)&&const DeepCollectionEquality().equals(other.androidDebugBridgeEnabled, androidDebugBridgeEnabled)&&const DeepCollectionEquality().equals(other.unknownAppSourcesEnabled, unknownAppSourcesEnabled)&&const DeepCollectionEquality().equals(other.activationLockEnabled, activationLockEnabled));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,encryptionStatus,devicePosture,hasPasscode,isEncrypted,hasGooglePlayProtect,const DeepCollectionEquality().hash(developerModeEnabled),const DeepCollectionEquality().hash(androidDebugBridgeEnabled),const DeepCollectionEquality().hash(unknownAppSourcesEnabled),const DeepCollectionEquality().hash(activationLockEnabled));

@override
String toString() {
  return 'DeviceSecurity(encryptionStatus: $encryptionStatus, devicePosture: $devicePosture, hasPasscode: $hasPasscode, isEncrypted: $isEncrypted, hasGooglePlayProtect: $hasGooglePlayProtect, developerModeEnabled: $developerModeEnabled, androidDebugBridgeEnabled: $androidDebugBridgeEnabled, unknownAppSourcesEnabled: $unknownAppSourcesEnabled, activationLockEnabled: $activationLockEnabled)';
}


}

/// @nodoc
abstract mixin class $DeviceSecurityCopyWith<$Res>  {
  factory $DeviceSecurityCopyWith(DeviceSecurity value, $Res Function(DeviceSecurity) _then) = _$DeviceSecurityCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'encryption_status') String? encryptionStatus,@JsonKey(name: 'device_posture') String? devicePosture,@JsonKey(name: 'has_passcode', fromJson: _toNullableInt) int? hasPasscode,@JsonKey(name: 'is_encrypted', fromJson: _toNullableInt) int? isEncrypted,@JsonKey(name: 'has_google_play_protect', fromJson: _toNullableInt) int? hasGooglePlayProtect,@JsonKey(name: 'developer_mode_enabled') dynamic developerModeEnabled,@JsonKey(name: 'android_debug_bridge_enabled') dynamic androidDebugBridgeEnabled,@JsonKey(name: 'unknown_app_sources_enabled') dynamic unknownAppSourcesEnabled,@JsonKey(name: 'activation_lock_enabled') dynamic activationLockEnabled
});




}
/// @nodoc
class _$DeviceSecurityCopyWithImpl<$Res>
    implements $DeviceSecurityCopyWith<$Res> {
  _$DeviceSecurityCopyWithImpl(this._self, this._then);

  final DeviceSecurity _self;
  final $Res Function(DeviceSecurity) _then;

/// Create a copy of DeviceSecurity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? encryptionStatus = freezed,Object? devicePosture = freezed,Object? hasPasscode = freezed,Object? isEncrypted = freezed,Object? hasGooglePlayProtect = freezed,Object? developerModeEnabled = freezed,Object? androidDebugBridgeEnabled = freezed,Object? unknownAppSourcesEnabled = freezed,Object? activationLockEnabled = freezed,}) {
  return _then(_self.copyWith(
encryptionStatus: freezed == encryptionStatus ? _self.encryptionStatus : encryptionStatus // ignore: cast_nullable_to_non_nullable
as String?,devicePosture: freezed == devicePosture ? _self.devicePosture : devicePosture // ignore: cast_nullable_to_non_nullable
as String?,hasPasscode: freezed == hasPasscode ? _self.hasPasscode : hasPasscode // ignore: cast_nullable_to_non_nullable
as int?,isEncrypted: freezed == isEncrypted ? _self.isEncrypted : isEncrypted // ignore: cast_nullable_to_non_nullable
as int?,hasGooglePlayProtect: freezed == hasGooglePlayProtect ? _self.hasGooglePlayProtect : hasGooglePlayProtect // ignore: cast_nullable_to_non_nullable
as int?,developerModeEnabled: freezed == developerModeEnabled ? _self.developerModeEnabled : developerModeEnabled // ignore: cast_nullable_to_non_nullable
as dynamic,androidDebugBridgeEnabled: freezed == androidDebugBridgeEnabled ? _self.androidDebugBridgeEnabled : androidDebugBridgeEnabled // ignore: cast_nullable_to_non_nullable
as dynamic,unknownAppSourcesEnabled: freezed == unknownAppSourcesEnabled ? _self.unknownAppSourcesEnabled : unknownAppSourcesEnabled // ignore: cast_nullable_to_non_nullable
as dynamic,activationLockEnabled: freezed == activationLockEnabled ? _self.activationLockEnabled : activationLockEnabled // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

}


/// Adds pattern-matching-related methods to [DeviceSecurity].
extension DeviceSecurityPatterns on DeviceSecurity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DeviceSecurity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DeviceSecurity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DeviceSecurity value)  $default,){
final _that = this;
switch (_that) {
case _DeviceSecurity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DeviceSecurity value)?  $default,){
final _that = this;
switch (_that) {
case _DeviceSecurity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'encryption_status')  String? encryptionStatus, @JsonKey(name: 'device_posture')  String? devicePosture, @JsonKey(name: 'has_passcode', fromJson: _toNullableInt)  int? hasPasscode, @JsonKey(name: 'is_encrypted', fromJson: _toNullableInt)  int? isEncrypted, @JsonKey(name: 'has_google_play_protect', fromJson: _toNullableInt)  int? hasGooglePlayProtect, @JsonKey(name: 'developer_mode_enabled')  dynamic developerModeEnabled, @JsonKey(name: 'android_debug_bridge_enabled')  dynamic androidDebugBridgeEnabled, @JsonKey(name: 'unknown_app_sources_enabled')  dynamic unknownAppSourcesEnabled, @JsonKey(name: 'activation_lock_enabled')  dynamic activationLockEnabled)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DeviceSecurity() when $default != null:
return $default(_that.encryptionStatus,_that.devicePosture,_that.hasPasscode,_that.isEncrypted,_that.hasGooglePlayProtect,_that.developerModeEnabled,_that.androidDebugBridgeEnabled,_that.unknownAppSourcesEnabled,_that.activationLockEnabled);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'encryption_status')  String? encryptionStatus, @JsonKey(name: 'device_posture')  String? devicePosture, @JsonKey(name: 'has_passcode', fromJson: _toNullableInt)  int? hasPasscode, @JsonKey(name: 'is_encrypted', fromJson: _toNullableInt)  int? isEncrypted, @JsonKey(name: 'has_google_play_protect', fromJson: _toNullableInt)  int? hasGooglePlayProtect, @JsonKey(name: 'developer_mode_enabled')  dynamic developerModeEnabled, @JsonKey(name: 'android_debug_bridge_enabled')  dynamic androidDebugBridgeEnabled, @JsonKey(name: 'unknown_app_sources_enabled')  dynamic unknownAppSourcesEnabled, @JsonKey(name: 'activation_lock_enabled')  dynamic activationLockEnabled)  $default,) {final _that = this;
switch (_that) {
case _DeviceSecurity():
return $default(_that.encryptionStatus,_that.devicePosture,_that.hasPasscode,_that.isEncrypted,_that.hasGooglePlayProtect,_that.developerModeEnabled,_that.androidDebugBridgeEnabled,_that.unknownAppSourcesEnabled,_that.activationLockEnabled);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'encryption_status')  String? encryptionStatus, @JsonKey(name: 'device_posture')  String? devicePosture, @JsonKey(name: 'has_passcode', fromJson: _toNullableInt)  int? hasPasscode, @JsonKey(name: 'is_encrypted', fromJson: _toNullableInt)  int? isEncrypted, @JsonKey(name: 'has_google_play_protect', fromJson: _toNullableInt)  int? hasGooglePlayProtect, @JsonKey(name: 'developer_mode_enabled')  dynamic developerModeEnabled, @JsonKey(name: 'android_debug_bridge_enabled')  dynamic androidDebugBridgeEnabled, @JsonKey(name: 'unknown_app_sources_enabled')  dynamic unknownAppSourcesEnabled, @JsonKey(name: 'activation_lock_enabled')  dynamic activationLockEnabled)?  $default,) {final _that = this;
switch (_that) {
case _DeviceSecurity() when $default != null:
return $default(_that.encryptionStatus,_that.devicePosture,_that.hasPasscode,_that.isEncrypted,_that.hasGooglePlayProtect,_that.developerModeEnabled,_that.androidDebugBridgeEnabled,_that.unknownAppSourcesEnabled,_that.activationLockEnabled);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DeviceSecurity implements DeviceSecurity {
  const _DeviceSecurity({@JsonKey(name: 'encryption_status') this.encryptionStatus, @JsonKey(name: 'device_posture') this.devicePosture, @JsonKey(name: 'has_passcode', fromJson: _toNullableInt) this.hasPasscode, @JsonKey(name: 'is_encrypted', fromJson: _toNullableInt) this.isEncrypted, @JsonKey(name: 'has_google_play_protect', fromJson: _toNullableInt) this.hasGooglePlayProtect, @JsonKey(name: 'developer_mode_enabled') this.developerModeEnabled, @JsonKey(name: 'android_debug_bridge_enabled') this.androidDebugBridgeEnabled, @JsonKey(name: 'unknown_app_sources_enabled') this.unknownAppSourcesEnabled, @JsonKey(name: 'activation_lock_enabled') this.activationLockEnabled});
  factory _DeviceSecurity.fromJson(Map<String, dynamic> json) => _$DeviceSecurityFromJson(json);

@override@JsonKey(name: 'encryption_status') final  String? encryptionStatus;
@override@JsonKey(name: 'device_posture') final  String? devicePosture;
@override@JsonKey(name: 'has_passcode', fromJson: _toNullableInt) final  int? hasPasscode;
@override@JsonKey(name: 'is_encrypted', fromJson: _toNullableInt) final  int? isEncrypted;
@override@JsonKey(name: 'has_google_play_protect', fromJson: _toNullableInt) final  int? hasGooglePlayProtect;
@override@JsonKey(name: 'developer_mode_enabled') final  dynamic developerModeEnabled;
@override@JsonKey(name: 'android_debug_bridge_enabled') final  dynamic androidDebugBridgeEnabled;
@override@JsonKey(name: 'unknown_app_sources_enabled') final  dynamic unknownAppSourcesEnabled;
@override@JsonKey(name: 'activation_lock_enabled') final  dynamic activationLockEnabled;

/// Create a copy of DeviceSecurity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeviceSecurityCopyWith<_DeviceSecurity> get copyWith => __$DeviceSecurityCopyWithImpl<_DeviceSecurity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DeviceSecurityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeviceSecurity&&(identical(other.encryptionStatus, encryptionStatus) || other.encryptionStatus == encryptionStatus)&&(identical(other.devicePosture, devicePosture) || other.devicePosture == devicePosture)&&(identical(other.hasPasscode, hasPasscode) || other.hasPasscode == hasPasscode)&&(identical(other.isEncrypted, isEncrypted) || other.isEncrypted == isEncrypted)&&(identical(other.hasGooglePlayProtect, hasGooglePlayProtect) || other.hasGooglePlayProtect == hasGooglePlayProtect)&&const DeepCollectionEquality().equals(other.developerModeEnabled, developerModeEnabled)&&const DeepCollectionEquality().equals(other.androidDebugBridgeEnabled, androidDebugBridgeEnabled)&&const DeepCollectionEquality().equals(other.unknownAppSourcesEnabled, unknownAppSourcesEnabled)&&const DeepCollectionEquality().equals(other.activationLockEnabled, activationLockEnabled));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,encryptionStatus,devicePosture,hasPasscode,isEncrypted,hasGooglePlayProtect,const DeepCollectionEquality().hash(developerModeEnabled),const DeepCollectionEquality().hash(androidDebugBridgeEnabled),const DeepCollectionEquality().hash(unknownAppSourcesEnabled),const DeepCollectionEquality().hash(activationLockEnabled));

@override
String toString() {
  return 'DeviceSecurity(encryptionStatus: $encryptionStatus, devicePosture: $devicePosture, hasPasscode: $hasPasscode, isEncrypted: $isEncrypted, hasGooglePlayProtect: $hasGooglePlayProtect, developerModeEnabled: $developerModeEnabled, androidDebugBridgeEnabled: $androidDebugBridgeEnabled, unknownAppSourcesEnabled: $unknownAppSourcesEnabled, activationLockEnabled: $activationLockEnabled)';
}


}

/// @nodoc
abstract mixin class _$DeviceSecurityCopyWith<$Res> implements $DeviceSecurityCopyWith<$Res> {
  factory _$DeviceSecurityCopyWith(_DeviceSecurity value, $Res Function(_DeviceSecurity) _then) = __$DeviceSecurityCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'encryption_status') String? encryptionStatus,@JsonKey(name: 'device_posture') String? devicePosture,@JsonKey(name: 'has_passcode', fromJson: _toNullableInt) int? hasPasscode,@JsonKey(name: 'is_encrypted', fromJson: _toNullableInt) int? isEncrypted,@JsonKey(name: 'has_google_play_protect', fromJson: _toNullableInt) int? hasGooglePlayProtect,@JsonKey(name: 'developer_mode_enabled') dynamic developerModeEnabled,@JsonKey(name: 'android_debug_bridge_enabled') dynamic androidDebugBridgeEnabled,@JsonKey(name: 'unknown_app_sources_enabled') dynamic unknownAppSourcesEnabled,@JsonKey(name: 'activation_lock_enabled') dynamic activationLockEnabled
});




}
/// @nodoc
class __$DeviceSecurityCopyWithImpl<$Res>
    implements _$DeviceSecurityCopyWith<$Res> {
  __$DeviceSecurityCopyWithImpl(this._self, this._then);

  final _DeviceSecurity _self;
  final $Res Function(_DeviceSecurity) _then;

/// Create a copy of DeviceSecurity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? encryptionStatus = freezed,Object? devicePosture = freezed,Object? hasPasscode = freezed,Object? isEncrypted = freezed,Object? hasGooglePlayProtect = freezed,Object? developerModeEnabled = freezed,Object? androidDebugBridgeEnabled = freezed,Object? unknownAppSourcesEnabled = freezed,Object? activationLockEnabled = freezed,}) {
  return _then(_DeviceSecurity(
encryptionStatus: freezed == encryptionStatus ? _self.encryptionStatus : encryptionStatus // ignore: cast_nullable_to_non_nullable
as String?,devicePosture: freezed == devicePosture ? _self.devicePosture : devicePosture // ignore: cast_nullable_to_non_nullable
as String?,hasPasscode: freezed == hasPasscode ? _self.hasPasscode : hasPasscode // ignore: cast_nullable_to_non_nullable
as int?,isEncrypted: freezed == isEncrypted ? _self.isEncrypted : isEncrypted // ignore: cast_nullable_to_non_nullable
as int?,hasGooglePlayProtect: freezed == hasGooglePlayProtect ? _self.hasGooglePlayProtect : hasGooglePlayProtect // ignore: cast_nullable_to_non_nullable
as int?,developerModeEnabled: freezed == developerModeEnabled ? _self.developerModeEnabled : developerModeEnabled // ignore: cast_nullable_to_non_nullable
as dynamic,androidDebugBridgeEnabled: freezed == androidDebugBridgeEnabled ? _self.androidDebugBridgeEnabled : androidDebugBridgeEnabled // ignore: cast_nullable_to_non_nullable
as dynamic,unknownAppSourcesEnabled: freezed == unknownAppSourcesEnabled ? _self.unknownAppSourcesEnabled : unknownAppSourcesEnabled // ignore: cast_nullable_to_non_nullable
as dynamic,activationLockEnabled: freezed == activationLockEnabled ? _self.activationLockEnabled : activationLockEnabled // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}


/// @nodoc
mixin _$DeviceCellular {

 String? get imei; String? get meid;
/// Create a copy of DeviceCellular
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeviceCellularCopyWith<DeviceCellular> get copyWith => _$DeviceCellularCopyWithImpl<DeviceCellular>(this as DeviceCellular, _$identity);

  /// Serializes this DeviceCellular to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeviceCellular&&(identical(other.imei, imei) || other.imei == imei)&&(identical(other.meid, meid) || other.meid == meid));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,imei,meid);

@override
String toString() {
  return 'DeviceCellular(imei: $imei, meid: $meid)';
}


}

/// @nodoc
abstract mixin class $DeviceCellularCopyWith<$Res>  {
  factory $DeviceCellularCopyWith(DeviceCellular value, $Res Function(DeviceCellular) _then) = _$DeviceCellularCopyWithImpl;
@useResult
$Res call({
 String? imei, String? meid
});




}
/// @nodoc
class _$DeviceCellularCopyWithImpl<$Res>
    implements $DeviceCellularCopyWith<$Res> {
  _$DeviceCellularCopyWithImpl(this._self, this._then);

  final DeviceCellular _self;
  final $Res Function(DeviceCellular) _then;

/// Create a copy of DeviceCellular
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? imei = freezed,Object? meid = freezed,}) {
  return _then(_self.copyWith(
imei: freezed == imei ? _self.imei : imei // ignore: cast_nullable_to_non_nullable
as String?,meid: freezed == meid ? _self.meid : meid // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [DeviceCellular].
extension DeviceCellularPatterns on DeviceCellular {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DeviceCellular value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DeviceCellular() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DeviceCellular value)  $default,){
final _that = this;
switch (_that) {
case _DeviceCellular():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DeviceCellular value)?  $default,){
final _that = this;
switch (_that) {
case _DeviceCellular() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? imei,  String? meid)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DeviceCellular() when $default != null:
return $default(_that.imei,_that.meid);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? imei,  String? meid)  $default,) {final _that = this;
switch (_that) {
case _DeviceCellular():
return $default(_that.imei,_that.meid);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? imei,  String? meid)?  $default,) {final _that = this;
switch (_that) {
case _DeviceCellular() when $default != null:
return $default(_that.imei,_that.meid);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DeviceCellular implements DeviceCellular {
  const _DeviceCellular({this.imei, this.meid});
  factory _DeviceCellular.fromJson(Map<String, dynamic> json) => _$DeviceCellularFromJson(json);

@override final  String? imei;
@override final  String? meid;

/// Create a copy of DeviceCellular
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeviceCellularCopyWith<_DeviceCellular> get copyWith => __$DeviceCellularCopyWithImpl<_DeviceCellular>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DeviceCellularToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeviceCellular&&(identical(other.imei, imei) || other.imei == imei)&&(identical(other.meid, meid) || other.meid == meid));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,imei,meid);

@override
String toString() {
  return 'DeviceCellular(imei: $imei, meid: $meid)';
}


}

/// @nodoc
abstract mixin class _$DeviceCellularCopyWith<$Res> implements $DeviceCellularCopyWith<$Res> {
  factory _$DeviceCellularCopyWith(_DeviceCellular value, $Res Function(_DeviceCellular) _then) = __$DeviceCellularCopyWithImpl;
@override @useResult
$Res call({
 String? imei, String? meid
});




}
/// @nodoc
class __$DeviceCellularCopyWithImpl<$Res>
    implements _$DeviceCellularCopyWith<$Res> {
  __$DeviceCellularCopyWithImpl(this._self, this._then);

  final _DeviceCellular _self;
  final $Res Function(_DeviceCellular) _then;

/// Create a copy of DeviceCellular
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? imei = freezed,Object? meid = freezed,}) {
  return _then(_DeviceCellular(
imei: freezed == imei ? _self.imei : imei // ignore: cast_nullable_to_non_nullable
as String?,meid: freezed == meid ? _self.meid : meid // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$DeviceLostMode {

@JsonKey(name: 'lost_mode_status') String? get lostModeStatus;@JsonKey(name: 'enabled_by') String? get enabledBy;@JsonKey(name: 'enable_status_at') String? get enableStatusAt;@JsonKey(name: 'lock_screen_message') String? get lockScreenMessage;@JsonKey(name: 'lock_screen_phone_number') String? get lockScreenPhoneNumber;@JsonKey(name: 'last_location') Map<String, dynamic>? get lastLocation;@JsonKey(name: 'last_location_at') String? get lastLocationAt;
/// Create a copy of DeviceLostMode
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeviceLostModeCopyWith<DeviceLostMode> get copyWith => _$DeviceLostModeCopyWithImpl<DeviceLostMode>(this as DeviceLostMode, _$identity);

  /// Serializes this DeviceLostMode to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeviceLostMode&&(identical(other.lostModeStatus, lostModeStatus) || other.lostModeStatus == lostModeStatus)&&(identical(other.enabledBy, enabledBy) || other.enabledBy == enabledBy)&&(identical(other.enableStatusAt, enableStatusAt) || other.enableStatusAt == enableStatusAt)&&(identical(other.lockScreenMessage, lockScreenMessage) || other.lockScreenMessage == lockScreenMessage)&&(identical(other.lockScreenPhoneNumber, lockScreenPhoneNumber) || other.lockScreenPhoneNumber == lockScreenPhoneNumber)&&const DeepCollectionEquality().equals(other.lastLocation, lastLocation)&&(identical(other.lastLocationAt, lastLocationAt) || other.lastLocationAt == lastLocationAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,lostModeStatus,enabledBy,enableStatusAt,lockScreenMessage,lockScreenPhoneNumber,const DeepCollectionEquality().hash(lastLocation),lastLocationAt);

@override
String toString() {
  return 'DeviceLostMode(lostModeStatus: $lostModeStatus, enabledBy: $enabledBy, enableStatusAt: $enableStatusAt, lockScreenMessage: $lockScreenMessage, lockScreenPhoneNumber: $lockScreenPhoneNumber, lastLocation: $lastLocation, lastLocationAt: $lastLocationAt)';
}


}

/// @nodoc
abstract mixin class $DeviceLostModeCopyWith<$Res>  {
  factory $DeviceLostModeCopyWith(DeviceLostMode value, $Res Function(DeviceLostMode) _then) = _$DeviceLostModeCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'lost_mode_status') String? lostModeStatus,@JsonKey(name: 'enabled_by') String? enabledBy,@JsonKey(name: 'enable_status_at') String? enableStatusAt,@JsonKey(name: 'lock_screen_message') String? lockScreenMessage,@JsonKey(name: 'lock_screen_phone_number') String? lockScreenPhoneNumber,@JsonKey(name: 'last_location') Map<String, dynamic>? lastLocation,@JsonKey(name: 'last_location_at') String? lastLocationAt
});




}
/// @nodoc
class _$DeviceLostModeCopyWithImpl<$Res>
    implements $DeviceLostModeCopyWith<$Res> {
  _$DeviceLostModeCopyWithImpl(this._self, this._then);

  final DeviceLostMode _self;
  final $Res Function(DeviceLostMode) _then;

/// Create a copy of DeviceLostMode
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? lostModeStatus = freezed,Object? enabledBy = freezed,Object? enableStatusAt = freezed,Object? lockScreenMessage = freezed,Object? lockScreenPhoneNumber = freezed,Object? lastLocation = freezed,Object? lastLocationAt = freezed,}) {
  return _then(_self.copyWith(
lostModeStatus: freezed == lostModeStatus ? _self.lostModeStatus : lostModeStatus // ignore: cast_nullable_to_non_nullable
as String?,enabledBy: freezed == enabledBy ? _self.enabledBy : enabledBy // ignore: cast_nullable_to_non_nullable
as String?,enableStatusAt: freezed == enableStatusAt ? _self.enableStatusAt : enableStatusAt // ignore: cast_nullable_to_non_nullable
as String?,lockScreenMessage: freezed == lockScreenMessage ? _self.lockScreenMessage : lockScreenMessage // ignore: cast_nullable_to_non_nullable
as String?,lockScreenPhoneNumber: freezed == lockScreenPhoneNumber ? _self.lockScreenPhoneNumber : lockScreenPhoneNumber // ignore: cast_nullable_to_non_nullable
as String?,lastLocation: freezed == lastLocation ? _self.lastLocation : lastLocation // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,lastLocationAt: freezed == lastLocationAt ? _self.lastLocationAt : lastLocationAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [DeviceLostMode].
extension DeviceLostModePatterns on DeviceLostMode {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DeviceLostMode value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DeviceLostMode() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DeviceLostMode value)  $default,){
final _that = this;
switch (_that) {
case _DeviceLostMode():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DeviceLostMode value)?  $default,){
final _that = this;
switch (_that) {
case _DeviceLostMode() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'lost_mode_status')  String? lostModeStatus, @JsonKey(name: 'enabled_by')  String? enabledBy, @JsonKey(name: 'enable_status_at')  String? enableStatusAt, @JsonKey(name: 'lock_screen_message')  String? lockScreenMessage, @JsonKey(name: 'lock_screen_phone_number')  String? lockScreenPhoneNumber, @JsonKey(name: 'last_location')  Map<String, dynamic>? lastLocation, @JsonKey(name: 'last_location_at')  String? lastLocationAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DeviceLostMode() when $default != null:
return $default(_that.lostModeStatus,_that.enabledBy,_that.enableStatusAt,_that.lockScreenMessage,_that.lockScreenPhoneNumber,_that.lastLocation,_that.lastLocationAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'lost_mode_status')  String? lostModeStatus, @JsonKey(name: 'enabled_by')  String? enabledBy, @JsonKey(name: 'enable_status_at')  String? enableStatusAt, @JsonKey(name: 'lock_screen_message')  String? lockScreenMessage, @JsonKey(name: 'lock_screen_phone_number')  String? lockScreenPhoneNumber, @JsonKey(name: 'last_location')  Map<String, dynamic>? lastLocation, @JsonKey(name: 'last_location_at')  String? lastLocationAt)  $default,) {final _that = this;
switch (_that) {
case _DeviceLostMode():
return $default(_that.lostModeStatus,_that.enabledBy,_that.enableStatusAt,_that.lockScreenMessage,_that.lockScreenPhoneNumber,_that.lastLocation,_that.lastLocationAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'lost_mode_status')  String? lostModeStatus, @JsonKey(name: 'enabled_by')  String? enabledBy, @JsonKey(name: 'enable_status_at')  String? enableStatusAt, @JsonKey(name: 'lock_screen_message')  String? lockScreenMessage, @JsonKey(name: 'lock_screen_phone_number')  String? lockScreenPhoneNumber, @JsonKey(name: 'last_location')  Map<String, dynamic>? lastLocation, @JsonKey(name: 'last_location_at')  String? lastLocationAt)?  $default,) {final _that = this;
switch (_that) {
case _DeviceLostMode() when $default != null:
return $default(_that.lostModeStatus,_that.enabledBy,_that.enableStatusAt,_that.lockScreenMessage,_that.lockScreenPhoneNumber,_that.lastLocation,_that.lastLocationAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DeviceLostMode extends DeviceLostMode {
  const _DeviceLostMode({@JsonKey(name: 'lost_mode_status') this.lostModeStatus, @JsonKey(name: 'enabled_by') this.enabledBy, @JsonKey(name: 'enable_status_at') this.enableStatusAt, @JsonKey(name: 'lock_screen_message') this.lockScreenMessage, @JsonKey(name: 'lock_screen_phone_number') this.lockScreenPhoneNumber, @JsonKey(name: 'last_location') final  Map<String, dynamic>? lastLocation, @JsonKey(name: 'last_location_at') this.lastLocationAt}): _lastLocation = lastLocation,super._();
  factory _DeviceLostMode.fromJson(Map<String, dynamic> json) => _$DeviceLostModeFromJson(json);

@override@JsonKey(name: 'lost_mode_status') final  String? lostModeStatus;
@override@JsonKey(name: 'enabled_by') final  String? enabledBy;
@override@JsonKey(name: 'enable_status_at') final  String? enableStatusAt;
@override@JsonKey(name: 'lock_screen_message') final  String? lockScreenMessage;
@override@JsonKey(name: 'lock_screen_phone_number') final  String? lockScreenPhoneNumber;
 final  Map<String, dynamic>? _lastLocation;
@override@JsonKey(name: 'last_location') Map<String, dynamic>? get lastLocation {
  final value = _lastLocation;
  if (value == null) return null;
  if (_lastLocation is EqualUnmodifiableMapView) return _lastLocation;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

@override@JsonKey(name: 'last_location_at') final  String? lastLocationAt;

/// Create a copy of DeviceLostMode
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeviceLostModeCopyWith<_DeviceLostMode> get copyWith => __$DeviceLostModeCopyWithImpl<_DeviceLostMode>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DeviceLostModeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeviceLostMode&&(identical(other.lostModeStatus, lostModeStatus) || other.lostModeStatus == lostModeStatus)&&(identical(other.enabledBy, enabledBy) || other.enabledBy == enabledBy)&&(identical(other.enableStatusAt, enableStatusAt) || other.enableStatusAt == enableStatusAt)&&(identical(other.lockScreenMessage, lockScreenMessage) || other.lockScreenMessage == lockScreenMessage)&&(identical(other.lockScreenPhoneNumber, lockScreenPhoneNumber) || other.lockScreenPhoneNumber == lockScreenPhoneNumber)&&const DeepCollectionEquality().equals(other._lastLocation, _lastLocation)&&(identical(other.lastLocationAt, lastLocationAt) || other.lastLocationAt == lastLocationAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,lostModeStatus,enabledBy,enableStatusAt,lockScreenMessage,lockScreenPhoneNumber,const DeepCollectionEquality().hash(_lastLocation),lastLocationAt);

@override
String toString() {
  return 'DeviceLostMode(lostModeStatus: $lostModeStatus, enabledBy: $enabledBy, enableStatusAt: $enableStatusAt, lockScreenMessage: $lockScreenMessage, lockScreenPhoneNumber: $lockScreenPhoneNumber, lastLocation: $lastLocation, lastLocationAt: $lastLocationAt)';
}


}

/// @nodoc
abstract mixin class _$DeviceLostModeCopyWith<$Res> implements $DeviceLostModeCopyWith<$Res> {
  factory _$DeviceLostModeCopyWith(_DeviceLostMode value, $Res Function(_DeviceLostMode) _then) = __$DeviceLostModeCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'lost_mode_status') String? lostModeStatus,@JsonKey(name: 'enabled_by') String? enabledBy,@JsonKey(name: 'enable_status_at') String? enableStatusAt,@JsonKey(name: 'lock_screen_message') String? lockScreenMessage,@JsonKey(name: 'lock_screen_phone_number') String? lockScreenPhoneNumber,@JsonKey(name: 'last_location') Map<String, dynamic>? lastLocation,@JsonKey(name: 'last_location_at') String? lastLocationAt
});




}
/// @nodoc
class __$DeviceLostModeCopyWithImpl<$Res>
    implements _$DeviceLostModeCopyWith<$Res> {
  __$DeviceLostModeCopyWithImpl(this._self, this._then);

  final _DeviceLostMode _self;
  final $Res Function(_DeviceLostMode) _then;

/// Create a copy of DeviceLostMode
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? lostModeStatus = freezed,Object? enabledBy = freezed,Object? enableStatusAt = freezed,Object? lockScreenMessage = freezed,Object? lockScreenPhoneNumber = freezed,Object? lastLocation = freezed,Object? lastLocationAt = freezed,}) {
  return _then(_DeviceLostMode(
lostModeStatus: freezed == lostModeStatus ? _self.lostModeStatus : lostModeStatus // ignore: cast_nullable_to_non_nullable
as String?,enabledBy: freezed == enabledBy ? _self.enabledBy : enabledBy // ignore: cast_nullable_to_non_nullable
as String?,enableStatusAt: freezed == enableStatusAt ? _self.enableStatusAt : enableStatusAt // ignore: cast_nullable_to_non_nullable
as String?,lockScreenMessage: freezed == lockScreenMessage ? _self.lockScreenMessage : lockScreenMessage // ignore: cast_nullable_to_non_nullable
as String?,lockScreenPhoneNumber: freezed == lockScreenPhoneNumber ? _self.lockScreenPhoneNumber : lockScreenPhoneNumber // ignore: cast_nullable_to_non_nullable
as String?,lastLocation: freezed == lastLocation ? _self._lastLocation : lastLocation // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,lastLocationAt: freezed == lastLocationAt ? _self.lastLocationAt : lastLocationAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$DeviceMdm {

@JsonKey(name: 'mdm_enabled', fromJson: _toNullableBool) bool? get mdmEnabled;@JsonKey(name: 'enrolled_via_dep', fromJson: _toNullableBool) bool? get enrolledViaDep;@JsonKey(name: 'user_approved_enrollment', fromJson: _toNullableBool) bool? get userApprovedEnrollment;@JsonKey(name: 'user_approved_mdm', fromJson: _toNullableBool) bool? get userApprovedMdm;
/// Create a copy of DeviceMdm
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeviceMdmCopyWith<DeviceMdm> get copyWith => _$DeviceMdmCopyWithImpl<DeviceMdm>(this as DeviceMdm, _$identity);

  /// Serializes this DeviceMdm to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeviceMdm&&(identical(other.mdmEnabled, mdmEnabled) || other.mdmEnabled == mdmEnabled)&&(identical(other.enrolledViaDep, enrolledViaDep) || other.enrolledViaDep == enrolledViaDep)&&(identical(other.userApprovedEnrollment, userApprovedEnrollment) || other.userApprovedEnrollment == userApprovedEnrollment)&&(identical(other.userApprovedMdm, userApprovedMdm) || other.userApprovedMdm == userApprovedMdm));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,mdmEnabled,enrolledViaDep,userApprovedEnrollment,userApprovedMdm);

@override
String toString() {
  return 'DeviceMdm(mdmEnabled: $mdmEnabled, enrolledViaDep: $enrolledViaDep, userApprovedEnrollment: $userApprovedEnrollment, userApprovedMdm: $userApprovedMdm)';
}


}

/// @nodoc
abstract mixin class $DeviceMdmCopyWith<$Res>  {
  factory $DeviceMdmCopyWith(DeviceMdm value, $Res Function(DeviceMdm) _then) = _$DeviceMdmCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'mdm_enabled', fromJson: _toNullableBool) bool? mdmEnabled,@JsonKey(name: 'enrolled_via_dep', fromJson: _toNullableBool) bool? enrolledViaDep,@JsonKey(name: 'user_approved_enrollment', fromJson: _toNullableBool) bool? userApprovedEnrollment,@JsonKey(name: 'user_approved_mdm', fromJson: _toNullableBool) bool? userApprovedMdm
});




}
/// @nodoc
class _$DeviceMdmCopyWithImpl<$Res>
    implements $DeviceMdmCopyWith<$Res> {
  _$DeviceMdmCopyWithImpl(this._self, this._then);

  final DeviceMdm _self;
  final $Res Function(DeviceMdm) _then;

/// Create a copy of DeviceMdm
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? mdmEnabled = freezed,Object? enrolledViaDep = freezed,Object? userApprovedEnrollment = freezed,Object? userApprovedMdm = freezed,}) {
  return _then(_self.copyWith(
mdmEnabled: freezed == mdmEnabled ? _self.mdmEnabled : mdmEnabled // ignore: cast_nullable_to_non_nullable
as bool?,enrolledViaDep: freezed == enrolledViaDep ? _self.enrolledViaDep : enrolledViaDep // ignore: cast_nullable_to_non_nullable
as bool?,userApprovedEnrollment: freezed == userApprovedEnrollment ? _self.userApprovedEnrollment : userApprovedEnrollment // ignore: cast_nullable_to_non_nullable
as bool?,userApprovedMdm: freezed == userApprovedMdm ? _self.userApprovedMdm : userApprovedMdm // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [DeviceMdm].
extension DeviceMdmPatterns on DeviceMdm {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DeviceMdm value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DeviceMdm() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DeviceMdm value)  $default,){
final _that = this;
switch (_that) {
case _DeviceMdm():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DeviceMdm value)?  $default,){
final _that = this;
switch (_that) {
case _DeviceMdm() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'mdm_enabled', fromJson: _toNullableBool)  bool? mdmEnabled, @JsonKey(name: 'enrolled_via_dep', fromJson: _toNullableBool)  bool? enrolledViaDep, @JsonKey(name: 'user_approved_enrollment', fromJson: _toNullableBool)  bool? userApprovedEnrollment, @JsonKey(name: 'user_approved_mdm', fromJson: _toNullableBool)  bool? userApprovedMdm)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DeviceMdm() when $default != null:
return $default(_that.mdmEnabled,_that.enrolledViaDep,_that.userApprovedEnrollment,_that.userApprovedMdm);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'mdm_enabled', fromJson: _toNullableBool)  bool? mdmEnabled, @JsonKey(name: 'enrolled_via_dep', fromJson: _toNullableBool)  bool? enrolledViaDep, @JsonKey(name: 'user_approved_enrollment', fromJson: _toNullableBool)  bool? userApprovedEnrollment, @JsonKey(name: 'user_approved_mdm', fromJson: _toNullableBool)  bool? userApprovedMdm)  $default,) {final _that = this;
switch (_that) {
case _DeviceMdm():
return $default(_that.mdmEnabled,_that.enrolledViaDep,_that.userApprovedEnrollment,_that.userApprovedMdm);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'mdm_enabled', fromJson: _toNullableBool)  bool? mdmEnabled, @JsonKey(name: 'enrolled_via_dep', fromJson: _toNullableBool)  bool? enrolledViaDep, @JsonKey(name: 'user_approved_enrollment', fromJson: _toNullableBool)  bool? userApprovedEnrollment, @JsonKey(name: 'user_approved_mdm', fromJson: _toNullableBool)  bool? userApprovedMdm)?  $default,) {final _that = this;
switch (_that) {
case _DeviceMdm() when $default != null:
return $default(_that.mdmEnabled,_that.enrolledViaDep,_that.userApprovedEnrollment,_that.userApprovedMdm);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DeviceMdm implements DeviceMdm {
  const _DeviceMdm({@JsonKey(name: 'mdm_enabled', fromJson: _toNullableBool) this.mdmEnabled, @JsonKey(name: 'enrolled_via_dep', fromJson: _toNullableBool) this.enrolledViaDep, @JsonKey(name: 'user_approved_enrollment', fromJson: _toNullableBool) this.userApprovedEnrollment, @JsonKey(name: 'user_approved_mdm', fromJson: _toNullableBool) this.userApprovedMdm});
  factory _DeviceMdm.fromJson(Map<String, dynamic> json) => _$DeviceMdmFromJson(json);

@override@JsonKey(name: 'mdm_enabled', fromJson: _toNullableBool) final  bool? mdmEnabled;
@override@JsonKey(name: 'enrolled_via_dep', fromJson: _toNullableBool) final  bool? enrolledViaDep;
@override@JsonKey(name: 'user_approved_enrollment', fromJson: _toNullableBool) final  bool? userApprovedEnrollment;
@override@JsonKey(name: 'user_approved_mdm', fromJson: _toNullableBool) final  bool? userApprovedMdm;

/// Create a copy of DeviceMdm
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeviceMdmCopyWith<_DeviceMdm> get copyWith => __$DeviceMdmCopyWithImpl<_DeviceMdm>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DeviceMdmToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeviceMdm&&(identical(other.mdmEnabled, mdmEnabled) || other.mdmEnabled == mdmEnabled)&&(identical(other.enrolledViaDep, enrolledViaDep) || other.enrolledViaDep == enrolledViaDep)&&(identical(other.userApprovedEnrollment, userApprovedEnrollment) || other.userApprovedEnrollment == userApprovedEnrollment)&&(identical(other.userApprovedMdm, userApprovedMdm) || other.userApprovedMdm == userApprovedMdm));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,mdmEnabled,enrolledViaDep,userApprovedEnrollment,userApprovedMdm);

@override
String toString() {
  return 'DeviceMdm(mdmEnabled: $mdmEnabled, enrolledViaDep: $enrolledViaDep, userApprovedEnrollment: $userApprovedEnrollment, userApprovedMdm: $userApprovedMdm)';
}


}

/// @nodoc
abstract mixin class _$DeviceMdmCopyWith<$Res> implements $DeviceMdmCopyWith<$Res> {
  factory _$DeviceMdmCopyWith(_DeviceMdm value, $Res Function(_DeviceMdm) _then) = __$DeviceMdmCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'mdm_enabled', fromJson: _toNullableBool) bool? mdmEnabled,@JsonKey(name: 'enrolled_via_dep', fromJson: _toNullableBool) bool? enrolledViaDep,@JsonKey(name: 'user_approved_enrollment', fromJson: _toNullableBool) bool? userApprovedEnrollment,@JsonKey(name: 'user_approved_mdm', fromJson: _toNullableBool) bool? userApprovedMdm
});




}
/// @nodoc
class __$DeviceMdmCopyWithImpl<$Res>
    implements _$DeviceMdmCopyWith<$Res> {
  __$DeviceMdmCopyWithImpl(this._self, this._then);

  final _DeviceMdm _self;
  final $Res Function(_DeviceMdm) _then;

/// Create a copy of DeviceMdm
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? mdmEnabled = freezed,Object? enrolledViaDep = freezed,Object? userApprovedEnrollment = freezed,Object? userApprovedMdm = freezed,}) {
  return _then(_DeviceMdm(
mdmEnabled: freezed == mdmEnabled ? _self.mdmEnabled : mdmEnabled // ignore: cast_nullable_to_non_nullable
as bool?,enrolledViaDep: freezed == enrolledViaDep ? _self.enrolledViaDep : enrolledViaDep // ignore: cast_nullable_to_non_nullable
as bool?,userApprovedEnrollment: freezed == userApprovedEnrollment ? _self.userApprovedEnrollment : userApprovedEnrollment // ignore: cast_nullable_to_non_nullable
as bool?,userApprovedMdm: freezed == userApprovedMdm ? _self.userApprovedMdm : userApprovedMdm // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}


/// @nodoc
mixin _$DeviceNetwork {

@JsonKey(name: 'ip_address') String? get ipAddress;@JsonKey(name: 'wifi_network') String? get wifiNetwork;@JsonKey(name: 'bluetooth_mac_address') String? get bluetoothMacAddress;@JsonKey(name: 'local_hostname') String? get localHostname;@JsonKey(name: 'mac_address') String? get macAddress;@JsonKey(name: 'public_ip') String? get publicIp;
/// Create a copy of DeviceNetwork
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeviceNetworkCopyWith<DeviceNetwork> get copyWith => _$DeviceNetworkCopyWithImpl<DeviceNetwork>(this as DeviceNetwork, _$identity);

  /// Serializes this DeviceNetwork to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeviceNetwork&&(identical(other.ipAddress, ipAddress) || other.ipAddress == ipAddress)&&(identical(other.wifiNetwork, wifiNetwork) || other.wifiNetwork == wifiNetwork)&&(identical(other.bluetoothMacAddress, bluetoothMacAddress) || other.bluetoothMacAddress == bluetoothMacAddress)&&(identical(other.localHostname, localHostname) || other.localHostname == localHostname)&&(identical(other.macAddress, macAddress) || other.macAddress == macAddress)&&(identical(other.publicIp, publicIp) || other.publicIp == publicIp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,ipAddress,wifiNetwork,bluetoothMacAddress,localHostname,macAddress,publicIp);

@override
String toString() {
  return 'DeviceNetwork(ipAddress: $ipAddress, wifiNetwork: $wifiNetwork, bluetoothMacAddress: $bluetoothMacAddress, localHostname: $localHostname, macAddress: $macAddress, publicIp: $publicIp)';
}


}

/// @nodoc
abstract mixin class $DeviceNetworkCopyWith<$Res>  {
  factory $DeviceNetworkCopyWith(DeviceNetwork value, $Res Function(DeviceNetwork) _then) = _$DeviceNetworkCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'ip_address') String? ipAddress,@JsonKey(name: 'wifi_network') String? wifiNetwork,@JsonKey(name: 'bluetooth_mac_address') String? bluetoothMacAddress,@JsonKey(name: 'local_hostname') String? localHostname,@JsonKey(name: 'mac_address') String? macAddress,@JsonKey(name: 'public_ip') String? publicIp
});




}
/// @nodoc
class _$DeviceNetworkCopyWithImpl<$Res>
    implements $DeviceNetworkCopyWith<$Res> {
  _$DeviceNetworkCopyWithImpl(this._self, this._then);

  final DeviceNetwork _self;
  final $Res Function(DeviceNetwork) _then;

/// Create a copy of DeviceNetwork
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? ipAddress = freezed,Object? wifiNetwork = freezed,Object? bluetoothMacAddress = freezed,Object? localHostname = freezed,Object? macAddress = freezed,Object? publicIp = freezed,}) {
  return _then(_self.copyWith(
ipAddress: freezed == ipAddress ? _self.ipAddress : ipAddress // ignore: cast_nullable_to_non_nullable
as String?,wifiNetwork: freezed == wifiNetwork ? _self.wifiNetwork : wifiNetwork // ignore: cast_nullable_to_non_nullable
as String?,bluetoothMacAddress: freezed == bluetoothMacAddress ? _self.bluetoothMacAddress : bluetoothMacAddress // ignore: cast_nullable_to_non_nullable
as String?,localHostname: freezed == localHostname ? _self.localHostname : localHostname // ignore: cast_nullable_to_non_nullable
as String?,macAddress: freezed == macAddress ? _self.macAddress : macAddress // ignore: cast_nullable_to_non_nullable
as String?,publicIp: freezed == publicIp ? _self.publicIp : publicIp // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [DeviceNetwork].
extension DeviceNetworkPatterns on DeviceNetwork {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DeviceNetwork value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DeviceNetwork() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DeviceNetwork value)  $default,){
final _that = this;
switch (_that) {
case _DeviceNetwork():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DeviceNetwork value)?  $default,){
final _that = this;
switch (_that) {
case _DeviceNetwork() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'ip_address')  String? ipAddress, @JsonKey(name: 'wifi_network')  String? wifiNetwork, @JsonKey(name: 'bluetooth_mac_address')  String? bluetoothMacAddress, @JsonKey(name: 'local_hostname')  String? localHostname, @JsonKey(name: 'mac_address')  String? macAddress, @JsonKey(name: 'public_ip')  String? publicIp)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DeviceNetwork() when $default != null:
return $default(_that.ipAddress,_that.wifiNetwork,_that.bluetoothMacAddress,_that.localHostname,_that.macAddress,_that.publicIp);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'ip_address')  String? ipAddress, @JsonKey(name: 'wifi_network')  String? wifiNetwork, @JsonKey(name: 'bluetooth_mac_address')  String? bluetoothMacAddress, @JsonKey(name: 'local_hostname')  String? localHostname, @JsonKey(name: 'mac_address')  String? macAddress, @JsonKey(name: 'public_ip')  String? publicIp)  $default,) {final _that = this;
switch (_that) {
case _DeviceNetwork():
return $default(_that.ipAddress,_that.wifiNetwork,_that.bluetoothMacAddress,_that.localHostname,_that.macAddress,_that.publicIp);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'ip_address')  String? ipAddress, @JsonKey(name: 'wifi_network')  String? wifiNetwork, @JsonKey(name: 'bluetooth_mac_address')  String? bluetoothMacAddress, @JsonKey(name: 'local_hostname')  String? localHostname, @JsonKey(name: 'mac_address')  String? macAddress, @JsonKey(name: 'public_ip')  String? publicIp)?  $default,) {final _that = this;
switch (_that) {
case _DeviceNetwork() when $default != null:
return $default(_that.ipAddress,_that.wifiNetwork,_that.bluetoothMacAddress,_that.localHostname,_that.macAddress,_that.publicIp);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DeviceNetwork implements DeviceNetwork {
  const _DeviceNetwork({@JsonKey(name: 'ip_address') this.ipAddress, @JsonKey(name: 'wifi_network') this.wifiNetwork, @JsonKey(name: 'bluetooth_mac_address') this.bluetoothMacAddress, @JsonKey(name: 'local_hostname') this.localHostname, @JsonKey(name: 'mac_address') this.macAddress, @JsonKey(name: 'public_ip') this.publicIp});
  factory _DeviceNetwork.fromJson(Map<String, dynamic> json) => _$DeviceNetworkFromJson(json);

@override@JsonKey(name: 'ip_address') final  String? ipAddress;
@override@JsonKey(name: 'wifi_network') final  String? wifiNetwork;
@override@JsonKey(name: 'bluetooth_mac_address') final  String? bluetoothMacAddress;
@override@JsonKey(name: 'local_hostname') final  String? localHostname;
@override@JsonKey(name: 'mac_address') final  String? macAddress;
@override@JsonKey(name: 'public_ip') final  String? publicIp;

/// Create a copy of DeviceNetwork
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeviceNetworkCopyWith<_DeviceNetwork> get copyWith => __$DeviceNetworkCopyWithImpl<_DeviceNetwork>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DeviceNetworkToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeviceNetwork&&(identical(other.ipAddress, ipAddress) || other.ipAddress == ipAddress)&&(identical(other.wifiNetwork, wifiNetwork) || other.wifiNetwork == wifiNetwork)&&(identical(other.bluetoothMacAddress, bluetoothMacAddress) || other.bluetoothMacAddress == bluetoothMacAddress)&&(identical(other.localHostname, localHostname) || other.localHostname == localHostname)&&(identical(other.macAddress, macAddress) || other.macAddress == macAddress)&&(identical(other.publicIp, publicIp) || other.publicIp == publicIp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,ipAddress,wifiNetwork,bluetoothMacAddress,localHostname,macAddress,publicIp);

@override
String toString() {
  return 'DeviceNetwork(ipAddress: $ipAddress, wifiNetwork: $wifiNetwork, bluetoothMacAddress: $bluetoothMacAddress, localHostname: $localHostname, macAddress: $macAddress, publicIp: $publicIp)';
}


}

/// @nodoc
abstract mixin class _$DeviceNetworkCopyWith<$Res> implements $DeviceNetworkCopyWith<$Res> {
  factory _$DeviceNetworkCopyWith(_DeviceNetwork value, $Res Function(_DeviceNetwork) _then) = __$DeviceNetworkCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'ip_address') String? ipAddress,@JsonKey(name: 'wifi_network') String? wifiNetwork,@JsonKey(name: 'bluetooth_mac_address') String? bluetoothMacAddress,@JsonKey(name: 'local_hostname') String? localHostname,@JsonKey(name: 'mac_address') String? macAddress,@JsonKey(name: 'public_ip') String? publicIp
});




}
/// @nodoc
class __$DeviceNetworkCopyWithImpl<$Res>
    implements _$DeviceNetworkCopyWith<$Res> {
  __$DeviceNetworkCopyWithImpl(this._self, this._then);

  final _DeviceNetwork _self;
  final $Res Function(_DeviceNetwork) _then;

/// Create a copy of DeviceNetwork
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? ipAddress = freezed,Object? wifiNetwork = freezed,Object? bluetoothMacAddress = freezed,Object? localHostname = freezed,Object? macAddress = freezed,Object? publicIp = freezed,}) {
  return _then(_DeviceNetwork(
ipAddress: freezed == ipAddress ? _self.ipAddress : ipAddress // ignore: cast_nullable_to_non_nullable
as String?,wifiNetwork: freezed == wifiNetwork ? _self.wifiNetwork : wifiNetwork // ignore: cast_nullable_to_non_nullable
as String?,bluetoothMacAddress: freezed == bluetoothMacAddress ? _self.bluetoothMacAddress : bluetoothMacAddress // ignore: cast_nullable_to_non_nullable
as String?,localHostname: freezed == localHostname ? _self.localHostname : localHostname // ignore: cast_nullable_to_non_nullable
as String?,macAddress: freezed == macAddress ? _self.macAddress : macAddress // ignore: cast_nullable_to_non_nullable
as String?,publicIp: freezed == publicIp ? _self.publicIp : publicIp // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$DeviceVolume {

 String? get name; String? get identifier;@JsonKey(name: 'file_system') String? get fileSystem; String? get capacity; String? get available;@JsonKey(name: 'percent_used') String? get percentUsed;@JsonKey(name: 'encrypted', fromJson: _toNullableBool) bool? get encrypted;
/// Create a copy of DeviceVolume
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeviceVolumeCopyWith<DeviceVolume> get copyWith => _$DeviceVolumeCopyWithImpl<DeviceVolume>(this as DeviceVolume, _$identity);

  /// Serializes this DeviceVolume to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeviceVolume&&(identical(other.name, name) || other.name == name)&&(identical(other.identifier, identifier) || other.identifier == identifier)&&(identical(other.fileSystem, fileSystem) || other.fileSystem == fileSystem)&&(identical(other.capacity, capacity) || other.capacity == capacity)&&(identical(other.available, available) || other.available == available)&&(identical(other.percentUsed, percentUsed) || other.percentUsed == percentUsed)&&(identical(other.encrypted, encrypted) || other.encrypted == encrypted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,identifier,fileSystem,capacity,available,percentUsed,encrypted);

@override
String toString() {
  return 'DeviceVolume(name: $name, identifier: $identifier, fileSystem: $fileSystem, capacity: $capacity, available: $available, percentUsed: $percentUsed, encrypted: $encrypted)';
}


}

/// @nodoc
abstract mixin class $DeviceVolumeCopyWith<$Res>  {
  factory $DeviceVolumeCopyWith(DeviceVolume value, $Res Function(DeviceVolume) _then) = _$DeviceVolumeCopyWithImpl;
@useResult
$Res call({
 String? name, String? identifier,@JsonKey(name: 'file_system') String? fileSystem, String? capacity, String? available,@JsonKey(name: 'percent_used') String? percentUsed,@JsonKey(name: 'encrypted', fromJson: _toNullableBool) bool? encrypted
});




}
/// @nodoc
class _$DeviceVolumeCopyWithImpl<$Res>
    implements $DeviceVolumeCopyWith<$Res> {
  _$DeviceVolumeCopyWithImpl(this._self, this._then);

  final DeviceVolume _self;
  final $Res Function(DeviceVolume) _then;

/// Create a copy of DeviceVolume
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? identifier = freezed,Object? fileSystem = freezed,Object? capacity = freezed,Object? available = freezed,Object? percentUsed = freezed,Object? encrypted = freezed,}) {
  return _then(_self.copyWith(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,identifier: freezed == identifier ? _self.identifier : identifier // ignore: cast_nullable_to_non_nullable
as String?,fileSystem: freezed == fileSystem ? _self.fileSystem : fileSystem // ignore: cast_nullable_to_non_nullable
as String?,capacity: freezed == capacity ? _self.capacity : capacity // ignore: cast_nullable_to_non_nullable
as String?,available: freezed == available ? _self.available : available // ignore: cast_nullable_to_non_nullable
as String?,percentUsed: freezed == percentUsed ? _self.percentUsed : percentUsed // ignore: cast_nullable_to_non_nullable
as String?,encrypted: freezed == encrypted ? _self.encrypted : encrypted // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [DeviceVolume].
extension DeviceVolumePatterns on DeviceVolume {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DeviceVolume value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DeviceVolume() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DeviceVolume value)  $default,){
final _that = this;
switch (_that) {
case _DeviceVolume():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DeviceVolume value)?  $default,){
final _that = this;
switch (_that) {
case _DeviceVolume() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? name,  String? identifier, @JsonKey(name: 'file_system')  String? fileSystem,  String? capacity,  String? available, @JsonKey(name: 'percent_used')  String? percentUsed, @JsonKey(name: 'encrypted', fromJson: _toNullableBool)  bool? encrypted)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DeviceVolume() when $default != null:
return $default(_that.name,_that.identifier,_that.fileSystem,_that.capacity,_that.available,_that.percentUsed,_that.encrypted);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? name,  String? identifier, @JsonKey(name: 'file_system')  String? fileSystem,  String? capacity,  String? available, @JsonKey(name: 'percent_used')  String? percentUsed, @JsonKey(name: 'encrypted', fromJson: _toNullableBool)  bool? encrypted)  $default,) {final _that = this;
switch (_that) {
case _DeviceVolume():
return $default(_that.name,_that.identifier,_that.fileSystem,_that.capacity,_that.available,_that.percentUsed,_that.encrypted);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? name,  String? identifier, @JsonKey(name: 'file_system')  String? fileSystem,  String? capacity,  String? available, @JsonKey(name: 'percent_used')  String? percentUsed, @JsonKey(name: 'encrypted', fromJson: _toNullableBool)  bool? encrypted)?  $default,) {final _that = this;
switch (_that) {
case _DeviceVolume() when $default != null:
return $default(_that.name,_that.identifier,_that.fileSystem,_that.capacity,_that.available,_that.percentUsed,_that.encrypted);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DeviceVolume implements DeviceVolume {
  const _DeviceVolume({this.name, this.identifier, @JsonKey(name: 'file_system') this.fileSystem, this.capacity, this.available, @JsonKey(name: 'percent_used') this.percentUsed, @JsonKey(name: 'encrypted', fromJson: _toNullableBool) this.encrypted});
  factory _DeviceVolume.fromJson(Map<String, dynamic> json) => _$DeviceVolumeFromJson(json);

@override final  String? name;
@override final  String? identifier;
@override@JsonKey(name: 'file_system') final  String? fileSystem;
@override final  String? capacity;
@override final  String? available;
@override@JsonKey(name: 'percent_used') final  String? percentUsed;
@override@JsonKey(name: 'encrypted', fromJson: _toNullableBool) final  bool? encrypted;

/// Create a copy of DeviceVolume
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeviceVolumeCopyWith<_DeviceVolume> get copyWith => __$DeviceVolumeCopyWithImpl<_DeviceVolume>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DeviceVolumeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeviceVolume&&(identical(other.name, name) || other.name == name)&&(identical(other.identifier, identifier) || other.identifier == identifier)&&(identical(other.fileSystem, fileSystem) || other.fileSystem == fileSystem)&&(identical(other.capacity, capacity) || other.capacity == capacity)&&(identical(other.available, available) || other.available == available)&&(identical(other.percentUsed, percentUsed) || other.percentUsed == percentUsed)&&(identical(other.encrypted, encrypted) || other.encrypted == encrypted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,identifier,fileSystem,capacity,available,percentUsed,encrypted);

@override
String toString() {
  return 'DeviceVolume(name: $name, identifier: $identifier, fileSystem: $fileSystem, capacity: $capacity, available: $available, percentUsed: $percentUsed, encrypted: $encrypted)';
}


}

/// @nodoc
abstract mixin class _$DeviceVolumeCopyWith<$Res> implements $DeviceVolumeCopyWith<$Res> {
  factory _$DeviceVolumeCopyWith(_DeviceVolume value, $Res Function(_DeviceVolume) _then) = __$DeviceVolumeCopyWithImpl;
@override @useResult
$Res call({
 String? name, String? identifier,@JsonKey(name: 'file_system') String? fileSystem, String? capacity, String? available,@JsonKey(name: 'percent_used') String? percentUsed,@JsonKey(name: 'encrypted', fromJson: _toNullableBool) bool? encrypted
});




}
/// @nodoc
class __$DeviceVolumeCopyWithImpl<$Res>
    implements _$DeviceVolumeCopyWith<$Res> {
  __$DeviceVolumeCopyWithImpl(this._self, this._then);

  final _DeviceVolume _self;
  final $Res Function(_DeviceVolume) _then;

/// Create a copy of DeviceVolume
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? identifier = freezed,Object? fileSystem = freezed,Object? capacity = freezed,Object? available = freezed,Object? percentUsed = freezed,Object? encrypted = freezed,}) {
  return _then(_DeviceVolume(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,identifier: freezed == identifier ? _self.identifier : identifier // ignore: cast_nullable_to_non_nullable
as String?,fileSystem: freezed == fileSystem ? _self.fileSystem : fileSystem // ignore: cast_nullable_to_non_nullable
as String?,capacity: freezed == capacity ? _self.capacity : capacity // ignore: cast_nullable_to_non_nullable
as String?,available: freezed == available ? _self.available : available // ignore: cast_nullable_to_non_nullable
as String?,percentUsed: freezed == percentUsed ? _self.percentUsed : percentUsed // ignore: cast_nullable_to_non_nullable
as String?,encrypted: freezed == encrypted ? _self.encrypted : encrypted // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

/// @nodoc
mixin _$DeviceUsers {

@JsonKey(name: 'regular_users') List<DeviceLocalUser> get regularUsers;@JsonKey(name: 'system_users') List<DeviceLocalUser> get systemUsers;
/// Create a copy of DeviceUsers
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeviceUsersCopyWith<DeviceUsers> get copyWith => _$DeviceUsersCopyWithImpl<DeviceUsers>(this as DeviceUsers, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeviceUsers&&const DeepCollectionEquality().equals(other.regularUsers, regularUsers)&&const DeepCollectionEquality().equals(other.systemUsers, systemUsers));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(regularUsers),const DeepCollectionEquality().hash(systemUsers));

@override
String toString() {
  return 'DeviceUsers(regularUsers: $regularUsers, systemUsers: $systemUsers)';
}


}

/// @nodoc
abstract mixin class $DeviceUsersCopyWith<$Res>  {
  factory $DeviceUsersCopyWith(DeviceUsers value, $Res Function(DeviceUsers) _then) = _$DeviceUsersCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'regular_users') List<DeviceLocalUser> regularUsers,@JsonKey(name: 'system_users') List<DeviceLocalUser> systemUsers
});




}
/// @nodoc
class _$DeviceUsersCopyWithImpl<$Res>
    implements $DeviceUsersCopyWith<$Res> {
  _$DeviceUsersCopyWithImpl(this._self, this._then);

  final DeviceUsers _self;
  final $Res Function(DeviceUsers) _then;

/// Create a copy of DeviceUsers
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? regularUsers = null,Object? systemUsers = null,}) {
  return _then(_self.copyWith(
regularUsers: null == regularUsers ? _self.regularUsers : regularUsers // ignore: cast_nullable_to_non_nullable
as List<DeviceLocalUser>,systemUsers: null == systemUsers ? _self.systemUsers : systemUsers // ignore: cast_nullable_to_non_nullable
as List<DeviceLocalUser>,
  ));
}

}


/// Adds pattern-matching-related methods to [DeviceUsers].
extension DeviceUsersPatterns on DeviceUsers {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DeviceUsers value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DeviceUsers() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DeviceUsers value)  $default,){
final _that = this;
switch (_that) {
case _DeviceUsers():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DeviceUsers value)?  $default,){
final _that = this;
switch (_that) {
case _DeviceUsers() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'regular_users')  List<DeviceLocalUser> regularUsers, @JsonKey(name: 'system_users')  List<DeviceLocalUser> systemUsers)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DeviceUsers() when $default != null:
return $default(_that.regularUsers,_that.systemUsers);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'regular_users')  List<DeviceLocalUser> regularUsers, @JsonKey(name: 'system_users')  List<DeviceLocalUser> systemUsers)  $default,) {final _that = this;
switch (_that) {
case _DeviceUsers():
return $default(_that.regularUsers,_that.systemUsers);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'regular_users')  List<DeviceLocalUser> regularUsers, @JsonKey(name: 'system_users')  List<DeviceLocalUser> systemUsers)?  $default,) {final _that = this;
switch (_that) {
case _DeviceUsers() when $default != null:
return $default(_that.regularUsers,_that.systemUsers);case _:
  return null;

}
}

}

/// @nodoc


class _DeviceUsers implements DeviceUsers {
  const _DeviceUsers({@JsonKey(name: 'regular_users') final  List<DeviceLocalUser> regularUsers = const [], @JsonKey(name: 'system_users') final  List<DeviceLocalUser> systemUsers = const []}): _regularUsers = regularUsers,_systemUsers = systemUsers;
  

 final  List<DeviceLocalUser> _regularUsers;
@override@JsonKey(name: 'regular_users') List<DeviceLocalUser> get regularUsers {
  if (_regularUsers is EqualUnmodifiableListView) return _regularUsers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_regularUsers);
}

 final  List<DeviceLocalUser> _systemUsers;
@override@JsonKey(name: 'system_users') List<DeviceLocalUser> get systemUsers {
  if (_systemUsers is EqualUnmodifiableListView) return _systemUsers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_systemUsers);
}


/// Create a copy of DeviceUsers
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeviceUsersCopyWith<_DeviceUsers> get copyWith => __$DeviceUsersCopyWithImpl<_DeviceUsers>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeviceUsers&&const DeepCollectionEquality().equals(other._regularUsers, _regularUsers)&&const DeepCollectionEquality().equals(other._systemUsers, _systemUsers));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_regularUsers),const DeepCollectionEquality().hash(_systemUsers));

@override
String toString() {
  return 'DeviceUsers(regularUsers: $regularUsers, systemUsers: $systemUsers)';
}


}

/// @nodoc
abstract mixin class _$DeviceUsersCopyWith<$Res> implements $DeviceUsersCopyWith<$Res> {
  factory _$DeviceUsersCopyWith(_DeviceUsers value, $Res Function(_DeviceUsers) _then) = __$DeviceUsersCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'regular_users') List<DeviceLocalUser> regularUsers,@JsonKey(name: 'system_users') List<DeviceLocalUser> systemUsers
});




}
/// @nodoc
class __$DeviceUsersCopyWithImpl<$Res>
    implements _$DeviceUsersCopyWith<$Res> {
  __$DeviceUsersCopyWithImpl(this._self, this._then);

  final _DeviceUsers _self;
  final $Res Function(_DeviceUsers) _then;

/// Create a copy of DeviceUsers
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? regularUsers = null,Object? systemUsers = null,}) {
  return _then(_DeviceUsers(
regularUsers: null == regularUsers ? _self._regularUsers : regularUsers // ignore: cast_nullable_to_non_nullable
as List<DeviceLocalUser>,systemUsers: null == systemUsers ? _self._systemUsers : systemUsers // ignore: cast_nullable_to_non_nullable
as List<DeviceLocalUser>,
  ));
}


}


/// @nodoc
mixin _$DeviceLocalUser {

 String? get username; String? get uid; String? get home;@JsonKey(fromJson: _toNullableBool) bool? get admin;
/// Create a copy of DeviceLocalUser
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeviceLocalUserCopyWith<DeviceLocalUser> get copyWith => _$DeviceLocalUserCopyWithImpl<DeviceLocalUser>(this as DeviceLocalUser, _$identity);

  /// Serializes this DeviceLocalUser to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeviceLocalUser&&(identical(other.username, username) || other.username == username)&&(identical(other.uid, uid) || other.uid == uid)&&(identical(other.home, home) || other.home == home)&&(identical(other.admin, admin) || other.admin == admin));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,username,uid,home,admin);

@override
String toString() {
  return 'DeviceLocalUser(username: $username, uid: $uid, home: $home, admin: $admin)';
}


}

/// @nodoc
abstract mixin class $DeviceLocalUserCopyWith<$Res>  {
  factory $DeviceLocalUserCopyWith(DeviceLocalUser value, $Res Function(DeviceLocalUser) _then) = _$DeviceLocalUserCopyWithImpl;
@useResult
$Res call({
 String? username, String? uid, String? home,@JsonKey(fromJson: _toNullableBool) bool? admin
});




}
/// @nodoc
class _$DeviceLocalUserCopyWithImpl<$Res>
    implements $DeviceLocalUserCopyWith<$Res> {
  _$DeviceLocalUserCopyWithImpl(this._self, this._then);

  final DeviceLocalUser _self;
  final $Res Function(DeviceLocalUser) _then;

/// Create a copy of DeviceLocalUser
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? username = freezed,Object? uid = freezed,Object? home = freezed,Object? admin = freezed,}) {
  return _then(_self.copyWith(
username: freezed == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String?,uid: freezed == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String?,home: freezed == home ? _self.home : home // ignore: cast_nullable_to_non_nullable
as String?,admin: freezed == admin ? _self.admin : admin // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [DeviceLocalUser].
extension DeviceLocalUserPatterns on DeviceLocalUser {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DeviceLocalUser value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DeviceLocalUser() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DeviceLocalUser value)  $default,){
final _that = this;
switch (_that) {
case _DeviceLocalUser():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DeviceLocalUser value)?  $default,){
final _that = this;
switch (_that) {
case _DeviceLocalUser() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? username,  String? uid,  String? home, @JsonKey(fromJson: _toNullableBool)  bool? admin)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DeviceLocalUser() when $default != null:
return $default(_that.username,_that.uid,_that.home,_that.admin);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? username,  String? uid,  String? home, @JsonKey(fromJson: _toNullableBool)  bool? admin)  $default,) {final _that = this;
switch (_that) {
case _DeviceLocalUser():
return $default(_that.username,_that.uid,_that.home,_that.admin);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? username,  String? uid,  String? home, @JsonKey(fromJson: _toNullableBool)  bool? admin)?  $default,) {final _that = this;
switch (_that) {
case _DeviceLocalUser() when $default != null:
return $default(_that.username,_that.uid,_that.home,_that.admin);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DeviceLocalUser implements DeviceLocalUser {
  const _DeviceLocalUser({this.username, this.uid, this.home, @JsonKey(fromJson: _toNullableBool) this.admin});
  factory _DeviceLocalUser.fromJson(Map<String, dynamic> json) => _$DeviceLocalUserFromJson(json);

@override final  String? username;
@override final  String? uid;
@override final  String? home;
@override@JsonKey(fromJson: _toNullableBool) final  bool? admin;

/// Create a copy of DeviceLocalUser
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeviceLocalUserCopyWith<_DeviceLocalUser> get copyWith => __$DeviceLocalUserCopyWithImpl<_DeviceLocalUser>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DeviceLocalUserToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeviceLocalUser&&(identical(other.username, username) || other.username == username)&&(identical(other.uid, uid) || other.uid == uid)&&(identical(other.home, home) || other.home == home)&&(identical(other.admin, admin) || other.admin == admin));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,username,uid,home,admin);

@override
String toString() {
  return 'DeviceLocalUser(username: $username, uid: $uid, home: $home, admin: $admin)';
}


}

/// @nodoc
abstract mixin class _$DeviceLocalUserCopyWith<$Res> implements $DeviceLocalUserCopyWith<$Res> {
  factory _$DeviceLocalUserCopyWith(_DeviceLocalUser value, $Res Function(_DeviceLocalUser) _then) = __$DeviceLocalUserCopyWithImpl;
@override @useResult
$Res call({
 String? username, String? uid, String? home,@JsonKey(fromJson: _toNullableBool) bool? admin
});




}
/// @nodoc
class __$DeviceLocalUserCopyWithImpl<$Res>
    implements _$DeviceLocalUserCopyWith<$Res> {
  __$DeviceLocalUserCopyWithImpl(this._self, this._then);

  final _DeviceLocalUser _self;
  final $Res Function(_DeviceLocalUser) _then;

/// Create a copy of DeviceLocalUser
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? username = freezed,Object? uid = freezed,Object? home = freezed,Object? admin = freezed,}) {
  return _then(_DeviceLocalUser(
username: freezed == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String?,uid: freezed == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String?,home: freezed == home ? _self.home : home // ignore: cast_nullable_to_non_nullable
as String?,admin: freezed == admin ? _self.admin : admin // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
