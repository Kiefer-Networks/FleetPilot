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

@JsonKey(readValue: _readDeviceId) String? get deviceId;@JsonKey(readValue: _readDeviceName) String? get deviceName;@JsonKey(readValue: _readStatus) String? get status;@JsonKey(name: 'reported_at') String? get reportedAt;@JsonKey(name: 'last_audit_run') String? get lastAuditRun;@JsonKey(name: 'last_audit_log') String? get lastAuditLog; String? get log; String? get type;
/// Create a copy of LibraryItemStatus
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LibraryItemStatusCopyWith<LibraryItemStatus> get copyWith => _$LibraryItemStatusCopyWithImpl<LibraryItemStatus>(this as LibraryItemStatus, _$identity);

  /// Serializes this LibraryItemStatus to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LibraryItemStatus&&(identical(other.deviceId, deviceId) || other.deviceId == deviceId)&&(identical(other.deviceName, deviceName) || other.deviceName == deviceName)&&(identical(other.status, status) || other.status == status)&&(identical(other.reportedAt, reportedAt) || other.reportedAt == reportedAt)&&(identical(other.lastAuditRun, lastAuditRun) || other.lastAuditRun == lastAuditRun)&&(identical(other.lastAuditLog, lastAuditLog) || other.lastAuditLog == lastAuditLog)&&(identical(other.log, log) || other.log == log)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,deviceId,deviceName,status,reportedAt,lastAuditRun,lastAuditLog,log,type);

@override
String toString() {
  return 'LibraryItemStatus(deviceId: $deviceId, deviceName: $deviceName, status: $status, reportedAt: $reportedAt, lastAuditRun: $lastAuditRun, lastAuditLog: $lastAuditLog, log: $log, type: $type)';
}


}

