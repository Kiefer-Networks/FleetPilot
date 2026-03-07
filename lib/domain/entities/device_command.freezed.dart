// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'device_command.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DeviceCommand {

 String? get uuid;@JsonKey(name: 'command_type') String? get commandType;@JsonKey(name: 'request_type') String? get requestType;@JsonKey(fromJson: _statusFromJson) String? get status;@JsonKey(name: 'date_requested') String? get dateRequested;@JsonKey(name: 'date_completed') String? get dateCompleted;@JsonKey(name: 'last_pushed') String? get lastPushed; int? get attempts; int? get priority;
/// Create a copy of DeviceCommand
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeviceCommandCopyWith<DeviceCommand> get copyWith => _$DeviceCommandCopyWithImpl<DeviceCommand>(this as DeviceCommand, _$identity);

  /// Serializes this DeviceCommand to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeviceCommand&&(identical(other.uuid, uuid) || other.uuid == uuid)&&(identical(other.commandType, commandType) || other.commandType == commandType)&&(identical(other.requestType, requestType) || other.requestType == requestType)&&(identical(other.status, status) || other.status == status)&&(identical(other.dateRequested, dateRequested) || other.dateRequested == dateRequested)&&(identical(other.dateCompleted, dateCompleted) || other.dateCompleted == dateCompleted)&&(identical(other.lastPushed, lastPushed) || other.lastPushed == lastPushed)&&(identical(other.attempts, attempts) || other.attempts == attempts)&&(identical(other.priority, priority) || other.priority == priority));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,uuid,commandType,requestType,status,dateRequested,dateCompleted,lastPushed,attempts,priority);

@override
String toString() {
  return 'DeviceCommand(uuid: $uuid, commandType: $commandType, requestType: $requestType, status: $status, dateRequested: $dateRequested, dateCompleted: $dateCompleted, lastPushed: $lastPushed, attempts: $attempts, priority: $priority)';
}


}

