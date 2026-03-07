// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'device_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DeviceStatus {

@JsonKey(name: 'device_id') String? get deviceId;@JsonKey(name: 'library_items') List<StatusItem> get libraryItems; List<StatusItem> get parameters;
/// Create a copy of DeviceStatus
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeviceStatusCopyWith<DeviceStatus> get copyWith => _$DeviceStatusCopyWithImpl<DeviceStatus>(this as DeviceStatus, _$identity);

  /// Serializes this DeviceStatus to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeviceStatus&&(identical(other.deviceId, deviceId) || other.deviceId == deviceId)&&const DeepCollectionEquality().equals(other.libraryItems, libraryItems)&&const DeepCollectionEquality().equals(other.parameters, parameters));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,deviceId,const DeepCollectionEquality().hash(libraryItems),const DeepCollectionEquality().hash(parameters));

@override
String toString() {
  return 'DeviceStatus(deviceId: $deviceId, libraryItems: $libraryItems, parameters: $parameters)';
}


}

/// @nodoc
abstract mixin class $DeviceStatusCopyWith<$Res>  {
  factory $DeviceStatusCopyWith(DeviceStatus value, $Res Function(DeviceStatus) _then) = _$DeviceStatusCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'device_id') String? deviceId,@JsonKey(name: 'library_items') List<StatusItem> libraryItems, List<StatusItem> parameters
});




}
/// @nodoc
class _$DeviceStatusCopyWithImpl<$Res>
    implements $DeviceStatusCopyWith<$Res> {
  _$DeviceStatusCopyWithImpl(this._self, this._then);

  final DeviceStatus _self;
  final $Res Function(DeviceStatus) _then;

/// Create a copy of DeviceStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? deviceId = freezed,Object? libraryItems = null,Object? parameters = null,}) {
  return _then(_self.copyWith(
deviceId: freezed == deviceId ? _self.deviceId : deviceId // ignore: cast_nullable_to_non_nullable
as String?,libraryItems: null == libraryItems ? _self.libraryItems : libraryItems // ignore: cast_nullable_to_non_nullable
as List<StatusItem>,parameters: null == parameters ? _self.parameters : parameters // ignore: cast_nullable_to_non_nullable
as List<StatusItem>,
  ));
}

}


/// Adds pattern-matching-related methods to [DeviceStatus].
extension DeviceStatusPatterns on DeviceStatus {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DeviceStatus value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DeviceStatus() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DeviceStatus value)  $default,){
final _that = this;
switch (_that) {
case _DeviceStatus():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DeviceStatus value)?  $default,){
final _that = this;
switch (_that) {
case _DeviceStatus() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'device_id')  String? deviceId, @JsonKey(name: 'library_items')  List<StatusItem> libraryItems,  List<StatusItem> parameters)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DeviceStatus() when $default != null:
return $default(_that.deviceId,_that.libraryItems,_that.parameters);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'device_id')  String? deviceId, @JsonKey(name: 'library_items')  List<StatusItem> libraryItems,  List<StatusItem> parameters)  $default,) {final _that = this;
switch (_that) {
case _DeviceStatus():
return $default(_that.deviceId,_that.libraryItems,_that.parameters);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'device_id')  String? deviceId, @JsonKey(name: 'library_items')  List<StatusItem> libraryItems,  List<StatusItem> parameters)?  $default,) {final _that = this;
switch (_that) {
case _DeviceStatus() when $default != null:
return $default(_that.deviceId,_that.libraryItems,_that.parameters);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DeviceStatus implements DeviceStatus {
  const _DeviceStatus({@JsonKey(name: 'device_id') this.deviceId, @JsonKey(name: 'library_items') final  List<StatusItem> libraryItems = const [], final  List<StatusItem> parameters = const []}): _libraryItems = libraryItems,_parameters = parameters;
  factory _DeviceStatus.fromJson(Map<String, dynamic> json) => _$DeviceStatusFromJson(json);

@override@JsonKey(name: 'device_id') final  String? deviceId;
 final  List<StatusItem> _libraryItems;
@override@JsonKey(name: 'library_items') List<StatusItem> get libraryItems {
  if (_libraryItems is EqualUnmodifiableListView) return _libraryItems;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_libraryItems);
}

 final  List<StatusItem> _parameters;
@override@JsonKey() List<StatusItem> get parameters {
  if (_parameters is EqualUnmodifiableListView) return _parameters;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_parameters);
}


/// Create a copy of DeviceStatus
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeviceStatusCopyWith<_DeviceStatus> get copyWith => __$DeviceStatusCopyWithImpl<_DeviceStatus>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DeviceStatusToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeviceStatus&&(identical(other.deviceId, deviceId) || other.deviceId == deviceId)&&const DeepCollectionEquality().equals(other._libraryItems, _libraryItems)&&const DeepCollectionEquality().equals(other._parameters, _parameters));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,deviceId,const DeepCollectionEquality().hash(_libraryItems),const DeepCollectionEquality().hash(_parameters));

