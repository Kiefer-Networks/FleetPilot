// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'device_secret.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DeviceSecrets {

 String? get filevaultKey; String? get unlockPin; String? get recoveryPassword; String? get bypassCode;
/// Create a copy of DeviceSecrets
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeviceSecretsCopyWith<DeviceSecrets> get copyWith => _$DeviceSecretsCopyWithImpl<DeviceSecrets>(this as DeviceSecrets, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeviceSecrets&&(identical(other.filevaultKey, filevaultKey) || other.filevaultKey == filevaultKey)&&(identical(other.unlockPin, unlockPin) || other.unlockPin == unlockPin)&&(identical(other.recoveryPassword, recoveryPassword) || other.recoveryPassword == recoveryPassword)&&(identical(other.bypassCode, bypassCode) || other.bypassCode == bypassCode));
}


@override
int get hashCode => Object.hash(runtimeType,filevaultKey,unlockPin,recoveryPassword,bypassCode);

@override
String toString() {
  return 'DeviceSecrets(filevaultKey: $filevaultKey, unlockPin: $unlockPin, recoveryPassword: $recoveryPassword, bypassCode: $bypassCode)';
}


}

/// @nodoc
abstract mixin class $DeviceSecretsCopyWith<$Res>  {
  factory $DeviceSecretsCopyWith(DeviceSecrets value, $Res Function(DeviceSecrets) _then) = _$DeviceSecretsCopyWithImpl;
@useResult
$Res call({
 String? filevaultKey, String? unlockPin, String? recoveryPassword, String? bypassCode
});




}
/// @nodoc
class _$DeviceSecretsCopyWithImpl<$Res>
    implements $DeviceSecretsCopyWith<$Res> {
  _$DeviceSecretsCopyWithImpl(this._self, this._then);

  final DeviceSecrets _self;
  final $Res Function(DeviceSecrets) _then;

/// Create a copy of DeviceSecrets
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? filevaultKey = freezed,Object? unlockPin = freezed,Object? recoveryPassword = freezed,Object? bypassCode = freezed,}) {
  return _then(_self.copyWith(
filevaultKey: freezed == filevaultKey ? _self.filevaultKey : filevaultKey // ignore: cast_nullable_to_non_nullable
as String?,unlockPin: freezed == unlockPin ? _self.unlockPin : unlockPin // ignore: cast_nullable_to_non_nullable
as String?,recoveryPassword: freezed == recoveryPassword ? _self.recoveryPassword : recoveryPassword // ignore: cast_nullable_to_non_nullable
as String?,bypassCode: freezed == bypassCode ? _self.bypassCode : bypassCode // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [DeviceSecrets].
extension DeviceSecretsPatterns on DeviceSecrets {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DeviceSecrets value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DeviceSecrets() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DeviceSecrets value)  $default,){
final _that = this;
switch (_that) {
case _DeviceSecrets():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DeviceSecrets value)?  $default,){
final _that = this;
switch (_that) {
case _DeviceSecrets() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? filevaultKey,  String? unlockPin,  String? recoveryPassword,  String? bypassCode)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DeviceSecrets() when $default != null:
return $default(_that.filevaultKey,_that.unlockPin,_that.recoveryPassword,_that.bypassCode);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? filevaultKey,  String? unlockPin,  String? recoveryPassword,  String? bypassCode)  $default,) {final _that = this;
switch (_that) {
case _DeviceSecrets():
return $default(_that.filevaultKey,_that.unlockPin,_that.recoveryPassword,_that.bypassCode);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? filevaultKey,  String? unlockPin,  String? recoveryPassword,  String? bypassCode)?  $default,) {final _that = this;
switch (_that) {
case _DeviceSecrets() when $default != null:
return $default(_that.filevaultKey,_that.unlockPin,_that.recoveryPassword,_that.bypassCode);case _:
  return null;

}
}

}

/// @nodoc


class _DeviceSecrets implements DeviceSecrets {
  const _DeviceSecrets({this.filevaultKey, this.unlockPin, this.recoveryPassword, this.bypassCode});
  

@override final  String? filevaultKey;
@override final  String? unlockPin;
@override final  String? recoveryPassword;
@override final  String? bypassCode;

/// Create a copy of DeviceSecrets
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeviceSecretsCopyWith<_DeviceSecrets> get copyWith => __$DeviceSecretsCopyWithImpl<_DeviceSecrets>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeviceSecrets&&(identical(other.filevaultKey, filevaultKey) || other.filevaultKey == filevaultKey)&&(identical(other.unlockPin, unlockPin) || other.unlockPin == unlockPin)&&(identical(other.recoveryPassword, recoveryPassword) || other.recoveryPassword == recoveryPassword)&&(identical(other.bypassCode, bypassCode) || other.bypassCode == bypassCode));
}


@override
int get hashCode => Object.hash(runtimeType,filevaultKey,unlockPin,recoveryPassword,bypassCode);

@override
String toString() {
  return 'DeviceSecrets(filevaultKey: $filevaultKey, unlockPin: $unlockPin, recoveryPassword: $recoveryPassword, bypassCode: $bypassCode)';
}


}