/// @nodoc
abstract mixin class $DeviceCommandCopyWith<$Res>  {
  factory $DeviceCommandCopyWith(DeviceCommand value, $Res Function(DeviceCommand) _then) = _$DeviceCommandCopyWithImpl;
@useResult
$Res call({
 String? uuid,@JsonKey(name: 'command_type') String? commandType,@JsonKey(name: 'request_type') String? requestType,@JsonKey(fromJson: _statusFromJson) String? status,@JsonKey(name: 'date_requested') String? dateRequested,@JsonKey(name: 'date_completed') String? dateCompleted,@JsonKey(name: 'last_pushed') String? lastPushed, int? attempts, int? priority
});




}
/// @nodoc
class _$DeviceCommandCopyWithImpl<$Res>
    implements $DeviceCommandCopyWith<$Res> {
  _$DeviceCommandCopyWithImpl(this._self, this._then);

  final DeviceCommand _self;
  final $Res Function(DeviceCommand) _then;

/// Create a copy of DeviceCommand
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? uuid = freezed,Object? commandType = freezed,Object? requestType = freezed,Object? status = freezed,Object? dateRequested = freezed,Object? dateCompleted = freezed,Object? lastPushed = freezed,Object? attempts = freezed,Object? priority = freezed,}) {
  return _then(_self.copyWith(
uuid: freezed == uuid ? _self.uuid : uuid // ignore: cast_nullable_to_non_nullable
as String?,commandType: freezed == commandType ? _self.commandType : commandType // ignore: cast_nullable_to_non_nullable
as String?,requestType: freezed == requestType ? _self.requestType : requestType // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,dateRequested: freezed == dateRequested ? _self.dateRequested : dateRequested // ignore: cast_nullable_to_non_nullable
as String?,dateCompleted: freezed == dateCompleted ? _self.dateCompleted : dateCompleted // ignore: cast_nullable_to_non_nullable
as String?,lastPushed: freezed == lastPushed ? _self.lastPushed : lastPushed // ignore: cast_nullable_to_non_nullable
as String?,attempts: freezed == attempts ? _self.attempts : attempts // ignore: cast_nullable_to_non_nullable
as int?,priority: freezed == priority ? _self.priority : priority // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [DeviceCommand].
extension DeviceCommandPatterns on DeviceCommand {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DeviceCommand value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DeviceCommand() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DeviceCommand value)  $default,){
final _that = this;
switch (_that) {
case _DeviceCommand():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DeviceCommand value)?  $default,){
final _that = this;
switch (_that) {
case _DeviceCommand() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? uuid, @JsonKey(name: 'command_type')  String? commandType, @JsonKey(name: 'request_type')  String? requestType, @JsonKey(fromJson: _statusFromJson)  String? status, @JsonKey(name: 'date_requested')  String? dateRequested, @JsonKey(name: 'date_completed')  String? dateCompleted, @JsonKey(name: 'last_pushed')  String? lastPushed,  int? attempts,  int? priority)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DeviceCommand() when $default != null:
return $default(_that.uuid,_that.commandType,_that.requestType,_that.status,_that.dateRequested,_that.dateCompleted,_that.lastPushed,_that.attempts,_that.priority);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? uuid, @JsonKey(name: 'command_type')  String? commandType, @JsonKey(name: 'request_type')  String? requestType, @JsonKey(fromJson: _statusFromJson)  String? status, @JsonKey(name: 'date_requested')  String? dateRequested, @JsonKey(name: 'date_completed')  String? dateCompleted, @JsonKey(name: 'last_pushed')  String? lastPushed,  int? attempts,  int? priority)  $default,) {final _that = this;
switch (_that) {
case _DeviceCommand():
return $default(_that.uuid,_that.commandType,_that.requestType,_that.status,_that.dateRequested,_that.dateCompleted,_that.lastPushed,_that.attempts,_that.priority);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? uuid, @JsonKey(name: 'command_type')  String? commandType, @JsonKey(name: 'request_type')  String? requestType, @JsonKey(fromJson: _statusFromJson)  String? status, @JsonKey(name: 'date_requested')  String? dateRequested, @JsonKey(name: 'date_completed')  String? dateCompleted, @JsonKey(name: 'last_pushed')  String? lastPushed,  int? attempts,  int? priority)?  $default,) {final _that = this;
switch (_that) {
case _DeviceCommand() when $default != null:
return $default(_that.uuid,_that.commandType,_that.requestType,_that.status,_that.dateRequested,_that.dateCompleted,_that.lastPushed,_that.attempts,_that.priority);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DeviceCommand implements DeviceCommand {
  const _DeviceCommand({this.uuid, @JsonKey(name: 'command_type') this.commandType, @JsonKey(name: 'request_type') this.requestType, @JsonKey(fromJson: _statusFromJson) this.status, @JsonKey(name: 'date_requested') this.dateRequested, @JsonKey(name: 'date_completed') this.dateCompleted, @JsonKey(name: 'last_pushed') this.lastPushed, this.attempts, this.priority});
  factory _DeviceCommand.fromJson(Map<String, dynamic> json) => _$DeviceCommandFromJson(json);

@override final  String? uuid;
@override@JsonKey(name: 'command_type') final  String? commandType;
@override@JsonKey(name: 'request_type') final  String? requestType;
@override@JsonKey(fromJson: _statusFromJson) final  String? status;
@override@JsonKey(name: 'date_requested') final  String? dateRequested;
@override@JsonKey(name: 'date_completed') final  String? dateCompleted;
@override@JsonKey(name: 'last_pushed') final  String? lastPushed;
@override final  int? attempts;
@override final  int? priority;

/// Create a copy of DeviceCommand
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeviceCommandCopyWith<_DeviceCommand> get copyWith => __$DeviceCommandCopyWithImpl<_DeviceCommand>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DeviceCommandToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeviceCommand&&(identical(other.uuid, uuid) || other.uuid == uuid)&&(identical(other.commandType, commandType) || other.commandType == commandType)&&(identical(other.requestType, requestType) || other.requestType == requestType)&&(identical(other.status, status) || other.status == status)&&(identical(other.dateRequested, dateRequested) || other.dateRequested == dateRequested)&&(identical(other.dateCompleted, dateCompleted) || other.dateCompleted == dateCompleted)&&(identical(other.lastPushed, lastPushed) || other.lastPushed == lastPushed)&&(identical(other.attempts, attempts) || other.attempts == attempts)&&(identical(other.priority, priority) || other.priority == priority));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,uuid,commandType,requestType,status,dateRequested,dateCompleted,lastPushed,attempts,priority);

@override
String toString() {
  return 'DeviceCommand(uuid: $uuid, commandType: $commandType, requestType: $requestType, status: $status, dateRequested: $dateRequested, dateCompleted: $dateCompleted, lastPushed: $lastPushed, attempts: $attempts, priority: $priority)';
}


}

/// @nodoc
abstract mixin class _$DeviceCommandCopyWith<$Res> implements $DeviceCommandCopyWith<$Res> {
  factory _$DeviceCommandCopyWith(_DeviceCommand value, $Res Function(_DeviceCommand) _then) = __$DeviceCommandCopyWithImpl;
@override @useResult
$Res call({
 String? uuid,@JsonKey(name: 'command_type') String? commandType,@JsonKey(name: 'request_type') String? requestType,@JsonKey(fromJson: _statusFromJson) String? status,@JsonKey(name: 'date_requested') String? dateRequested,@JsonKey(name: 'date_completed') String? dateCompleted,@JsonKey(name: 'last_pushed') String? lastPushed, int? attempts, int? priority
});




}
/// @nodoc
class __$DeviceCommandCopyWithImpl<$Res>
    implements _$DeviceCommandCopyWith<$Res> {
  __$DeviceCommandCopyWithImpl(this._self, this._then);

  final _DeviceCommand _self;
  final $Res Function(_DeviceCommand) _then;

/// Create a copy of DeviceCommand
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? uuid = freezed,Object? commandType = freezed,Object? requestType = freezed,Object? status = freezed,Object? dateRequested = freezed,Object? dateCompleted = freezed,Object? lastPushed = freezed,Object? attempts = freezed,Object? priority = freezed,}) {
  return _then(_DeviceCommand(
uuid: freezed == uuid ? _self.uuid : uuid // ignore: cast_nullable_to_non_nullable
as String?,commandType: freezed == commandType ? _self.commandType : commandType // ignore: cast_nullable_to_non_nullable
as String?,requestType: freezed == requestType ? _self.requestType : requestType // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,dateRequested: freezed == dateRequested ? _self.dateRequested : dateRequested // ignore: cast_nullable_to_non_nullable
as String?,dateCompleted: freezed == dateCompleted ? _self.dateCompleted : dateCompleted // ignore: cast_nullable_to_non_nullable
as String?,lastPushed: freezed == lastPushed ? _self.lastPushed : lastPushed // ignore: cast_nullable_to_non_nullable
as String?,attempts: freezed == attempts ? _self.attempts : attempts // ignore: cast_nullable_to_non_nullable
as int?,priority: freezed == priority ? _self.priority : priority // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
