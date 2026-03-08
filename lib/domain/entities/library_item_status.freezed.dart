// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'library_item_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LibraryItemStatus {

@JsonKey(name: 'device_id', readValue: _readDeviceId) String? get deviceId;@JsonKey(name: 'device_name', readValue: _readDeviceName) String? get deviceName;@JsonKey(name: 'serial_number') String? get serialNumber; String? get status;@JsonKey(name: 'last_run') String? get lastRun;@JsonKey(name: 'completed_at') String? get completedAt;
/// Create a copy of LibraryItemStatus
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LibraryItemStatusCopyWith<LibraryItemStatus> get copyWith => _$LibraryItemStatusCopyWithImpl<LibraryItemStatus>(this as LibraryItemStatus, _$identity);

  /// Serializes this LibraryItemStatus to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LibraryItemStatus&&(identical(other.deviceId, deviceId) || other.deviceId == deviceId)&&(identical(other.deviceName, deviceName) || other.deviceName == deviceName)&&(identical(other.serialNumber, serialNumber) || other.serialNumber == serialNumber)&&(identical(other.status, status) || other.status == status)&&(identical(other.lastRun, lastRun) || other.lastRun == lastRun)&&(identical(other.completedAt, completedAt) || other.completedAt == completedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,deviceId,deviceName,serialNumber,status,lastRun,completedAt);

@override
String toString() {
  return 'LibraryItemStatus(deviceId: $deviceId, deviceName: $deviceName, serialNumber: $serialNumber, status: $status, lastRun: $lastRun, completedAt: $completedAt)';
}


}

