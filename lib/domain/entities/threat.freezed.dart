// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'threat.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Threat {

 String? get classification;@JsonKey(name: 'date_of_detection') String? get dateOfDetection;@JsonKey(name: 'device_id') String? get deviceId;@JsonKey(name: 'device_name') String? get deviceName;@JsonKey(name: 'file_hash') String? get fileHash;@JsonKey(name: 'file_name') String? get fileName;@JsonKey(name: 'file_path') String? get filePath;@JsonKey(name: 'process_name') String? get processName; String? get status;@JsonKey(name: 'threat_id') String? get threatId;@JsonKey(name: 'threat_name') String? get threatName;// v2 fields
 String? get severity;@JsonKey(name: 'management_state') String? get managementState; List<String>? get tags;
/// Create a copy of Threat
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ThreatCopyWith<Threat> get copyWith => _$ThreatCopyWithImpl<Threat>(this as Threat, _$identity);

  /// Serializes this Threat to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Threat&&(identical(other.classification, classification) || other.classification == classification)&&(identical(other.dateOfDetection, dateOfDetection) || other.dateOfDetection == dateOfDetection)&&(identical(other.deviceId, deviceId) || other.deviceId == deviceId)&&(identical(other.deviceName, deviceName) || other.deviceName == deviceName)&&(identical(other.fileHash, fileHash) || other.fileHash == fileHash)&&(identical(other.fileName, fileName) || other.fileName == fileName)&&(identical(other.filePath, filePath) || other.filePath == filePath)&&(identical(other.processName, processName) || other.processName == processName)&&(identical(other.status, status) || other.status == status)&&(identical(other.threatId, threatId) || other.threatId == threatId)&&(identical(other.threatName, threatName) || other.threatName == threatName)&&(identical(other.severity, severity) || other.severity == severity)&&(identical(other.managementState, managementState) || other.managementState == managementState)&&const DeepCollectionEquality().equals(other.tags, tags));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,classification,dateOfDetection,deviceId,deviceName,fileHash,fileName,filePath,processName,status,threatId,threatName,severity,managementState,const DeepCollectionEquality().hash(tags));

@override
String toString() {
  return 'Threat(classification: $classification, dateOfDetection: $dateOfDetection, deviceId: $deviceId, deviceName: $deviceName, fileHash: $fileHash, fileName: $fileName, filePath: $filePath, processName: $processName, status: $status, threatId: $threatId, threatName: $threatName, severity: $severity, managementState: $managementState, tags: $tags)';
}


}

