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

@JsonKey(fromJson: _toNullableString) String? get id;/// The action performed, e.g. "create", "update", "delete", "detect".
@JsonKey(fromJson: _toNullableString) String? get action;/// ISO-8601 timestamp when the event occurred.
@JsonKey(name: 'occurred_at') String? get occurredAt;/// ID of the actor (admin user or system component).
@JsonKey(name: 'actor_id', fromJson: _toNullableString) String? get actorId;/// Type of actor, e.g. "admin", "kandji".
@JsonKey(name: 'actor_type', fromJson: _toNullableString) String? get actorType;/// ID of the target object.
@JsonKey(name: 'target_id', fromJson: _toNullableString) String? get targetId;/// Type of target, e.g. "device", "blueprint", "user".
@JsonKey(name: 'target_type', fromJson: _toNullableString) String? get targetType;/// Component category, e.g. "library_item", "vulnerability".
@JsonKey(name: 'target_component', fromJson: _toNullableString) String? get targetComponent;/// State details — may be a nested object. Extracted as description.
@JsonKey(name: 'new_state', fromJson: _descriptionFromNewState) String? get newState;
/// Create a copy of AuditEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuditEventCopyWith<AuditEvent> get copyWith => _$AuditEventCopyWithImpl<AuditEvent>(this as AuditEvent, _$identity);

  /// Serializes this AuditEvent to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuditEvent&&(identical(other.id, id) || other.id == id)&&(identical(other.action, action) || other.action == action)&&(identical(other.occurredAt, occurredAt) || other.occurredAt == occurredAt)&&(identical(other.actorId, actorId) || other.actorId == actorId)&&(identical(other.actorType, actorType) || other.actorType == actorType)&&(identical(other.targetId, targetId) || other.targetId == targetId)&&(identical(other.targetType, targetType) || other.targetType == targetType)&&(identical(other.targetComponent, targetComponent) || other.targetComponent == targetComponent)&&(identical(other.newState, newState) || other.newState == newState));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,action,occurredAt,actorId,actorType,targetId,targetType,targetComponent,newState);

@override
String toString() {
  return 'AuditEvent(id: $id, action: $action, occurredAt: $occurredAt, actorId: $actorId, actorType: $actorType, targetId: $targetId, targetType: $targetType, targetComponent: $targetComponent, newState: $newState)';
}


}

