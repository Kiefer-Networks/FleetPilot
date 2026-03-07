// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'audit_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AuditEvent {

 String? get id;@JsonKey(name: 'event_type') String? get eventType;@JsonKey(name: 'event_action') String? get eventAction;@JsonKey(name: 'event_description') String? get eventDescription;@JsonKey(name: 'event_date') String? get eventDate;@JsonKey(name: 'admin_email') String? get adminEmail;@JsonKey(name: 'admin_name') String? get adminName;@JsonKey(name: 'device_name') String? get deviceName;@JsonKey(name: 'device_serial_number') String? get deviceSerialNumber;@JsonKey(name: 'blueprint_name') String? get blueprintName;@JsonKey(name: 'user_email') String? get userEmail;
/// Create a copy of AuditEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuditEventCopyWith<AuditEvent> get copyWith => _$AuditEventCopyWithImpl<AuditEvent>(this as AuditEvent, _$identity);

  /// Serializes this AuditEvent to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuditEvent&&(identical(other.id, id) || other.id == id)&&(identical(other.eventType, eventType) || other.eventType == eventType)&&(identical(other.eventAction, eventAction) || other.eventAction == eventAction)&&(identical(other.eventDescription, eventDescription) || other.eventDescription == eventDescription)&&(identical(other.eventDate, eventDate) || other.eventDate == eventDate)&&(identical(other.adminEmail, adminEmail) || other.adminEmail == adminEmail)&&(identical(other.adminName, adminName) || other.adminName == adminName)&&(identical(other.deviceName, deviceName) || other.deviceName == deviceName)&&(identical(other.deviceSerialNumber, deviceSerialNumber) || other.deviceSerialNumber == deviceSerialNumber)&&(identical(other.blueprintName, blueprintName) || other.blueprintName == blueprintName)&&(identical(other.userEmail, userEmail) || other.userEmail == userEmail));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,eventType,eventAction,eventDescription,eventDate,adminEmail,adminName,deviceName,deviceSerialNumber,blueprintName,userEmail);

@override
String toString() {
  return 'AuditEvent(id: $id, eventType: $eventType, eventAction: $eventAction, eventDescription: $eventDescription, eventDate: $eventDate, adminEmail: $adminEmail, adminName: $adminName, deviceName: $deviceName, deviceSerialNumber: $deviceSerialNumber, blueprintName: $blueprintName, userEmail: $userEmail)';
}


}