@override
String toString() {
  return 'DeviceStatus(deviceId: $deviceId, libraryItems: $libraryItems, parameters: $parameters)';
}


}

/// @nodoc
abstract mixin class _$DeviceStatusCopyWith<$Res> implements $DeviceStatusCopyWith<$Res> {
  factory _$DeviceStatusCopyWith(_DeviceStatus value, $Res Function(_DeviceStatus) _then) = __$DeviceStatusCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'device_id') String? deviceId,@JsonKey(name: 'library_items') List<StatusItem> libraryItems, List<StatusItem> parameters
});




}
/// @nodoc
class __$DeviceStatusCopyWithImpl<$Res>
    implements _$DeviceStatusCopyWith<$Res> {
  __$DeviceStatusCopyWithImpl(this._self, this._then);

  final _DeviceStatus _self;
  final $Res Function(_DeviceStatus) _then;

/// Create a copy of DeviceStatus
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? deviceId = freezed,Object? libraryItems = null,Object? parameters = null,}) {
  return _then(_DeviceStatus(
deviceId: freezed == deviceId ? _self.deviceId : deviceId // ignore: cast_nullable_to_non_nullable
as String?,libraryItems: null == libraryItems ? _self._libraryItems : libraryItems // ignore: cast_nullable_to_non_nullable
as List<StatusItem>,parameters: null == parameters ? _self._parameters : parameters // ignore: cast_nullable_to_non_nullable
as List<StatusItem>,
  ));
}


}


/// @nodoc
mixin _$StatusItem {

 String? get name; String? get status; String? get type; String? get category; String? get subcategory;@JsonKey(name: 'item_id') String? get itemId;@JsonKey(name: 'reported_at') String? get reportedAt;
/// Create a copy of StatusItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StatusItemCopyWith<StatusItem> get copyWith => _$StatusItemCopyWithImpl<StatusItem>(this as StatusItem, _$identity);

  /// Serializes this StatusItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StatusItem&&(identical(other.name, name) || other.name == name)&&(identical(other.status, status) || other.status == status)&&(identical(other.type, type) || other.type == type)&&(identical(other.category, category) || other.category == category)&&(identical(other.subcategory, subcategory) || other.subcategory == subcategory)&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.reportedAt, reportedAt) || other.reportedAt == reportedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,status,type,category,subcategory,itemId,reportedAt);

@override
String toString() {
  return 'StatusItem(name: $name, status: $status, type: $type, category: $category, subcategory: $subcategory, itemId: $itemId, reportedAt: $reportedAt)';
}


}