/// @nodoc
abstract mixin class $AuditEventCopyWith<$Res>  {
  factory $AuditEventCopyWith(AuditEvent value, $Res Function(AuditEvent) _then) = _$AuditEventCopyWithImpl;
@useResult
$Res call({
@JsonKey(fromJson: _toNullableString) String? id,@JsonKey(fromJson: _toNullableString) String? action,@JsonKey(name: 'occurred_at') String? occurredAt,@JsonKey(name: 'actor_id', fromJson: _toNullableString) String? actorId,@JsonKey(name: 'actor_type', fromJson: _toNullableString) String? actorType,@JsonKey(name: 'target_id', fromJson: _toNullableString) String? targetId,@JsonKey(name: 'target_type', fromJson: _toNullableString) String? targetType,@JsonKey(name: 'target_component', fromJson: _toNullableString) String? targetComponent,@JsonKey(name: 'new_state', fromJson: _descriptionFromNewState) String? newState
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
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? action = freezed,Object? occurredAt = freezed,Object? actorId = freezed,Object? actorType = freezed,Object? targetId = freezed,Object? targetType = freezed,Object? targetComponent = freezed,Object? newState = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,action: freezed == action ? _self.action : action // ignore: cast_nullable_to_non_nullable
as String?,occurredAt: freezed == occurredAt ? _self.occurredAt : occurredAt // ignore: cast_nullable_to_non_nullable
as String?,actorId: freezed == actorId ? _self.actorId : actorId // ignore: cast_nullable_to_non_nullable
as String?,actorType: freezed == actorType ? _self.actorType : actorType // ignore: cast_nullable_to_non_nullable
as String?,targetId: freezed == targetId ? _self.targetId : targetId // ignore: cast_nullable_to_non_nullable
as String?,targetType: freezed == targetType ? _self.targetType : targetType // ignore: cast_nullable_to_non_nullable
as String?,targetComponent: freezed == targetComponent ? _self.targetComponent : targetComponent // ignore: cast_nullable_to_non_nullable
as String?,newState: freezed == newState ? _self.newState : newState // ignore: cast_nullable_to_non_nullable
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(fromJson: _toNullableString)  String? id, @JsonKey(fromJson: _toNullableString)  String? action, @JsonKey(name: 'occurred_at')  String? occurredAt, @JsonKey(name: 'actor_id', fromJson: _toNullableString)  String? actorId, @JsonKey(name: 'actor_type', fromJson: _toNullableString)  String? actorType, @JsonKey(name: 'target_id', fromJson: _toNullableString)  String? targetId, @JsonKey(name: 'target_type', fromJson: _toNullableString)  String? targetType, @JsonKey(name: 'target_component', fromJson: _toNullableString)  String? targetComponent, @JsonKey(name: 'new_state', fromJson: _descriptionFromNewState)  String? newState)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AuditEvent() when $default != null:
return $default(_that.id,_that.action,_that.occurredAt,_that.actorId,_that.actorType,_that.targetId,_that.targetType,_that.targetComponent,_that.newState);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(fromJson: _toNullableString)  String? id, @JsonKey(fromJson: _toNullableString)  String? action, @JsonKey(name: 'occurred_at')  String? occurredAt, @JsonKey(name: 'actor_id', fromJson: _toNullableString)  String? actorId, @JsonKey(name: 'actor_type', fromJson: _toNullableString)  String? actorType, @JsonKey(name: 'target_id', fromJson: _toNullableString)  String? targetId, @JsonKey(name: 'target_type', fromJson: _toNullableString)  String? targetType, @JsonKey(name: 'target_component', fromJson: _toNullableString)  String? targetComponent, @JsonKey(name: 'new_state', fromJson: _descriptionFromNewState)  String? newState)  $default,) {final _that = this;
switch (_that) {
case _AuditEvent():
return $default(_that.id,_that.action,_that.occurredAt,_that.actorId,_that.actorType,_that.targetId,_that.targetType,_that.targetComponent,_that.newState);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(fromJson: _toNullableString)  String? id, @JsonKey(fromJson: _toNullableString)  String? action, @JsonKey(name: 'occurred_at')  String? occurredAt, @JsonKey(name: 'actor_id', fromJson: _toNullableString)  String? actorId, @JsonKey(name: 'actor_type', fromJson: _toNullableString)  String? actorType, @JsonKey(name: 'target_id', fromJson: _toNullableString)  String? targetId, @JsonKey(name: 'target_type', fromJson: _toNullableString)  String? targetType, @JsonKey(name: 'target_component', fromJson: _toNullableString)  String? targetComponent, @JsonKey(name: 'new_state', fromJson: _descriptionFromNewState)  String? newState)?  $default,) {final _that = this;
switch (_that) {
case _AuditEvent() when $default != null:
return $default(_that.id,_that.action,_that.occurredAt,_that.actorId,_that.actorType,_that.targetId,_that.targetType,_that.targetComponent,_that.newState);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AuditEvent implements AuditEvent {
  const _AuditEvent({@JsonKey(fromJson: _toNullableString) this.id, @JsonKey(fromJson: _toNullableString) this.action, @JsonKey(name: 'occurred_at') this.occurredAt, @JsonKey(name: 'actor_id', fromJson: _toNullableString) this.actorId, @JsonKey(name: 'actor_type', fromJson: _toNullableString) this.actorType, @JsonKey(name: 'target_id', fromJson: _toNullableString) this.targetId, @JsonKey(name: 'target_type', fromJson: _toNullableString) this.targetType, @JsonKey(name: 'target_component', fromJson: _toNullableString) this.targetComponent, @JsonKey(name: 'new_state', fromJson: _descriptionFromNewState) this.newState});
  factory _AuditEvent.fromJson(Map<String, dynamic> json) => _$AuditEventFromJson(json);

@override@JsonKey(fromJson: _toNullableString) final  String? id;
/// The action performed, e.g. "create", "update", "delete", "detect".
@override@JsonKey(fromJson: _toNullableString) final  String? action;
/// ISO-8601 timestamp when the event occurred.
@override@JsonKey(name: 'occurred_at') final  String? occurredAt;
/// ID of the actor (admin user or system component).
@override@JsonKey(name: 'actor_id', fromJson: _toNullableString) final  String? actorId;
/// Type of actor, e.g. "admin", "kandji".
@override@JsonKey(name: 'actor_type', fromJson: _toNullableString) final  String? actorType;
/// ID of the target object.
@override@JsonKey(name: 'target_id', fromJson: _toNullableString) final  String? targetId;
/// Type of target, e.g. "device", "blueprint", "user".
@override@JsonKey(name: 'target_type', fromJson: _toNullableString) final  String? targetType;
/// Component category, e.g. "library_item", "vulnerability".
@override@JsonKey(name: 'target_component', fromJson: _toNullableString) final  String? targetComponent;
/// State details — may be a nested object. Extracted as description.
@override@JsonKey(name: 'new_state', fromJson: _descriptionFromNewState) final  String? newState;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuditEvent&&(identical(other.id, id) || other.id == id)&&(identical(other.action, action) || other.action == action)&&(identical(other.occurredAt, occurredAt) || other.occurredAt == occurredAt)&&(identical(other.actorId, actorId) || other.actorId == actorId)&&(identical(other.actorType, actorType) || other.actorType == actorType)&&(identical(other.targetId, targetId) || other.targetId == targetId)&&(identical(other.targetType, targetType) || other.targetType == targetType)&&(identical(other.targetComponent, targetComponent) || other.targetComponent == targetComponent)&&(identical(other.newState, newState) || other.newState == newState));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,action,occurredAt,actorId,actorType,targetId,targetType,targetComponent,newState);

@override
String toString() {
  return 'AuditEvent(id: $id, action: $action, occurredAt: $occurredAt, actorId: $actorId, actorType: $actorType, targetId: $targetId, targetType: $targetType, targetComponent: $targetComponent, newState: $newState)';
}


}

