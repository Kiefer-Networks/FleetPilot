// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ade_integration.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AdeIntegration {

 String? get id; String? get name;@JsonKey(name: 'server_name') String? get serverName;@JsonKey(name: 'server_uuid') String? get serverUuid;@JsonKey(name: 'org_name') String? get orgName;@JsonKey(name: 'org_email') String? get orgEmail;@JsonKey(name: 'org_phone') String? get orgPhone;@JsonKey(name: 'org_address') String? get orgAddress;@JsonKey(name: 'token_expiry_date') String? get tokenExpiryDate;@JsonKey(name: 'default_blueprint_id') String? get defaultBlueprintId;@JsonKey(name: 'device_count') int? get deviceCount;@JsonKey(name: 'is_token_valid') bool get isTokenValid;@JsonKey(name: 'created_at') String? get createdAt;@JsonKey(name: 'updated_at') String? get updatedAt;
/// Create a copy of AdeIntegration
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdeIntegrationCopyWith<AdeIntegration> get copyWith => _$AdeIntegrationCopyWithImpl<AdeIntegration>(this as AdeIntegration, _$identity);

  /// Serializes this AdeIntegration to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdeIntegration&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.serverName, serverName) || other.serverName == serverName)&&(identical(other.serverUuid, serverUuid) || other.serverUuid == serverUuid)&&(identical(other.orgName, orgName) || other.orgName == orgName)&&(identical(other.orgEmail, orgEmail) || other.orgEmail == orgEmail)&&(identical(other.orgPhone, orgPhone) || other.orgPhone == orgPhone)&&(identical(other.orgAddress, orgAddress) || other.orgAddress == orgAddress)&&(identical(other.tokenExpiryDate, tokenExpiryDate) || other.tokenExpiryDate == tokenExpiryDate)&&(identical(other.defaultBlueprintId, defaultBlueprintId) || other.defaultBlueprintId == defaultBlueprintId)&&(identical(other.deviceCount, deviceCount) || other.deviceCount == deviceCount)&&(identical(other.isTokenValid, isTokenValid) || other.isTokenValid == isTokenValid)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,serverName,serverUuid,orgName,orgEmail,orgPhone,orgAddress,tokenExpiryDate,defaultBlueprintId,deviceCount,isTokenValid,createdAt,updatedAt);