/// @nodoc
abstract mixin class $StatusItemCopyWith<$Res>  {
  factory $StatusItemCopyWith(StatusItem value, $Res Function(StatusItem) _then) = _$StatusItemCopyWithImpl;
@useResult
$Res call({
 String? name, String? status, String? type, String? category, String? subcategory,@JsonKey(name: 'item_id') String? itemId,@JsonKey(name: 'reported_at') String? reportedAt
});




}
/// @nodoc
class _$StatusItemCopyWithImpl<$Res>
    implements $StatusItemCopyWith<$Res> {
  _$StatusItemCopyWithImpl(this._self, this._then);

  final StatusItem _self;
  final $Res Function(StatusItem) _then;

/// Create a copy of StatusItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? status = freezed,Object? type = freezed,Object? category = freezed,Object? subcategory = freezed,Object? itemId = freezed,Object? reportedAt = freezed,}) {
  return _then(_self.copyWith(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String?,subcategory: freezed == subcategory ? _self.subcategory : subcategory // ignore: cast_nullable_to_non_nullable
as String?,itemId: freezed == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as String?,reportedAt: freezed == reportedAt ? _self.reportedAt : reportedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [StatusItem].
extension StatusItemPatterns on StatusItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StatusItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StatusItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StatusItem value)  $default,){
final _that = this;
switch (_that) {
case _StatusItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StatusItem value)?  $default,){
final _that = this;
switch (_that) {
case _StatusItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? name,  String? status,  String? type,  String? category,  String? subcategory, @JsonKey(name: 'item_id')  String? itemId, @JsonKey(name: 'reported_at')  String? reportedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StatusItem() when $default != null:
return $default(_that.name,_that.status,_that.type,_that.category,_that.subcategory,_that.itemId,_that.reportedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? name,  String? status,  String? type,  String? category,  String? subcategory, @JsonKey(name: 'item_id')  String? itemId, @JsonKey(name: 'reported_at')  String? reportedAt)  $default,) {final _that = this;
switch (_that) {
case _StatusItem():
return $default(_that.name,_that.status,_that.type,_that.category,_that.subcategory,_that.itemId,_that.reportedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? name,  String? status,  String? type,  String? category,  String? subcategory, @JsonKey(name: 'item_id')  String? itemId, @JsonKey(name: 'reported_at')  String? reportedAt)?  $default,) {final _that = this;
switch (_that) {
case _StatusItem() when $default != null:
return $default(_that.name,_that.status,_that.type,_that.category,_that.subcategory,_that.itemId,_that.reportedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StatusItem implements StatusItem {
  const _StatusItem({this.name, this.status, this.type, this.category, this.subcategory, @JsonKey(name: 'item_id') this.itemId, @JsonKey(name: 'reported_at') this.reportedAt});
  factory _StatusItem.fromJson(Map<String, dynamic> json) => _$StatusItemFromJson(json);

@override final  String? name;
@override final  String? status;
@override final  String? type;
@override final  String? category;
@override final  String? subcategory;
@override@JsonKey(name: 'item_id') final  String? itemId;
@override@JsonKey(name: 'reported_at') final  String? reportedAt;

/// Create a copy of StatusItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StatusItemCopyWith<_StatusItem> get copyWith => __$StatusItemCopyWithImpl<_StatusItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StatusItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StatusItem&&(identical(other.name, name) || other.name == name)&&(identical(other.status, status) || other.status == status)&&(identical(other.type, type) || other.type == type)&&(identical(other.category, category) || other.category == category)&&(identical(other.subcategory, subcategory) || other.subcategory == subcategory)&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.reportedAt, reportedAt) || other.reportedAt == reportedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,status,type,category,subcategory,itemId,reportedAt);

@override
String toString() {
  return 'StatusItem(name: $name, status: $status, type: $type, category: $category, subcategory: $subcategory, itemId: $itemId, reportedAt: $reportedAt)';
}


}

/// @nodoc
abstract mixin class _$StatusItemCopyWith<$Res> implements $StatusItemCopyWith<$Res> {
  factory _$StatusItemCopyWith(_StatusItem value, $Res Function(_StatusItem) _then) = __$StatusItemCopyWithImpl;
@override @useResult
$Res call({
 String? name, String? status, String? type, String? category, String? subcategory,@JsonKey(name: 'item_id') String? itemId,@JsonKey(name: 'reported_at') String? reportedAt
});




}
/// @nodoc
class __$StatusItemCopyWithImpl<$Res>
    implements _$StatusItemCopyWith<$Res> {
  __$StatusItemCopyWithImpl(this._self, this._then);

  final _StatusItem _self;
  final $Res Function(_StatusItem) _then;

/// Create a copy of StatusItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? status = freezed,Object? type = freezed,Object? category = freezed,Object? subcategory = freezed,Object? itemId = freezed,Object? reportedAt = freezed,}) {
  return _then(_StatusItem(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String?,subcategory: freezed == subcategory ? _self.subcategory : subcategory // ignore: cast_nullable_to_non_nullable
as String?,itemId: freezed == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as String?,reportedAt: freezed == reportedAt ? _self.reportedAt : reportedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
