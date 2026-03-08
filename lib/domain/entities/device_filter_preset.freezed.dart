// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'device_filter_preset.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DeviceFilterPreset {

 String get id; String get name; String get searchQuery; String? get platform; bool? get supervised; bool get lostMode; bool get sortAsc;
/// Create a copy of DeviceFilterPreset
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeviceFilterPresetCopyWith<DeviceFilterPreset> get copyWith => _$DeviceFilterPresetCopyWithImpl<DeviceFilterPreset>(this as DeviceFilterPreset, _$identity);

  /// Serializes this DeviceFilterPreset to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeviceFilterPreset&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.searchQuery, searchQuery) || other.searchQuery == searchQuery)&&(identical(other.platform, platform) || other.platform == platform)&&(identical(other.supervised, supervised) || other.supervised == supervised)&&(identical(other.lostMode, lostMode) || other.lostMode == lostMode)&&(identical(other.sortAsc, sortAsc) || other.sortAsc == sortAsc));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,searchQuery,platform,supervised,lostMode,sortAsc);

@override
String toString() {
  return 'DeviceFilterPreset(id: $id, name: $name, searchQuery: $searchQuery, platform: $platform, supervised: $supervised, lostMode: $lostMode, sortAsc: $sortAsc)';
}


}

/// @nodoc
abstract mixin class $DeviceFilterPresetCopyWith<$Res>  {
  factory $DeviceFilterPresetCopyWith(DeviceFilterPreset value, $Res Function(DeviceFilterPreset) _then) = _$DeviceFilterPresetCopyWithImpl;
@useResult
$Res call({
 String id, String name, String searchQuery, String? platform, bool? supervised, bool lostMode, bool sortAsc
});




}
/// @nodoc
class _$DeviceFilterPresetCopyWithImpl<$Res>
    implements $DeviceFilterPresetCopyWith<$Res> {
  _$DeviceFilterPresetCopyWithImpl(this._self, this._then);

  final DeviceFilterPreset _self;
  final $Res Function(DeviceFilterPreset) _then;

/// Create a copy of DeviceFilterPreset
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? searchQuery = null,Object? platform = freezed,Object? supervised = freezed,Object? lostMode = null,Object? sortAsc = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,searchQuery: null == searchQuery ? _self.searchQuery : searchQuery // ignore: cast_nullable_to_non_nullable
as String,platform: freezed == platform ? _self.platform : platform // ignore: cast_nullable_to_non_nullable
as String?,supervised: freezed == supervised ? _self.supervised : supervised // ignore: cast_nullable_to_non_nullable
as bool?,lostMode: null == lostMode ? _self.lostMode : lostMode // ignore: cast_nullable_to_non_nullable
as bool,sortAsc: null == sortAsc ? _self.sortAsc : sortAsc // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [DeviceFilterPreset].
extension DeviceFilterPresetPatterns on DeviceFilterPreset {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DeviceFilterPreset value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DeviceFilterPreset() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DeviceFilterPreset value)  $default,){
final _that = this;
switch (_that) {
case _DeviceFilterPreset():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DeviceFilterPreset value)?  $default,){
final _that = this;
switch (_that) {
case _DeviceFilterPreset() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String searchQuery,  String? platform,  bool? supervised,  bool lostMode,  bool sortAsc)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DeviceFilterPreset() when $default != null:
return $default(_that.id,_that.name,_that.searchQuery,_that.platform,_that.supervised,_that.lostMode,_that.sortAsc);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String searchQuery,  String? platform,  bool? supervised,  bool lostMode,  bool sortAsc)  $default,) {final _that = this;
switch (_that) {
case _DeviceFilterPreset():
return $default(_that.id,_that.name,_that.searchQuery,_that.platform,_that.supervised,_that.lostMode,_that.sortAsc);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String searchQuery,  String? platform,  bool? supervised,  bool lostMode,  bool sortAsc)?  $default,) {final _that = this;
switch (_that) {
case _DeviceFilterPreset() when $default != null:
return $default(_that.id,_that.name,_that.searchQuery,_that.platform,_that.supervised,_that.lostMode,_that.sortAsc);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DeviceFilterPreset implements DeviceFilterPreset {
  const _DeviceFilterPreset({required this.id, required this.name, this.searchQuery = '', this.platform, this.supervised, this.lostMode = false, this.sortAsc = true});
  factory _DeviceFilterPreset.fromJson(Map<String, dynamic> json) => _$DeviceFilterPresetFromJson(json);

@override final  String id;
@override final  String name;
@override@JsonKey() final  String searchQuery;
@override final  String? platform;
@override final  bool? supervised;
@override@JsonKey() final  bool lostMode;
@override@JsonKey() final  bool sortAsc;

/// Create a copy of DeviceFilterPreset
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeviceFilterPresetCopyWith<_DeviceFilterPreset> get copyWith => __$DeviceFilterPresetCopyWithImpl<_DeviceFilterPreset>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DeviceFilterPresetToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeviceFilterPreset&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.searchQuery, searchQuery) || other.searchQuery == searchQuery)&&(identical(other.platform, platform) || other.platform == platform)&&(identical(other.supervised, supervised) || other.supervised == supervised)&&(identical(other.lostMode, lostMode) || other.lostMode == lostMode)&&(identical(other.sortAsc, sortAsc) || other.sortAsc == sortAsc));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,searchQuery,platform,supervised,lostMode,sortAsc);

@override
String toString() {
  return 'DeviceFilterPreset(id: $id, name: $name, searchQuery: $searchQuery, platform: $platform, supervised: $supervised, lostMode: $lostMode, sortAsc: $sortAsc)';
}


}

/// @nodoc
abstract mixin class _$DeviceFilterPresetCopyWith<$Res> implements $DeviceFilterPresetCopyWith<$Res> {
  factory _$DeviceFilterPresetCopyWith(_DeviceFilterPreset value, $Res Function(_DeviceFilterPreset) _then) = __$DeviceFilterPresetCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String searchQuery, String? platform, bool? supervised, bool lostMode, bool sortAsc
});




}
/// @nodoc
class __$DeviceFilterPresetCopyWithImpl<$Res>
    implements _$DeviceFilterPresetCopyWith<$Res> {
  __$DeviceFilterPresetCopyWithImpl(this._self, this._then);

  final _DeviceFilterPreset _self;
  final $Res Function(_DeviceFilterPreset) _then;

/// Create a copy of DeviceFilterPreset
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? searchQuery = null,Object? platform = freezed,Object? supervised = freezed,Object? lostMode = null,Object? sortAsc = null,}) {
  return _then(_DeviceFilterPreset(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,searchQuery: null == searchQuery ? _self.searchQuery : searchQuery // ignore: cast_nullable_to_non_nullable
as String,platform: freezed == platform ? _self.platform : platform // ignore: cast_nullable_to_non_nullable
as String?,supervised: freezed == supervised ? _self.supervised : supervised // ignore: cast_nullable_to_non_nullable
as bool?,lostMode: null == lostMode ? _self.lostMode : lostMode // ignore: cast_nullable_to_non_nullable
as bool,sortAsc: null == sortAsc ? _self.sortAsc : sortAsc // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