/// @nodoc
abstract mixin class $AuditEventCopyWith<$Res>  {
  factory $AuditEventCopyWith(AuditEvent value, $Res Function(AuditEvent) _then) = _$AuditEventCopyWithImpl;
@useResult
$Res call({
 String? id,@JsonKey(name: 'event_type') String? eventType,@JsonKey(name: 'event_action') String? eventAction,@JsonKey(name: 'event_description') String? eventDescription,@JsonKey(name: 'event_date') String? eventDate,@JsonKey(name: 'admin_email') String? adminEmail,@JsonKey(name: 'admin_name') String? adminName,@JsonKey(name: 'device_name') String? deviceName,@JsonKey(name: 'device_serial_number') String? deviceSerialNumber,@JsonKey(name: 'blueprint_name') String? blueprintName,@JsonKey(name: 'user_email') String? userEmail
});




}
/// @nodoc
class _$AuditEventCopyWithImpl<$Res>
    implements $AuditEventCopyWith<$Res> {
  _$AuditEventCopyWithImpl(this._self, this._then);

  final AuditEvent _self;
  final $Res Function(AuditEvent) _then;

/// Create a copy of AuditEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? eventType = freezed,Object? eventAction = freezed,Object? eventDescription = freezed,Object? eventDate = freezed,Object? adminEmail = freezed,Object? adminName = freezed,Object? deviceName = freezed,Object? deviceSerialNumber = freezed,Object? blueprintName = freezed,Object? userEmail = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,eventType: freezed == eventType ? _self.eventType : eventType // ignore: cast_nullable_to_non_nullable
as String?,eventAction: freezed == eventAction ? _self.eventAction : eventAction // ignore: cast_nullable_to_non_nullable
as String?,eventDescription: freezed == eventDescription ? _self.eventDescription : eventDescription // ignore: cast_nullable_to_non_nullable
as String?,eventDate: freezed == eventDate ? _self.eventDate : eventDate // ignore: cast_nullable_to_non_nullable
as String?,adminEmail: freezed == adminEmail ? _self.adminEmail : adminEmail // ignore: cast_nullable_to_non_nullable
as String?,adminName: freezed == adminName ? _self.adminName : adminName // ignore: cast_nullable_to_non_nullable
as String?,deviceName: freezed == deviceName ? _self.deviceName : deviceName // ignore: cast_nullable_to_non_nullable
as String?,deviceSerialNumber: freezed == deviceSerialNumber ? _self.deviceSerialNumber : deviceSerialNumber // ignore: cast_nullable_to_non_nullable
as String?,blueprintName: freezed == blueprintName ? _self.blueprintName : blueprintName // ignore: cast_nullable_to_non_nullable
as String?,userEmail: freezed == userEmail ? _self.userEmail : userEmail // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AuditEvent].
extension AuditEventPatterns on AuditEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AuditEvent value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AuditEvent() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AuditEvent value)  $default,){
final _that = this;
switch (_that) {
case _AuditEvent():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AuditEvent value)?  $default,){
final _that = this;
switch (_that) {
case _AuditEvent() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id, @JsonKey(name: 'event_type')  String? eventType, @JsonKey(name: 'event_action')  String? eventAction, @JsonKey(name: 'event_description')  String? eventDescription, @JsonKey(name: 'event_date')  String? eventDate, @JsonKey(name: 'admin_email')  String? adminEmail, @JsonKey(name: 'admin_name')  String? adminName, @JsonKey(name: 'device_name')  String? deviceName, @JsonKey(name: 'device_serial_number')  String? deviceSerialNumber, @JsonKey(name: 'blueprint_name')  String? blueprintName, @JsonKey(name: 'user_email')  String? userEmail)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AuditEvent() when $default != null:
return $default(_that.id,_that.eventType,_that.eventAction,_that.eventDescription,_that.eventDate,_that.adminEmail,_that.adminName,_that.deviceName,_that.deviceSerialNumber,_that.blueprintName,_that.userEmail);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id, @JsonKey(name: 'event_type')  String? eventType, @JsonKey(name: 'event_action')  String? eventAction, @JsonKey(name: 'event_description')  String? eventDescription, @JsonKey(name: 'event_date')  String? eventDate, @JsonKey(name: 'admin_email')  String? adminEmail, @JsonKey(name: 'admin_name')  String? adminName, @JsonKey(name: 'device_name')  String? deviceName, @JsonKey(name: 'device_serial_number')  String? deviceSerialNumber, @JsonKey(name: 'blueprint_name')  String? blueprintName, @JsonKey(name: 'user_email')  String? userEmail)  $default,) {final _that = this;
switch (_that) {
case _AuditEvent():
return $default(_that.id,_that.eventType,_that.eventAction,_that.eventDescription,_that.eventDate,_that.adminEmail,_that.adminName,_that.deviceName,_that.deviceSerialNumber,_that.blueprintName,_that.userEmail);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id, @JsonKey(name: 'event_type')  String? eventType, @JsonKey(name: 'event_action')  String? eventAction, @JsonKey(name: 'event_description')  String? eventDescription, @JsonKey(name: 'event_date')  String? eventDate, @JsonKey(name: 'admin_email')  String? adminEmail, @JsonKey(name: 'admin_name')  String? adminName, @JsonKey(name: 'device_name')  String? deviceName, @JsonKey(name: 'device_serial_number')  String? deviceSerialNumber, @JsonKey(name: 'blueprint_name')  String? blueprintName, @JsonKey(name: 'user_email')  String? userEmail)?  $default,) {final _that = this;
switch (_that) {
case _AuditEvent() when $default != null:
return $default(_that.id,_that.eventType,_that.eventAction,_that.eventDescription,_that.eventDate,_that.adminEmail,_that.adminName,_that.deviceName,_that.deviceSerialNumber,_that.blueprintName,_that.userEmail);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AuditEvent implements AuditEvent {
  const _AuditEvent({this.id, @JsonKey(name: 'event_type') this.eventType, @JsonKey(name: 'event_action') this.eventAction, @JsonKey(name: 'event_description') this.eventDescription, @JsonKey(name: 'event_date') this.eventDate, @JsonKey(name: 'admin_email') this.adminEmail, @JsonKey(name: 'admin_name') this.adminName, @JsonKey(name: 'device_name') this.deviceName, @JsonKey(name: 'device_serial_number') this.deviceSerialNumber, @JsonKey(name: 'blueprint_name') this.blueprintName, @JsonKey(name: 'user_email') this.userEmail});
  factory _AuditEvent.fromJson(Map<String, dynamic> json) => _$AuditEventFromJson(json);

@override final  String? id;
@override@JsonKey(name: 'event_type') final  String? eventType;
@override@JsonKey(name: 'event_action') final  String? eventAction;
@override@JsonKey(name: 'event_description') final  String? eventDescription;
@override@JsonKey(name: 'event_date') final  String? eventDate;
@override@JsonKey(name: 'admin_email') final  String? adminEmail;
@override@JsonKey(name: 'admin_name') final  String? adminName;
@override@JsonKey(name: 'device_name') final  String? deviceName;
@override@JsonKey(name: 'device_serial_number') final  String? deviceSerialNumber;
@override@JsonKey(name: 'blueprint_name') final  String? blueprintName;
@override@JsonKey(name: 'user_email') final  String? userEmail;

/// Create a copy of AuditEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuditEventCopyWith<_AuditEvent> get copyWith => __$AuditEventCopyWithImpl<_AuditEvent>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AuditEventToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuditEvent&&(identical(other.id, id) || other.id == id)&&(identical(other.eventType, eventType) || other.eventType == eventType)&&(identical(other.eventAction, eventAction) || other.eventAction == eventAction)&&(identical(other.eventDescription, eventDescription) || other.eventDescription == eventDescription)&&(identical(other.eventDate, eventDate) || other.eventDate == eventDate)&&(identical(other.adminEmail, adminEmail) || other.adminEmail == adminEmail)&&(identical(other.adminName, adminName) || other.adminName == adminName)&&(identical(other.deviceName, deviceName) || other.deviceName == deviceName)&&(identical(other.deviceSerialNumber, deviceSerialNumber) || other.deviceSerialNumber == deviceSerialNumber)&&(identical(other.blueprintName, blueprintName) || other.blueprintName == blueprintName)&&(identical(other.userEmail, userEmail) || other.userEmail == userEmail));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,eventType,eventAction,eventDescription,eventDate,adminEmail,adminName,deviceName,deviceSerialNumber,blueprintName,userEmail);

@override
String toString() {
  return 'AuditEvent(id: $id, eventType: $eventType, eventAction: $eventAction, eventDescription: $eventDescription, eventDate: $eventDate, adminEmail: $adminEmail, adminName: $adminName, deviceName: $deviceName, deviceSerialNumber: $deviceSerialNumber, blueprintName: $blueprintName, userEmail: $userEmail)';
}


}

/// @nodoc
abstract mixin class _$AuditEventCopyWith<$Res> implements $AuditEventCopyWith<$Res> {
  factory _$AuditEventCopyWith(_AuditEvent value, $Res Function(_AuditEvent) _then) = __$AuditEventCopyWithImpl;
@override @useResult
$Res call({
 String? id,@JsonKey(name: 'event_type') String? eventType,@JsonKey(name: 'event_action') String? eventAction,@JsonKey(name: 'event_description') String? eventDescription,@JsonKey(name: 'event_date') String? eventDate,@JsonKey(name: 'admin_email') String? adminEmail,@JsonKey(name: 'admin_name') String? adminName,@JsonKey(name: 'device_name') String? deviceName,@JsonKey(name: 'device_serial_number') String? deviceSerialNumber,@JsonKey(name: 'blueprint_name') String? blueprintName,@JsonKey(name: 'user_email') String? userEmail
});




}
/// @nodoc
class __$AuditEventCopyWithImpl<$Res>
    implements _$AuditEventCopyWith<$Res> {
  __$AuditEventCopyWithImpl(this._self, this._then);

  final _AuditEvent _self;
  final $Res Function(_AuditEvent) _then;

/// Create a copy of AuditEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? eventType = freezed,Object? eventAction = freezed,Object? eventDescription = freezed,Object? eventDate = freezed,Object? adminEmail = freezed,Object? adminName = freezed,Object? deviceName = freezed,Object? deviceSerialNumber = freezed,Object? blueprintName = freezed,Object? userEmail = freezed,}) {
  return _then(_AuditEvent(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,eventType: freezed == eventType ? _self.eventType : eventType // ignore: cast_nullable_to_non_nullable
as String?,eventAction: freezed == eventAction ? _self.eventAction : eventAction // ignore: cast_nullable_to_non_nullable
as String?,eventDescription: freezed == eventDescription ? _self.eventDescription : eventDescription // ignore: cast_nullable_to_non_nullable
as String?,eventDate: freezed == eventDate ? _self.eventDate : eventDate // ignore: cast_nullable_to_non_nullable
as String?,adminEmail: freezed == adminEmail ? _self.adminEmail : adminEmail // ignore: cast_nullable_to_non_nullable
as String?,adminName: freezed == adminName ? _self.adminName : adminName // ignore: cast_nullable_to_non_nullable
as String?,deviceName: freezed == deviceName ? _self.deviceName : deviceName // ignore: cast_nullable_to_non_nullable
as String?,deviceSerialNumber: freezed == deviceSerialNumber ? _self.deviceSerialNumber : deviceSerialNumber // ignore: cast_nullable_to_non_nullable
as String?,blueprintName: freezed == blueprintName ? _self.blueprintName : blueprintName // ignore: cast_nullable_to_non_nullable
as String?,userEmail: freezed == userEmail ? _self.userEmail : userEmail // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