/// @nodoc
abstract mixin class $LibraryItemStatusCopyWith<$Res>  {
  factory $LibraryItemStatusCopyWith(LibraryItemStatus value, $Res Function(LibraryItemStatus) _then) = _$LibraryItemStatusCopyWithImpl;
@useResult
$Res call({
@JsonKey(readValue: _readDeviceId) String? deviceId,@JsonKey(readValue: _readDeviceName) String? deviceName,@JsonKey(readValue: _readStatus) String? status,@JsonKey(name: 'reported_at') String? reportedAt,@JsonKey(name: 'last_audit_run') String? lastAuditRun,@JsonKey(name: 'last_audit_log') String? lastAuditLog, String? log, String? type
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
@pragma('vm:prefer-inline') @override $Res call({Object? deviceId = freezed,Object? deviceName = freezed,Object? status = freezed,Object? reportedAt = freezed,Object? lastAuditRun = freezed,Object? lastAuditLog = freezed,Object? log = freezed,Object? type = freezed,}) {
  return _then(_self.copyWith(
deviceId: freezed == deviceId ? _self.deviceId : deviceId // ignore: cast_nullable_to_non_nullable
as String?,deviceName: freezed == deviceName ? _self.deviceName : deviceName // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,reportedAt: freezed == reportedAt ? _self.reportedAt : reportedAt // ignore: cast_nullable_to_non_nullable
as String?,lastAuditRun: freezed == lastAuditRun ? _self.lastAuditRun : lastAuditRun // ignore: cast_nullable_to_non_nullable
as String?,lastAuditLog: freezed == lastAuditLog ? _self.lastAuditLog : lastAuditLog // ignore: cast_nullable_to_non_nullable
as String?,log: freezed == log ? _self.log : log // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(readValue: _readDeviceId)  String? deviceId, @JsonKey(readValue: _readDeviceName)  String? deviceName, @JsonKey(readValue: _readStatus)  String? status, @JsonKey(name: 'reported_at')  String? reportedAt, @JsonKey(name: 'last_audit_run')  String? lastAuditRun, @JsonKey(name: 'last_audit_log')  String? lastAuditLog,  String? log,  String? type)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LibraryItemStatus() when $default != null:
return $default(_that.deviceId,_that.deviceName,_that.status,_that.reportedAt,_that.lastAuditRun,_that.lastAuditLog,_that.log,_that.type);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(readValue: _readDeviceId)  String? deviceId, @JsonKey(readValue: _readDeviceName)  String? deviceName, @JsonKey(readValue: _readStatus)  String? status, @JsonKey(name: 'reported_at')  String? reportedAt, @JsonKey(name: 'last_audit_run')  String? lastAuditRun, @JsonKey(name: 'last_audit_log')  String? lastAuditLog,  String? log,  String? type)  $default,) {final _that = this;
switch (_that) {
case _LibraryItemStatus():
return $default(_that.deviceId,_that.deviceName,_that.status,_that.reportedAt,_that.lastAuditRun,_that.lastAuditLog,_that.log,_that.type);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(readValue: _readDeviceId)  String? deviceId, @JsonKey(readValue: _readDeviceName)  String? deviceName, @JsonKey(readValue: _readStatus)  String? status, @JsonKey(name: 'reported_at')  String? reportedAt, @JsonKey(name: 'last_audit_run')  String? lastAuditRun, @JsonKey(name: 'last_audit_log')  String? lastAuditLog,  String? log,  String? type)?  $default,) {final _that = this;
switch (_that) {
case _LibraryItemStatus() when $default != null:
return $default(_that.deviceId,_that.deviceName,_that.status,_that.reportedAt,_that.lastAuditRun,_that.lastAuditLog,_that.log,_that.type);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LibraryItemStatus implements LibraryItemStatus {
  const _LibraryItemStatus({@JsonKey(readValue: _readDeviceId) this.deviceId, @JsonKey(readValue: _readDeviceName) this.deviceName, @JsonKey(readValue: _readStatus) this.status, @JsonKey(name: 'reported_at') this.reportedAt, @JsonKey(name: 'last_audit_run') this.lastAuditRun, @JsonKey(name: 'last_audit_log') this.lastAuditLog, this.log, this.type});
  factory _LibraryItemStatus.fromJson(Map<String, dynamic> json) => _$LibraryItemStatusFromJson(json);

@override@JsonKey(readValue: _readDeviceId) final  String? deviceId;
@override@JsonKey(readValue: _readDeviceName) final  String? deviceName;
@override@JsonKey(readValue: _readStatus) final  String? status;
@override@JsonKey(name: 'reported_at') final  String? reportedAt;
@override@JsonKey(name: 'last_audit_run') final  String? lastAuditRun;
@override@JsonKey(name: 'last_audit_log') final  String? lastAuditLog;
@override final  String? log;
@override final  String? type;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LibraryItemStatus&&(identical(other.deviceId, deviceId) || other.deviceId == deviceId)&&(identical(other.deviceName, deviceName) || other.deviceName == deviceName)&&(identical(other.status, status) || other.status == status)&&(identical(other.reportedAt, reportedAt) || other.reportedAt == reportedAt)&&(identical(other.lastAuditRun, lastAuditRun) || other.lastAuditRun == lastAuditRun)&&(identical(other.lastAuditLog, lastAuditLog) || other.lastAuditLog == lastAuditLog)&&(identical(other.log, log) || other.log == log)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,deviceId,deviceName,status,reportedAt,lastAuditRun,lastAuditLog,log,type);

@override
String toString() {
  return 'LibraryItemStatus(deviceId: $deviceId, deviceName: $deviceName, status: $status, reportedAt: $reportedAt, lastAuditRun: $lastAuditRun, lastAuditLog: $lastAuditLog, log: $log, type: $type)';
}


}

/// @nodoc
abstract mixin class _$LibraryItemStatusCopyWith<$Res> implements $LibraryItemStatusCopyWith<$Res> {
  factory _$LibraryItemStatusCopyWith(_LibraryItemStatus value, $Res Function(_LibraryItemStatus) _then) = __$LibraryItemStatusCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(readValue: _readDeviceId) String? deviceId,@JsonKey(readValue: _readDeviceName) String? deviceName,@JsonKey(readValue: _readStatus) String? status,@JsonKey(name: 'reported_at') String? reportedAt,@JsonKey(name: 'last_audit_run') String? lastAuditRun,@JsonKey(name: 'last_audit_log') String? lastAuditLog, String? log, String? type
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
@override @pragma('vm:prefer-inline') $Res call({Object? deviceId = freezed,Object? deviceName = freezed,Object? status = freezed,Object? reportedAt = freezed,Object? lastAuditRun = freezed,Object? lastAuditLog = freezed,Object? log = freezed,Object? type = freezed,}) {
  return _then(_LibraryItemStatus(
deviceId: freezed == deviceId ? _self.deviceId : deviceId // ignore: cast_nullable_to_non_nullable
as String?,deviceName: freezed == deviceName ? _self.deviceName : deviceName // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,reportedAt: freezed == reportedAt ? _self.reportedAt : reportedAt // ignore: cast_nullable_to_non_nullable
as String?,lastAuditRun: freezed == lastAuditRun ? _self.lastAuditRun : lastAuditRun // ignore: cast_nullable_to_non_nullable
as String?,lastAuditLog: freezed == lastAuditLog ? _self.lastAuditLog : lastAuditLog // ignore: cast_nullable_to_non_nullable
as String?,log: freezed == log ? _self.log : log // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$LibraryItemActivity {

@JsonKey(fromJson: _toNullableString) String? get id;@JsonKey(readValue: _readDeviceId) String? get deviceId;@JsonKey(readValue: _readDeviceName) String? get deviceName;@JsonKey(readValue: _readAction) String? get action;@JsonKey(readValue: _readStatus) String? get status;@JsonKey(name: 'created_at', readValue: _readCreatedAt) String? get createdAt;@JsonKey(fromJson: _toNullableString) String? get details;@JsonKey(name: 'user_email') String? get userEmail;@JsonKey(name: 'user_id') String? get userId;
/// Create a copy of LibraryItemActivity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LibraryItemActivityCopyWith<LibraryItemActivity> get copyWith => _$LibraryItemActivityCopyWithImpl<LibraryItemActivity>(this as LibraryItemActivity, _$identity);

  /// Serializes this LibraryItemActivity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LibraryItemActivity&&(identical(other.id, id) || other.id == id)&&(identical(other.deviceId, deviceId) || other.deviceId == deviceId)&&(identical(other.deviceName, deviceName) || other.deviceName == deviceName)&&(identical(other.action, action) || other.action == action)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.details, details) || other.details == details)&&(identical(other.userEmail, userEmail) || other.userEmail == userEmail)&&(identical(other.userId, userId) || other.userId == userId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,deviceId,deviceName,action,status,createdAt,details,userEmail,userId);

@override
String toString() {
  return 'LibraryItemActivity(id: $id, deviceId: $deviceId, deviceName: $deviceName, action: $action, status: $status, createdAt: $createdAt, details: $details, userEmail: $userEmail, userId: $userId)';
}


}

/// @nodoc
abstract mixin class $LibraryItemActivityCopyWith<$Res>  {
  factory $LibraryItemActivityCopyWith(LibraryItemActivity value, $Res Function(LibraryItemActivity) _then) = _$LibraryItemActivityCopyWithImpl;
@useResult
$Res call({
@JsonKey(fromJson: _toNullableString) String? id,@JsonKey(readValue: _readDeviceId) String? deviceId,@JsonKey(readValue: _readDeviceName) String? deviceName,@JsonKey(readValue: _readAction) String? action,@JsonKey(readValue: _readStatus) String? status,@JsonKey(name: 'created_at', readValue: _readCreatedAt) String? createdAt,@JsonKey(fromJson: _toNullableString) String? details,@JsonKey(name: 'user_email') String? userEmail,@JsonKey(name: 'user_id') String? userId
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
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? deviceId = freezed,Object? deviceName = freezed,Object? action = freezed,Object? status = freezed,Object? createdAt = freezed,Object? details = freezed,Object? userEmail = freezed,Object? userId = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,deviceId: freezed == deviceId ? _self.deviceId : deviceId // ignore: cast_nullable_to_non_nullable
as String?,deviceName: freezed == deviceName ? _self.deviceName : deviceName // ignore: cast_nullable_to_non_nullable
as String?,action: freezed == action ? _self.action : action // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,details: freezed == details ? _self.details : details // ignore: cast_nullable_to_non_nullable
as String?,userEmail: freezed == userEmail ? _self.userEmail : userEmail // ignore: cast_nullable_to_non_nullable
as String?,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(fromJson: _toNullableString)  String? id, @JsonKey(readValue: _readDeviceId)  String? deviceId, @JsonKey(readValue: _readDeviceName)  String? deviceName, @JsonKey(readValue: _readAction)  String? action, @JsonKey(readValue: _readStatus)  String? status, @JsonKey(name: 'created_at', readValue: _readCreatedAt)  String? createdAt, @JsonKey(fromJson: _toNullableString)  String? details, @JsonKey(name: 'user_email')  String? userEmail, @JsonKey(name: 'user_id')  String? userId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LibraryItemActivity() when $default != null:
return $default(_that.id,_that.deviceId,_that.deviceName,_that.action,_that.status,_that.createdAt,_that.details,_that.userEmail,_that.userId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(fromJson: _toNullableString)  String? id, @JsonKey(readValue: _readDeviceId)  String? deviceId, @JsonKey(readValue: _readDeviceName)  String? deviceName, @JsonKey(readValue: _readAction)  String? action, @JsonKey(readValue: _readStatus)  String? status, @JsonKey(name: 'created_at', readValue: _readCreatedAt)  String? createdAt, @JsonKey(fromJson: _toNullableString)  String? details, @JsonKey(name: 'user_email')  String? userEmail, @JsonKey(name: 'user_id')  String? userId)  $default,) {final _that = this;
switch (_that) {
case _LibraryItemActivity():
return $default(_that.id,_that.deviceId,_that.deviceName,_that.action,_that.status,_that.createdAt,_that.details,_that.userEmail,_that.userId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(fromJson: _toNullableString)  String? id, @JsonKey(readValue: _readDeviceId)  String? deviceId, @JsonKey(readValue: _readDeviceName)  String? deviceName, @JsonKey(readValue: _readAction)  String? action, @JsonKey(readValue: _readStatus)  String? status, @JsonKey(name: 'created_at', readValue: _readCreatedAt)  String? createdAt, @JsonKey(fromJson: _toNullableString)  String? details, @JsonKey(name: 'user_email')  String? userEmail, @JsonKey(name: 'user_id')  String? userId)?  $default,) {final _that = this;
switch (_that) {
case _LibraryItemActivity() when $default != null:
return $default(_that.id,_that.deviceId,_that.deviceName,_that.action,_that.status,_that.createdAt,_that.details,_that.userEmail,_that.userId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LibraryItemActivity implements LibraryItemActivity {
  const _LibraryItemActivity({@JsonKey(fromJson: _toNullableString) this.id, @JsonKey(readValue: _readDeviceId) this.deviceId, @JsonKey(readValue: _readDeviceName) this.deviceName, @JsonKey(readValue: _readAction) this.action, @JsonKey(readValue: _readStatus) this.status, @JsonKey(name: 'created_at', readValue: _readCreatedAt) this.createdAt, @JsonKey(fromJson: _toNullableString) this.details, @JsonKey(name: 'user_email') this.userEmail, @JsonKey(name: 'user_id') this.userId});
  factory _LibraryItemActivity.fromJson(Map<String, dynamic> json) => _$LibraryItemActivityFromJson(json);

@override@JsonKey(fromJson: _toNullableString) final  String? id;
@override@JsonKey(readValue: _readDeviceId) final  String? deviceId;
@override@JsonKey(readValue: _readDeviceName) final  String? deviceName;
@override@JsonKey(readValue: _readAction) final  String? action;
@override@JsonKey(readValue: _readStatus) final  String? status;
@override@JsonKey(name: 'created_at', readValue: _readCreatedAt) final  String? createdAt;
@override@JsonKey(fromJson: _toNullableString) final  String? details;
@override@JsonKey(name: 'user_email') final  String? userEmail;
@override@JsonKey(name: 'user_id') final  String? userId;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LibraryItemActivity&&(identical(other.id, id) || other.id == id)&&(identical(other.deviceId, deviceId) || other.deviceId == deviceId)&&(identical(other.deviceName, deviceName) || other.deviceName == deviceName)&&(identical(other.action, action) || other.action == action)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.details, details) || other.details == details)&&(identical(other.userEmail, userEmail) || other.userEmail == userEmail)&&(identical(other.userId, userId) || other.userId == userId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,deviceId,deviceName,action,status,createdAt,details,userEmail,userId);

@override
String toString() {
  return 'LibraryItemActivity(id: $id, deviceId: $deviceId, deviceName: $deviceName, action: $action, status: $status, createdAt: $createdAt, details: $details, userEmail: $userEmail, userId: $userId)';
}


}

/// @nodoc
abstract mixin class _$LibraryItemActivityCopyWith<$Res> implements $LibraryItemActivityCopyWith<$Res> {
  factory _$LibraryItemActivityCopyWith(_LibraryItemActivity value, $Res Function(_LibraryItemActivity) _then) = __$LibraryItemActivityCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(fromJson: _toNullableString) String? id,@JsonKey(readValue: _readDeviceId) String? deviceId,@JsonKey(readValue: _readDeviceName) String? deviceName,@JsonKey(readValue: _readAction) String? action,@JsonKey(readValue: _readStatus) String? status,@JsonKey(name: 'created_at', readValue: _readCreatedAt) String? createdAt,@JsonKey(fromJson: _toNullableString) String? details,@JsonKey(name: 'user_email') String? userEmail,@JsonKey(name: 'user_id') String? userId
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
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? deviceId = freezed,Object? deviceName = freezed,Object? action = freezed,Object? status = freezed,Object? createdAt = freezed,Object? details = freezed,Object? userEmail = freezed,Object? userId = freezed,}) {
  return _then(_LibraryItemActivity(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,deviceId: freezed == deviceId ? _self.deviceId : deviceId // ignore: cast_nullable_to_non_nullable
as String?,deviceName: freezed == deviceName ? _self.deviceName : deviceName // ignore: cast_nullable_to_non_nullable
as String?,action: freezed == action ? _self.action : action // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,details: freezed == details ? _self.details : details // ignore: cast_nullable_to_non_nullable
as String?,userEmail: freezed == userEmail ? _self.userEmail : userEmail // ignore: cast_nullable_to_non_nullable
as String?,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