/// @nodoc
abstract mixin class $LibraryItemStatusCopyWith<$Res>  {
  factory $LibraryItemStatusCopyWith(LibraryItemStatus value, $Res Function(LibraryItemStatus) _then) = _$LibraryItemStatusCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'device_id', readValue: _readDeviceId) String? deviceId,@JsonKey(name: 'device_name', readValue: _readDeviceName) String? deviceName,@JsonKey(name: 'serial_number') String? serialNumber, String? status,@JsonKey(name: 'last_run') String? lastRun,@JsonKey(name: 'completed_at') String? completedAt
});




}
/// @nodoc
class _$LibraryItemStatusCopyWithImpl<$Res>
    implements $LibraryItemStatusCopyWith<$Res> {
  _$LibraryItemStatusCopyWithImpl(this._self, this._then);

  final LibraryItemStatus _self;
  final $Res Function(LibraryItemStatus) _then;

/// Create a copy of LibraryItemStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? deviceId = freezed,Object? deviceName = freezed,Object? serialNumber = freezed,Object? status = freezed,Object? lastRun = freezed,Object? completedAt = freezed,}) {
  return _then(_self.copyWith(
deviceId: freezed == deviceId ? _self.deviceId : deviceId // ignore: cast_nullable_to_non_nullable
as String?,deviceName: freezed == deviceName ? _self.deviceName : deviceName // ignore: cast_nullable_to_non_nullable
as String?,serialNumber: freezed == serialNumber ? _self.serialNumber : serialNumber // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,lastRun: freezed == lastRun ? _self.lastRun : lastRun // ignore: cast_nullable_to_non_nullable
as String?,completedAt: freezed == completedAt ? _self.completedAt : completedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [LibraryItemStatus].
extension LibraryItemStatusPatterns on LibraryItemStatus {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LibraryItemStatus value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LibraryItemStatus() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LibraryItemStatus value)  $default,){
final _that = this;
switch (_that) {
case _LibraryItemStatus():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LibraryItemStatus value)?  $default,){
final _that = this;
switch (_that) {
case _LibraryItemStatus() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'device_id', readValue: _readDeviceId)  String? deviceId, @JsonKey(name: 'device_name', readValue: _readDeviceName)  String? deviceName, @JsonKey(name: 'serial_number')  String? serialNumber,  String? status, @JsonKey(name: 'last_run')  String? lastRun, @JsonKey(name: 'completed_at')  String? completedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LibraryItemStatus() when $default != null:
return $default(_that.deviceId,_that.deviceName,_that.serialNumber,_that.status,_that.lastRun,_that.completedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'device_id', readValue: _readDeviceId)  String? deviceId, @JsonKey(name: 'device_name', readValue: _readDeviceName)  String? deviceName, @JsonKey(name: 'serial_number')  String? serialNumber,  String? status, @JsonKey(name: 'last_run')  String? lastRun, @JsonKey(name: 'completed_at')  String? completedAt)  $default,) {final _that = this;
switch (_that) {
case _LibraryItemStatus():
return $default(_that.deviceId,_that.deviceName,_that.serialNumber,_that.status,_that.lastRun,_that.completedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'device_id', readValue: _readDeviceId)  String? deviceId, @JsonKey(name: 'device_name', readValue: _readDeviceName)  String? deviceName, @JsonKey(name: 'serial_number')  String? serialNumber,  String? status, @JsonKey(name: 'last_run')  String? lastRun, @JsonKey(name: 'completed_at')  String? completedAt)?  $default,) {final _that = this;
switch (_that) {
case _LibraryItemStatus() when $default != null:
return $default(_that.deviceId,_that.deviceName,_that.serialNumber,_that.status,_that.lastRun,_that.completedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LibraryItemStatus implements LibraryItemStatus {
  const _LibraryItemStatus({@JsonKey(name: 'device_id', readValue: _readDeviceId) this.deviceId, @JsonKey(name: 'device_name', readValue: _readDeviceName) this.deviceName, @JsonKey(name: 'serial_number') this.serialNumber, this.status, @JsonKey(name: 'last_run') this.lastRun, @JsonKey(name: 'completed_at') this.completedAt});
  factory _LibraryItemStatus.fromJson(Map<String, dynamic> json) => _$LibraryItemStatusFromJson(json);

@override@JsonKey(name: 'device_id', readValue: _readDeviceId) final  String? deviceId;
@override@JsonKey(name: 'device_name', readValue: _readDeviceName) final  String? deviceName;
@override@JsonKey(name: 'serial_number') final  String? serialNumber;
@override final  String? status;
@override@JsonKey(name: 'last_run') final  String? lastRun;
@override@JsonKey(name: 'completed_at') final  String? completedAt;

/// Create a copy of LibraryItemStatus
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LibraryItemStatusCopyWith<_LibraryItemStatus> get copyWith => __$LibraryItemStatusCopyWithImpl<_LibraryItemStatus>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LibraryItemStatusToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LibraryItemStatus&&(identical(other.deviceId, deviceId) || other.deviceId == deviceId)&&(identical(other.deviceName, deviceName) || other.deviceName == deviceName)&&(identical(other.serialNumber, serialNumber) || other.serialNumber == serialNumber)&&(identical(other.status, status) || other.status == status)&&(identical(other.lastRun, lastRun) || other.lastRun == lastRun)&&(identical(other.completedAt, completedAt) || other.completedAt == completedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,deviceId,deviceName,serialNumber,status,lastRun,completedAt);

@override
String toString() {
  return 'LibraryItemStatus(deviceId: $deviceId, deviceName: $deviceName, serialNumber: $serialNumber, status: $status, lastRun: $lastRun, completedAt: $completedAt)';
}


}

/// @nodoc
abstract mixin class _$LibraryItemStatusCopyWith<$Res> implements $LibraryItemStatusCopyWith<$Res> {
  factory _$LibraryItemStatusCopyWith(_LibraryItemStatus value, $Res Function(_LibraryItemStatus) _then) = __$LibraryItemStatusCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'device_id', readValue: _readDeviceId) String? deviceId,@JsonKey(name: 'device_name', readValue: _readDeviceName) String? deviceName,@JsonKey(name: 'serial_number') String? serialNumber, String? status,@JsonKey(name: 'last_run') String? lastRun,@JsonKey(name: 'completed_at') String? completedAt
});




}
/// @nodoc
class __$LibraryItemStatusCopyWithImpl<$Res>
    implements _$LibraryItemStatusCopyWith<$Res> {
  __$LibraryItemStatusCopyWithImpl(this._self, this._then);

  final _LibraryItemStatus _self;
  final $Res Function(_LibraryItemStatus) _then;

/// Create a copy of LibraryItemStatus
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? deviceId = freezed,Object? deviceName = freezed,Object? serialNumber = freezed,Object? status = freezed,Object? lastRun = freezed,Object? completedAt = freezed,}) {
  return _then(_LibraryItemStatus(
deviceId: freezed == deviceId ? _self.deviceId : deviceId // ignore: cast_nullable_to_non_nullable
as String?,deviceName: freezed == deviceName ? _self.deviceName : deviceName // ignore: cast_nullable_to_non_nullable
as String?,serialNumber: freezed == serialNumber ? _self.serialNumber : serialNumber // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,lastRun: freezed == lastRun ? _self.lastRun : lastRun // ignore: cast_nullable_to_non_nullable
as String?,completedAt: freezed == completedAt ? _self.completedAt : completedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$LibraryItemActivity {

@JsonKey(fromJson: _toNullableString) String? get id;@JsonKey(name: 'device_id', readValue: _readDeviceId) String? get deviceId;@JsonKey(name: 'device_name', readValue: _readDeviceName) String? get deviceName;@JsonKey(name: 'serial_number') String? get serialNumber; String? get action; String? get status;@JsonKey(name: 'created_at') String? get createdAt;@JsonKey(fromJson: _toNullableString) String? get details;
/// Create a copy of LibraryItemActivity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LibraryItemActivityCopyWith<LibraryItemActivity> get copyWith => _$LibraryItemActivityCopyWithImpl<LibraryItemActivity>(this as LibraryItemActivity, _$identity);

  /// Serializes this LibraryItemActivity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LibraryItemActivity&&(identical(other.id, id) || other.id == id)&&(identical(other.deviceId, deviceId) || other.deviceId == deviceId)&&(identical(other.deviceName, deviceName) || other.deviceName == deviceName)&&(identical(other.serialNumber, serialNumber) || other.serialNumber == serialNumber)&&(identical(other.action, action) || other.action == action)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.details, details) || other.details == details));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,deviceId,deviceName,serialNumber,action,status,createdAt,details);

@override
String toString() {
  return 'LibraryItemActivity(id: $id, deviceId: $deviceId, deviceName: $deviceName, serialNumber: $serialNumber, action: $action, status: $status, createdAt: $createdAt, details: $details)';
}


}

/// @nodoc
abstract mixin class $LibraryItemActivityCopyWith<$Res>  {
  factory $LibraryItemActivityCopyWith(LibraryItemActivity value, $Res Function(LibraryItemActivity) _then) = _$LibraryItemActivityCopyWithImpl;
@useResult
$Res call({
@JsonKey(fromJson: _toNullableString) String? id,@JsonKey(name: 'device_id', readValue: _readDeviceId) String? deviceId,@JsonKey(name: 'device_name', readValue: _readDeviceName) String? deviceName,@JsonKey(name: 'serial_number') String? serialNumber, String? action, String? status,@JsonKey(name: 'created_at') String? createdAt,@JsonKey(fromJson: _toNullableString) String? details
});




}
/// @nodoc
class _$LibraryItemActivityCopyWithImpl<$Res>
    implements $LibraryItemActivityCopyWith<$Res> {
  _$LibraryItemActivityCopyWithImpl(this._self, this._then);

  final LibraryItemActivity _self;
  final $Res Function(LibraryItemActivity) _then;

/// Create a copy of LibraryItemActivity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? deviceId = freezed,Object? deviceName = freezed,Object? serialNumber = freezed,Object? action = freezed,Object? status = freezed,Object? createdAt = freezed,Object? details = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,deviceId: freezed == deviceId ? _self.deviceId : deviceId // ignore: cast_nullable_to_non_nullable
as String?,deviceName: freezed == deviceName ? _self.deviceName : deviceName // ignore: cast_nullable_to_non_nullable
as String?,serialNumber: freezed == serialNumber ? _self.serialNumber : serialNumber // ignore: cast_nullable_to_non_nullable
as String?,action: freezed == action ? _self.action : action // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,details: freezed == details ? _self.details : details // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [LibraryItemActivity].
extension LibraryItemActivityPatterns on LibraryItemActivity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LibraryItemActivity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LibraryItemActivity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LibraryItemActivity value)  $default,){
final _that = this;
switch (_that) {
case _LibraryItemActivity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LibraryItemActivity value)?  $default,){
final _that = this;
switch (_that) {
case _LibraryItemActivity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(fromJson: _toNullableString)  String? id, @JsonKey(name: 'device_id', readValue: _readDeviceId)  String? deviceId, @JsonKey(name: 'device_name', readValue: _readDeviceName)  String? deviceName, @JsonKey(name: 'serial_number')  String? serialNumber,  String? action,  String? status, @JsonKey(name: 'created_at')  String? createdAt, @JsonKey(fromJson: _toNullableString)  String? details)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LibraryItemActivity() when $default != null:
return $default(_that.id,_that.deviceId,_that.deviceName,_that.serialNumber,_that.action,_that.status,_that.createdAt,_that.details);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(fromJson: _toNullableString)  String? id, @JsonKey(name: 'device_id', readValue: _readDeviceId)  String? deviceId, @JsonKey(name: 'device_name', readValue: _readDeviceName)  String? deviceName, @JsonKey(name: 'serial_number')  String? serialNumber,  String? action,  String? status, @JsonKey(name: 'created_at')  String? createdAt, @JsonKey(fromJson: _toNullableString)  String? details)  $default,) {final _that = this;
switch (_that) {
case _LibraryItemActivity():
return $default(_that.id,_that.deviceId,_that.deviceName,_that.serialNumber,_that.action,_that.status,_that.createdAt,_that.details);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(fromJson: _toNullableString)  String? id, @JsonKey(name: 'device_id', readValue: _readDeviceId)  String? deviceId, @JsonKey(name: 'device_name', readValue: _readDeviceName)  String? deviceName, @JsonKey(name: 'serial_number')  String? serialNumber,  String? action,  String? status, @JsonKey(name: 'created_at')  String? createdAt, @JsonKey(fromJson: _toNullableString)  String? details)?  $default,) {final _that = this;
switch (_that) {
case _LibraryItemActivity() when $default != null:
return $default(_that.id,_that.deviceId,_that.deviceName,_that.serialNumber,_that.action,_that.status,_that.createdAt,_that.details);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LibraryItemActivity implements LibraryItemActivity {
  const _LibraryItemActivity({@JsonKey(fromJson: _toNullableString) this.id, @JsonKey(name: 'device_id', readValue: _readDeviceId) this.deviceId, @JsonKey(name: 'device_name', readValue: _readDeviceName) this.deviceName, @JsonKey(name: 'serial_number') this.serialNumber, this.action, this.status, @JsonKey(name: 'created_at') this.createdAt, @JsonKey(fromJson: _toNullableString) this.details});
  factory _LibraryItemActivity.fromJson(Map<String, dynamic> json) => _$LibraryItemActivityFromJson(json);

@override@JsonKey(fromJson: _toNullableString) final  String? id;
@override@JsonKey(name: 'device_id', readValue: _readDeviceId) final  String? deviceId;
@override@JsonKey(name: 'device_name', readValue: _readDeviceName) final  String? deviceName;
@override@JsonKey(name: 'serial_number') final  String? serialNumber;
@override final  String? action;
@override final  String? status;
@override@JsonKey(name: 'created_at') final  String? createdAt;
@override@JsonKey(fromJson: _toNullableString) final  String? details;

/// Create a copy of LibraryItemActivity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LibraryItemActivityCopyWith<_LibraryItemActivity> get copyWith => __$LibraryItemActivityCopyWithImpl<_LibraryItemActivity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LibraryItemActivityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LibraryItemActivity&&(identical(other.id, id) || other.id == id)&&(identical(other.deviceId, deviceId) || other.deviceId == deviceId)&&(identical(other.deviceName, deviceName) || other.deviceName == deviceName)&&(identical(other.serialNumber, serialNumber) || other.serialNumber == serialNumber)&&(identical(other.action, action) || other.action == action)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.details, details) || other.details == details));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,deviceId,deviceName,serialNumber,action,status,createdAt,details);

@override
String toString() {
  return 'LibraryItemActivity(id: $id, deviceId: $deviceId, deviceName: $deviceName, serialNumber: $serialNumber, action: $action, status: $status, createdAt: $createdAt, details: $details)';
}


}

/// @nodoc
abstract mixin class _$LibraryItemActivityCopyWith<$Res> implements $LibraryItemActivityCopyWith<$Res> {
  factory _$LibraryItemActivityCopyWith(_LibraryItemActivity value, $Res Function(_LibraryItemActivity) _then) = __$LibraryItemActivityCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(fromJson: _toNullableString) String? id,@JsonKey(name: 'device_id', readValue: _readDeviceId) String? deviceId,@JsonKey(name: 'device_name', readValue: _readDeviceName) String? deviceName,@JsonKey(name: 'serial_number') String? serialNumber, String? action, String? status,@JsonKey(name: 'created_at') String? createdAt,@JsonKey(fromJson: _toNullableString) String? details
});




}
/// @nodoc
class __$LibraryItemActivityCopyWithImpl<$Res>
    implements _$LibraryItemActivityCopyWith<$Res> {
  __$LibraryItemActivityCopyWithImpl(this._self, this._then);

  final _LibraryItemActivity _self;
  final $Res Function(_LibraryItemActivity) _then;

/// Create a copy of LibraryItemActivity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? deviceId = freezed,Object? deviceName = freezed,Object? serialNumber = freezed,Object? action = freezed,Object? status = freezed,Object? createdAt = freezed,Object? details = freezed,}) {
  return _then(_LibraryItemActivity(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,deviceId: freezed == deviceId ? _self.deviceId : deviceId // ignore: cast_nullable_to_non_nullable
as String?,deviceName: freezed == deviceName ? _self.deviceName : deviceName // ignore: cast_nullable_to_non_nullable
as String?,serialNumber: freezed == serialNumber ? _self.serialNumber : serialNumber // ignore: cast_nullable_to_non_nullable
as String?,action: freezed == action ? _self.action : action // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,details: freezed == details ? _self.details : details // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