/// @nodoc
abstract mixin class $ThreatCopyWith<$Res>  {
  factory $ThreatCopyWith(Threat value, $Res Function(Threat) _then) = _$ThreatCopyWithImpl;
@useResult
$Res call({
 String? classification,@JsonKey(name: 'date_of_detection') String? dateOfDetection,@JsonKey(name: 'device_id') String? deviceId,@JsonKey(name: 'device_name') String? deviceName,@JsonKey(name: 'file_hash') String? fileHash,@JsonKey(name: 'file_name') String? fileName,@JsonKey(name: 'file_path') String? filePath,@JsonKey(name: 'process_name') String? processName, String? status,@JsonKey(name: 'threat_id') String? threatId,@JsonKey(name: 'threat_name') String? threatName, String? severity,@JsonKey(name: 'management_state') String? managementState, List<String>? tags
});




}
/// @nodoc
class _$ThreatCopyWithImpl<$Res>
    implements $ThreatCopyWith<$Res> {
  _$ThreatCopyWithImpl(this._self, this._then);

  final Threat _self;
  final $Res Function(Threat) _then;

/// Create a copy of Threat
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? classification = freezed,Object? dateOfDetection = freezed,Object? deviceId = freezed,Object? deviceName = freezed,Object? fileHash = freezed,Object? fileName = freezed,Object? filePath = freezed,Object? processName = freezed,Object? status = freezed,Object? threatId = freezed,Object? threatName = freezed,Object? severity = freezed,Object? managementState = freezed,Object? tags = freezed,}) {
  return _then(_self.copyWith(
classification: freezed == classification ? _self.classification : classification // ignore: cast_nullable_to_non_nullable
as String?,dateOfDetection: freezed == dateOfDetection ? _self.dateOfDetection : dateOfDetection // ignore: cast_nullable_to_non_nullable
as String?,deviceId: freezed == deviceId ? _self.deviceId : deviceId // ignore: cast_nullable_to_non_nullable
as String?,deviceName: freezed == deviceName ? _self.deviceName : deviceName // ignore: cast_nullable_to_non_nullable
as String?,fileHash: freezed == fileHash ? _self.fileHash : fileHash // ignore: cast_nullable_to_non_nullable
as String?,fileName: freezed == fileName ? _self.fileName : fileName // ignore: cast_nullable_to_non_nullable
as String?,filePath: freezed == filePath ? _self.filePath : filePath // ignore: cast_nullable_to_non_nullable
as String?,processName: freezed == processName ? _self.processName : processName // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,threatId: freezed == threatId ? _self.threatId : threatId // ignore: cast_nullable_to_non_nullable
as String?,threatName: freezed == threatName ? _self.threatName : threatName // ignore: cast_nullable_to_non_nullable
as String?,severity: freezed == severity ? _self.severity : severity // ignore: cast_nullable_to_non_nullable
as String?,managementState: freezed == managementState ? _self.managementState : managementState // ignore: cast_nullable_to_non_nullable
as String?,tags: freezed == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}

}


/// Adds pattern-matching-related methods to [Threat].
extension ThreatPatterns on Threat {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Threat value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Threat() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Threat value)  $default,){
final _that = this;
switch (_that) {
case _Threat():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Threat value)?  $default,){
final _that = this;
switch (_that) {
case _Threat() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? classification, @JsonKey(name: 'date_of_detection')  String? dateOfDetection, @JsonKey(name: 'device_id')  String? deviceId, @JsonKey(name: 'device_name')  String? deviceName, @JsonKey(name: 'file_hash')  String? fileHash, @JsonKey(name: 'file_name')  String? fileName, @JsonKey(name: 'file_path')  String? filePath, @JsonKey(name: 'process_name')  String? processName,  String? status, @JsonKey(name: 'threat_id')  String? threatId, @JsonKey(name: 'threat_name')  String? threatName,  String? severity, @JsonKey(name: 'management_state')  String? managementState,  List<String>? tags)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Threat() when $default != null:
return $default(_that.classification,_that.dateOfDetection,_that.deviceId,_that.deviceName,_that.fileHash,_that.fileName,_that.filePath,_that.processName,_that.status,_that.threatId,_that.threatName,_that.severity,_that.managementState,_that.tags);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? classification, @JsonKey(name: 'date_of_detection')  String? dateOfDetection, @JsonKey(name: 'device_id')  String? deviceId, @JsonKey(name: 'device_name')  String? deviceName, @JsonKey(name: 'file_hash')  String? fileHash, @JsonKey(name: 'file_name')  String? fileName, @JsonKey(name: 'file_path')  String? filePath, @JsonKey(name: 'process_name')  String? processName,  String? status, @JsonKey(name: 'threat_id')  String? threatId, @JsonKey(name: 'threat_name')  String? threatName,  String? severity, @JsonKey(name: 'management_state')  String? managementState,  List<String>? tags)  $default,) {final _that = this;
switch (_that) {
case _Threat():
return $default(_that.classification,_that.dateOfDetection,_that.deviceId,_that.deviceName,_that.fileHash,_that.fileName,_that.filePath,_that.processName,_that.status,_that.threatId,_that.threatName,_that.severity,_that.managementState,_that.tags);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? classification, @JsonKey(name: 'date_of_detection')  String? dateOfDetection, @JsonKey(name: 'device_id')  String? deviceId, @JsonKey(name: 'device_name')  String? deviceName, @JsonKey(name: 'file_hash')  String? fileHash, @JsonKey(name: 'file_name')  String? fileName, @JsonKey(name: 'file_path')  String? filePath, @JsonKey(name: 'process_name')  String? processName,  String? status, @JsonKey(name: 'threat_id')  String? threatId, @JsonKey(name: 'threat_name')  String? threatName,  String? severity, @JsonKey(name: 'management_state')  String? managementState,  List<String>? tags)?  $default,) {final _that = this;
switch (_that) {
case _Threat() when $default != null:
return $default(_that.classification,_that.dateOfDetection,_that.deviceId,_that.deviceName,_that.fileHash,_that.fileName,_that.filePath,_that.processName,_that.status,_that.threatId,_that.threatName,_that.severity,_that.managementState,_that.tags);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Threat implements Threat {
  const _Threat({this.classification, @JsonKey(name: 'date_of_detection') this.dateOfDetection, @JsonKey(name: 'device_id') this.deviceId, @JsonKey(name: 'device_name') this.deviceName, @JsonKey(name: 'file_hash') this.fileHash, @JsonKey(name: 'file_name') this.fileName, @JsonKey(name: 'file_path') this.filePath, @JsonKey(name: 'process_name') this.processName, this.status, @JsonKey(name: 'threat_id') this.threatId, @JsonKey(name: 'threat_name') this.threatName, this.severity, @JsonKey(name: 'management_state') this.managementState, final  List<String>? tags}): _tags = tags;
  factory _Threat.fromJson(Map<String, dynamic> json) => _$ThreatFromJson(json);

@override final  String? classification;
@override@JsonKey(name: 'date_of_detection') final  String? dateOfDetection;
@override@JsonKey(name: 'device_id') final  String? deviceId;
@override@JsonKey(name: 'device_name') final  String? deviceName;
@override@JsonKey(name: 'file_hash') final  String? fileHash;
@override@JsonKey(name: 'file_name') final  String? fileName;
@override@JsonKey(name: 'file_path') final  String? filePath;
@override@JsonKey(name: 'process_name') final  String? processName;
@override final  String? status;
@override@JsonKey(name: 'threat_id') final  String? threatId;
@override@JsonKey(name: 'threat_name') final  String? threatName;
// v2 fields
@override final  String? severity;
@override@JsonKey(name: 'management_state') final  String? managementState;
 final  List<String>? _tags;
@override List<String>? get tags {
  final value = _tags;
  if (value == null) return null;
  if (_tags is EqualUnmodifiableListView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of Threat
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ThreatCopyWith<_Threat> get copyWith => __$ThreatCopyWithImpl<_Threat>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ThreatToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Threat&&(identical(other.classification, classification) || other.classification == classification)&&(identical(other.dateOfDetection, dateOfDetection) || other.dateOfDetection == dateOfDetection)&&(identical(other.deviceId, deviceId) || other.deviceId == deviceId)&&(identical(other.deviceName, deviceName) || other.deviceName == deviceName)&&(identical(other.fileHash, fileHash) || other.fileHash == fileHash)&&(identical(other.fileName, fileName) || other.fileName == fileName)&&(identical(other.filePath, filePath) || other.filePath == filePath)&&(identical(other.processName, processName) || other.processName == processName)&&(identical(other.status, status) || other.status == status)&&(identical(other.threatId, threatId) || other.threatId == threatId)&&(identical(other.threatName, threatName) || other.threatName == threatName)&&(identical(other.severity, severity) || other.severity == severity)&&(identical(other.managementState, managementState) || other.managementState == managementState)&&const DeepCollectionEquality().equals(other._tags, _tags));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,classification,dateOfDetection,deviceId,deviceName,fileHash,fileName,filePath,processName,status,threatId,threatName,severity,managementState,const DeepCollectionEquality().hash(_tags));

@override
String toString() {
  return 'Threat(classification: $classification, dateOfDetection: $dateOfDetection, deviceId: $deviceId, deviceName: $deviceName, fileHash: $fileHash, fileName: $fileName, filePath: $filePath, processName: $processName, status: $status, threatId: $threatId, threatName: $threatName, severity: $severity, managementState: $managementState, tags: $tags)';
}


}

/// @nodoc
abstract mixin class _$ThreatCopyWith<$Res> implements $ThreatCopyWith<$Res> {
  factory _$ThreatCopyWith(_Threat value, $Res Function(_Threat) _then) = __$ThreatCopyWithImpl;
@override @useResult
$Res call({
 String? classification,@JsonKey(name: 'date_of_detection') String? dateOfDetection,@JsonKey(name: 'device_id') String? deviceId,@JsonKey(name: 'device_name') String? deviceName,@JsonKey(name: 'file_hash') String? fileHash,@JsonKey(name: 'file_name') String? fileName,@JsonKey(name: 'file_path') String? filePath,@JsonKey(name: 'process_name') String? processName, String? status,@JsonKey(name: 'threat_id') String? threatId,@JsonKey(name: 'threat_name') String? threatName, String? severity,@JsonKey(name: 'management_state') String? managementState, List<String>? tags
});




}
/// @nodoc
class __$ThreatCopyWithImpl<$Res>
    implements _$ThreatCopyWith<$Res> {
  __$ThreatCopyWithImpl(this._self, this._then);

  final _Threat _self;
  final $Res Function(_Threat) _then;

/// Create a copy of Threat
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? classification = freezed,Object? dateOfDetection = freezed,Object? deviceId = freezed,Object? deviceName = freezed,Object? fileHash = freezed,Object? fileName = freezed,Object? filePath = freezed,Object? processName = freezed,Object? status = freezed,Object? threatId = freezed,Object? threatName = freezed,Object? severity = freezed,Object? managementState = freezed,Object? tags = freezed,}) {
  return _then(_Threat(
classification: freezed == classification ? _self.classification : classification // ignore: cast_nullable_to_non_nullable
as String?,dateOfDetection: freezed == dateOfDetection ? _self.dateOfDetection : dateOfDetection // ignore: cast_nullable_to_non_nullable
as String?,deviceId: freezed == deviceId ? _self.deviceId : deviceId // ignore: cast_nullable_to_non_nullable
as String?,deviceName: freezed == deviceName ? _self.deviceName : deviceName // ignore: cast_nullable_to_non_nullable
as String?,fileHash: freezed == fileHash ? _self.fileHash : fileHash // ignore: cast_nullable_to_non_nullable
as String?,fileName: freezed == fileName ? _self.fileName : fileName // ignore: cast_nullable_to_non_nullable
as String?,filePath: freezed == filePath ? _self.filePath : filePath // ignore: cast_nullable_to_non_nullable
as String?,processName: freezed == processName ? _self.processName : processName // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,threatId: freezed == threatId ? _self.threatId : threatId // ignore: cast_nullable_to_non_nullable
as String?,threatName: freezed == threatName ? _self.threatName : threatName // ignore: cast_nullable_to_non_nullable
as String?,severity: freezed == severity ? _self.severity : severity // ignore: cast_nullable_to_non_nullable
as String?,managementState: freezed == managementState ? _self.managementState : managementState // ignore: cast_nullable_to_non_nullable
as String?,tags: freezed == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}


}

// dart format on