@override
String toString() {
  return 'AdeIntegration(id: $id, name: $name, serverName: $serverName, serverUuid: $serverUuid, orgName: $orgName, orgEmail: $orgEmail, orgPhone: $orgPhone, orgAddress: $orgAddress, tokenExpiryDate: $tokenExpiryDate, defaultBlueprintId: $defaultBlueprintId, deviceCount: $deviceCount, isTokenValid: $isTokenValid, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $AdeIntegrationCopyWith<$Res>  {
  factory $AdeIntegrationCopyWith(AdeIntegration value, $Res Function(AdeIntegration) _then) = _$AdeIntegrationCopyWithImpl;
@useResult
$Res call({
 String? id, String? name,@JsonKey(name: 'server_name') String? serverName,@JsonKey(name: 'server_uuid') String? serverUuid,@JsonKey(name: 'org_name') String? orgName,@JsonKey(name: 'org_email') String? orgEmail,@JsonKey(name: 'org_phone') String? orgPhone,@JsonKey(name: 'org_address') String? orgAddress,@JsonKey(name: 'token_expiry_date') String? tokenExpiryDate,@JsonKey(name: 'default_blueprint_id') String? defaultBlueprintId,@JsonKey(name: 'device_count') int? deviceCount,@JsonKey(name: 'is_token_valid') bool isTokenValid,@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'updated_at') String? updatedAt
});




}
/// @nodoc
class _$AdeIntegrationCopyWithImpl<$Res>
    implements $AdeIntegrationCopyWith<$Res> {
  _$AdeIntegrationCopyWithImpl(this._self, this._then);

  final AdeIntegration _self;
  final $Res Function(AdeIntegration) _then;

/// Create a copy of AdeIntegration
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? serverName = freezed,Object? serverUuid = freezed,Object? orgName = freezed,Object? orgEmail = freezed,Object? orgPhone = freezed,Object? orgAddress = freezed,Object? tokenExpiryDate = freezed,Object? defaultBlueprintId = freezed,Object? deviceCount = freezed,Object? isTokenValid = null,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,serverName: freezed == serverName ? _self.serverName : serverName // ignore: cast_nullable_to_non_nullable
as String?,serverUuid: freezed == serverUuid ? _self.serverUuid : serverUuid // ignore: cast_nullable_to_non_nullable
as String?,orgName: freezed == orgName ? _self.orgName : orgName // ignore: cast_nullable_to_non_nullable
as String?,orgEmail: freezed == orgEmail ? _self.orgEmail : orgEmail // ignore: cast_nullable_to_non_nullable
as String?,orgPhone: freezed == orgPhone ? _self.orgPhone : orgPhone // ignore: cast_nullable_to_non_nullable
as String?,orgAddress: freezed == orgAddress ? _self.orgAddress : orgAddress // ignore: cast_nullable_to_non_nullable
as String?,tokenExpiryDate: freezed == tokenExpiryDate ? _self.tokenExpiryDate : tokenExpiryDate // ignore: cast_nullable_to_non_nullable
as String?,defaultBlueprintId: freezed == defaultBlueprintId ? _self.defaultBlueprintId : defaultBlueprintId // ignore: cast_nullable_to_non_nullable
as String?,deviceCount: freezed == deviceCount ? _self.deviceCount : deviceCount // ignore: cast_nullable_to_non_nullable
as int?,isTokenValid: null == isTokenValid ? _self.isTokenValid : isTokenValid // ignore: cast_nullable_to_non_nullable
as bool,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AdeIntegration].
extension AdeIntegrationPatterns on AdeIntegration {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdeIntegration value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdeIntegration() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdeIntegration value)  $default,){
final _that = this;
switch (_that) {
case _AdeIntegration():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdeIntegration value)?  $default,){
final _that = this;
switch (_that) {
case _AdeIntegration() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String? name, @JsonKey(name: 'server_name')  String? serverName, @JsonKey(name: 'server_uuid')  String? serverUuid, @JsonKey(name: 'org_name')  String? orgName, @JsonKey(name: 'org_email')  String? orgEmail, @JsonKey(name: 'org_phone')  String? orgPhone, @JsonKey(name: 'org_address')  String? orgAddress, @JsonKey(name: 'token_expiry_date')  String? tokenExpiryDate, @JsonKey(name: 'default_blueprint_id')  String? defaultBlueprintId, @JsonKey(name: 'device_count')  int? deviceCount, @JsonKey(name: 'is_token_valid')  bool isTokenValid, @JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdeIntegration() when $default != null:
return $default(_that.id,_that.name,_that.serverName,_that.serverUuid,_that.orgName,_that.orgEmail,_that.orgPhone,_that.orgAddress,_that.tokenExpiryDate,_that.defaultBlueprintId,_that.deviceCount,_that.isTokenValid,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String? name, @JsonKey(name: 'server_name')  String? serverName, @JsonKey(name: 'server_uuid')  String? serverUuid, @JsonKey(name: 'org_name')  String? orgName, @JsonKey(name: 'org_email')  String? orgEmail, @JsonKey(name: 'org_phone')  String? orgPhone, @JsonKey(name: 'org_address')  String? orgAddress, @JsonKey(name: 'token_expiry_date')  String? tokenExpiryDate, @JsonKey(name: 'default_blueprint_id')  String? defaultBlueprintId, @JsonKey(name: 'device_count')  int? deviceCount, @JsonKey(name: 'is_token_valid')  bool isTokenValid, @JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _AdeIntegration():
return $default(_that.id,_that.name,_that.serverName,_that.serverUuid,_that.orgName,_that.orgEmail,_that.orgPhone,_that.orgAddress,_that.tokenExpiryDate,_that.defaultBlueprintId,_that.deviceCount,_that.isTokenValid,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String? name, @JsonKey(name: 'server_name')  String? serverName, @JsonKey(name: 'server_uuid')  String? serverUuid, @JsonKey(name: 'org_name')  String? orgName, @JsonKey(name: 'org_email')  String? orgEmail, @JsonKey(name: 'org_phone')  String? orgPhone, @JsonKey(name: 'org_address')  String? orgAddress, @JsonKey(name: 'token_expiry_date')  String? tokenExpiryDate, @JsonKey(name: 'default_blueprint_id')  String? defaultBlueprintId, @JsonKey(name: 'device_count')  int? deviceCount, @JsonKey(name: 'is_token_valid')  bool isTokenValid, @JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _AdeIntegration() when $default != null:
return $default(_that.id,_that.name,_that.serverName,_that.serverUuid,_that.orgName,_that.orgEmail,_that.orgPhone,_that.orgAddress,_that.tokenExpiryDate,_that.defaultBlueprintId,_that.deviceCount,_that.isTokenValid,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AdeIntegration implements AdeIntegration {
  const _AdeIntegration({this.id, this.name, @JsonKey(name: 'server_name') this.serverName, @JsonKey(name: 'server_uuid') this.serverUuid, @JsonKey(name: 'org_name') this.orgName, @JsonKey(name: 'org_email') this.orgEmail, @JsonKey(name: 'org_phone') this.orgPhone, @JsonKey(name: 'org_address') this.orgAddress, @JsonKey(name: 'token_expiry_date') this.tokenExpiryDate, @JsonKey(name: 'default_blueprint_id') this.defaultBlueprintId, @JsonKey(name: 'device_count') this.deviceCount, @JsonKey(name: 'is_token_valid') this.isTokenValid = true, @JsonKey(name: 'created_at') this.createdAt, @JsonKey(name: 'updated_at') this.updatedAt});
  factory _AdeIntegration.fromJson(Map<String, dynamic> json) => _$AdeIntegrationFromJson(json);

@override final  String? id;
@override final  String? name;
@override@JsonKey(name: 'server_name') final  String? serverName;
@override@JsonKey(name: 'server_uuid') final  String? serverUuid;
@override@JsonKey(name: 'org_name') final  String? orgName;
@override@JsonKey(name: 'org_email') final  String? orgEmail;
@override@JsonKey(name: 'org_phone') final  String? orgPhone;
@override@JsonKey(name: 'org_address') final  String? orgAddress;
@override@JsonKey(name: 'token_expiry_date') final  String? tokenExpiryDate;
@override@JsonKey(name: 'default_blueprint_id') final  String? defaultBlueprintId;
@override@JsonKey(name: 'device_count') final  int? deviceCount;
@override@JsonKey(name: 'is_token_valid') final  bool isTokenValid;
@override@JsonKey(name: 'created_at') final  String? createdAt;
@override@JsonKey(name: 'updated_at') final  String? updatedAt;

/// Create a copy of AdeIntegration
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdeIntegrationCopyWith<_AdeIntegration> get copyWith => __$AdeIntegrationCopyWithImpl<_AdeIntegration>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AdeIntegrationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdeIntegration&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.serverName, serverName) || other.serverName == serverName)&&(identical(other.serverUuid, serverUuid) || other.serverUuid == serverUuid)&&(identical(other.orgName, orgName) || other.orgName == orgName)&&(identical(other.orgEmail, orgEmail) || other.orgEmail == orgEmail)&&(identical(other.orgPhone, orgPhone) || other.orgPhone == orgPhone)&&(identical(other.orgAddress, orgAddress) || other.orgAddress == orgAddress)&&(identical(other.tokenExpiryDate, tokenExpiryDate) || other.tokenExpiryDate == tokenExpiryDate)&&(identical(other.defaultBlueprintId, defaultBlueprintId) || other.defaultBlueprintId == defaultBlueprintId)&&(identical(other.deviceCount, deviceCount) || other.deviceCount == deviceCount)&&(identical(other.isTokenValid, isTokenValid) || other.isTokenValid == isTokenValid)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,serverName,serverUuid,orgName,orgEmail,orgPhone,orgAddress,tokenExpiryDate,defaultBlueprintId,deviceCount,isTokenValid,createdAt,updatedAt);

@override
String toString() {
  return 'AdeIntegration(id: $id, name: $name, serverName: $serverName, serverUuid: $serverUuid, orgName: $orgName, orgEmail: $orgEmail, orgPhone: $orgPhone, orgAddress: $orgAddress, tokenExpiryDate: $tokenExpiryDate, defaultBlueprintId: $defaultBlueprintId, deviceCount: $deviceCount, isTokenValid: $isTokenValid, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$AdeIntegrationCopyWith<$Res> implements $AdeIntegrationCopyWith<$Res> {
  factory _$AdeIntegrationCopyWith(_AdeIntegration value, $Res Function(_AdeIntegration) _then) = __$AdeIntegrationCopyWithImpl;
@override @useResult
$Res call({
 String? id, String? name,@JsonKey(name: 'server_name') String? serverName,@JsonKey(name: 'server_uuid') String? serverUuid,@JsonKey(name: 'org_name') String? orgName,@JsonKey(name: 'org_email') String? orgEmail,@JsonKey(name: 'org_phone') String? orgPhone,@JsonKey(name: 'org_address') String? orgAddress,@JsonKey(name: 'token_expiry_date') String? tokenExpiryDate,@JsonKey(name: 'default_blueprint_id') String? defaultBlueprintId,@JsonKey(name: 'device_count') int? deviceCount,@JsonKey(name: 'is_token_valid') bool isTokenValid,@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'updated_at') String? updatedAt
});




}
/// @nodoc
class __$AdeIntegrationCopyWithImpl<$Res>
    implements _$AdeIntegrationCopyWith<$Res> {
  __$AdeIntegrationCopyWithImpl(this._self, this._then);

  final _AdeIntegration _self;
  final $Res Function(_AdeIntegration) _then;

/// Create a copy of AdeIntegration
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? serverName = freezed,Object? serverUuid = freezed,Object? orgName = freezed,Object? orgEmail = freezed,Object? orgPhone = freezed,Object? orgAddress = freezed,Object? tokenExpiryDate = freezed,Object? defaultBlueprintId = freezed,Object? deviceCount = freezed,Object? isTokenValid = null,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_AdeIntegration(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,serverName: freezed == serverName ? _self.serverName : serverName // ignore: cast_nullable_to_non_nullable
as String?,serverUuid: freezed == serverUuid ? _self.serverUuid : serverUuid // ignore: cast_nullable_to_non_nullable
as String?,orgName: freezed == orgName ? _self.orgName : orgName // ignore: cast_nullable_to_non_nullable
as String?,orgEmail: freezed == orgEmail ? _self.orgEmail : orgEmail // ignore: cast_nullable_to_non_nullable
as String?,orgPhone: freezed == orgPhone ? _self.orgPhone : orgPhone // ignore: cast_nullable_to_non_nullable
as String?,orgAddress: freezed == orgAddress ? _self.orgAddress : orgAddress // ignore: cast_nullable_to_non_nullable
as String?,tokenExpiryDate: freezed == tokenExpiryDate ? _self.tokenExpiryDate : tokenExpiryDate // ignore: cast_nullable_to_non_nullable
as String?,defaultBlueprintId: freezed == defaultBlueprintId ? _self.defaultBlueprintId : defaultBlueprintId // ignore: cast_nullable_to_non_nullable
as String?,deviceCount: freezed == deviceCount ? _self.deviceCount : deviceCount // ignore: cast_nullable_to_non_nullable
as int?,isTokenValid: null == isTokenValid ? _self.isTokenValid : isTokenValid // ignore: cast_nullable_to_non_nullable
as bool,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