/// @nodoc
abstract mixin class _$DeviceSecretsCopyWith<$Res> implements $DeviceSecretsCopyWith<$Res> {
  factory _$DeviceSecretsCopyWith(_DeviceSecrets value, $Res Function(_DeviceSecrets) _then) = __$DeviceSecretsCopyWithImpl;
@override @useResult
$Res call({
 String? filevaultKey, String? unlockPin, String? recoveryPassword, String? bypassCode
});




}
/// @nodoc
class __$DeviceSecretsCopyWithImpl<$Res>
    implements _$DeviceSecretsCopyWith<$Res> {
  __$DeviceSecretsCopyWithImpl(this._self, this._then);

  final _DeviceSecrets _self;
  final $Res Function(_DeviceSecrets) _then;

/// Create a copy of DeviceSecrets
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? filevaultKey = freezed,Object? unlockPin = freezed,Object? recoveryPassword = freezed,Object? bypassCode = freezed,}) {
  return _then(_DeviceSecrets(
filevaultKey: freezed == filevaultKey ? _self.filevaultKey : filevaultKey // ignore: cast_nullable_to_non_nullable
as String?,unlockPin: freezed == unlockPin ? _self.unlockPin : unlockPin // ignore: cast_nullable_to_non_nullable
as String?,recoveryPassword: freezed == recoveryPassword ? _self.recoveryPassword : recoveryPassword // ignore: cast_nullable_to_non_nullable
as String?,bypassCode: freezed == bypassCode ? _self.bypassCode : bypassCode // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$SecretEntry {

 String get label; String? get value; bool get isError;
/// Create a copy of SecretEntry
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SecretEntryCopyWith<SecretEntry> get copyWith => _$SecretEntryCopyWithImpl<SecretEntry>(this as SecretEntry, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SecretEntry&&(identical(other.label, label) || other.label == label)&&(identical(other.value, value) || other.value == value)&&(identical(other.isError, isError) || other.isError == isError));
}


@override
int get hashCode => Object.hash(runtimeType,label,value,isError);

@override
String toString() {
  return 'SecretEntry(label: $label, value: $value, isError: $isError)';
}


}

/// @nodoc
abstract mixin class $SecretEntryCopyWith<$Res>  {
  factory $SecretEntryCopyWith(SecretEntry value, $Res Function(SecretEntry) _then) = _$SecretEntryCopyWithImpl;
@useResult
$Res call({
 String label, String? value, bool isError
});




}
/// @nodoc
class _$SecretEntryCopyWithImpl<$Res>
    implements $SecretEntryCopyWith<$Res> {
  _$SecretEntryCopyWithImpl(this._self, this._then);

  final SecretEntry _self;
  final $Res Function(SecretEntry) _then;

/// Create a copy of SecretEntry
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? label = null,Object? value = freezed,Object? isError = null,}) {
  return _then(_self.copyWith(
label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String?,isError: null == isError ? _self.isError : isError // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [SecretEntry].
extension SecretEntryPatterns on SecretEntry {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SecretEntry value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SecretEntry() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SecretEntry value)  $default,){
final _that = this;
switch (_that) {
case _SecretEntry():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SecretEntry value)?  $default,){
final _that = this;
switch (_that) {
case _SecretEntry() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String label,  String? value,  bool isError)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SecretEntry() when $default != null:
return $default(_that.label,_that.value,_that.isError);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String label,  String? value,  bool isError)  $default,) {final _that = this;
switch (_that) {
case _SecretEntry():
return $default(_that.label,_that.value,_that.isError);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String label,  String? value,  bool isError)?  $default,) {final _that = this;
switch (_that) {
case _SecretEntry() when $default != null:
return $default(_that.label,_that.value,_that.isError);case _:
  return null;

}
}

}

/// @nodoc


class _SecretEntry implements SecretEntry {
  const _SecretEntry({required this.label, this.value, this.isError = false});
  

@override final  String label;
@override final  String? value;
@override@JsonKey() final  bool isError;

/// Create a copy of SecretEntry
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SecretEntryCopyWith<_SecretEntry> get copyWith => __$SecretEntryCopyWithImpl<_SecretEntry>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SecretEntry&&(identical(other.label, label) || other.label == label)&&(identical(other.value, value) || other.value == value)&&(identical(other.isError, isError) || other.isError == isError));
}


@override
int get hashCode => Object.hash(runtimeType,label,value,isError);

@override
String toString() {
  return 'SecretEntry(label: $label, value: $value, isError: $isError)';
}


}

/// @nodoc
abstract mixin class _$SecretEntryCopyWith<$Res> implements $SecretEntryCopyWith<$Res> {
  factory _$SecretEntryCopyWith(_SecretEntry value, $Res Function(_SecretEntry) _then) = __$SecretEntryCopyWithImpl;
@override @useResult
$Res call({
 String label, String? value, bool isError
});




}
/// @nodoc
class __$SecretEntryCopyWithImpl<$Res>
    implements _$SecretEntryCopyWith<$Res> {
  __$SecretEntryCopyWithImpl(this._self, this._then);

  final _SecretEntry _self;
  final $Res Function(_SecretEntry) _then;

/// Create a copy of SecretEntry
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? label = null,Object? value = freezed,Object? isError = null,}) {
  return _then(_SecretEntry(
label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String?,isError: null == isError ? _self.isError : isError // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