/// @nodoc
abstract mixin class _$AuditEventCopyWith<$Res> implements $AuditEventCopyWith<$Res> {
  factory _$AuditEventCopyWith(_AuditEvent value, $Res Function(_AuditEvent) _then) = __$AuditEventCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(fromJson: _toNullableString) String? id,@JsonKey(fromJson: _toNullableString) String? action,@JsonKey(name: 'occurred_at') String? occurredAt,@JsonKey(name: 'actor_id', fromJson: _toNullableString) String? actorId,@JsonKey(name: 'actor_type', fromJson: _toNullableString) String? actorType,@JsonKey(name: 'target_id', fromJson: _toNullableString) String? targetId,@JsonKey(name: 'target_type', fromJson: _toNullableString) String? targetType,@JsonKey(name: 'target_component', fromJson: _toNullableString) String? targetComponent,@JsonKey(name: 'new_state', fromJson: _descriptionFromNewState) String? newState
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
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? action = freezed,Object? occurredAt = freezed,Object? actorId = freezed,Object? actorType = freezed,Object? targetId = freezed,Object? targetType = freezed,Object? targetComponent = freezed,Object? newState = freezed,}) {
  return _then(_AuditEvent(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,action: freezed == action ? _self.action : action // ignore: cast_nullable_to_non_nullable
as String?,occurredAt: freezed == occurredAt ? _self.occurredAt : occurredAt // ignore: cast_nullable_to_non_nullable
as String?,actorId: freezed == actorId ? _self.actorId : actorId // ignore: cast_nullable_to_non_nullable
as String?,actorType: freezed == actorType ? _self.actorType : actorType // ignore: cast_nullable_to_non_nullable
as String?,targetId: freezed == targetId ? _self.targetId : targetId // ignore: cast_nullable_to_non_nullable
as String?,targetType: freezed == targetType ? _self.targetType : targetType // ignore: cast_nullable_to_non_nullable
as String?,targetComponent: freezed == targetComponent ? _self.targetComponent : targetComponent // ignore: cast_nullable_to_non_nullable
as String?,newState: freezed == newState ? _self.newState : newState // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
