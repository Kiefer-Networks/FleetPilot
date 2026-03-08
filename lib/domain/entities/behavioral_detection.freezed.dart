// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'behavioral_detection.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BehavioralDetection {

 String? get id;@JsonKey(name: 'device_id') String? get deviceId;@JsonKey(name: 'device_name') String? get deviceName;@JsonKey(name: 'serial_number') String? get serialNumber;@JsonKey(name: 'threat_name') String? get threatName; String? get classification; String? get status; String? get severity;@JsonKey(name: 'detection_date') String? get detectionDate;@JsonKey(name: 'file_path') String? get filePath;@JsonKey(name: 'process_name') String? get processName;@JsonKey(name: 'parent_process') String? get parentProcess;// v2 fields
@JsonKey(name: 'management_state') String? get managementState; List<String>? get tags;
/// Create a copy of BehavioralDetection
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BehavioralDetectionCopyWith<BehavioralDetection> get copyWith => _$BehavioralDetectionCopyWithImpl<BehavioralDetection>(this as BehavioralDetection, _$identity);

  /// Serializes this BehavioralDetection to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BehavioralDetection&&(identical(other.id, id) || other.id == id)&&(identical(other.deviceId, deviceId) || other.deviceId == deviceId)&&(identical(other.deviceName, deviceName) || other.deviceName == deviceName)&&(identical(other.serialNumber, serialNumber) || other.serialNumber == serialNumber)&&(identical(other.threatName, threatName) || other.threatName == threatName)&&(identical(other.classification, classification) || other.classification == classification)&&(identical(other.status, status) || other.status == status)&&(identical(other.severity, severity) || other.severity == severity)&&(identical(other.detectionDate, detectionDate) || other.detectionDate == detectionDate)&&(identical(other.filePath, filePath) || other.filePath == filePath)&&(identical(other.processName, processName) || other.processName == processName)&&(identical(other.parentProcess, parentProcess) || other.parentProcess == parentProcess)&&(identical(other.managementState, managementState) || other.managementState == managementState)&&const DeepCollectionEquality().equals(other.tags, tags));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,deviceId,deviceName,serialNumber,threatName,classification,status,severity,detectionDate,filePath,processName,parentProcess,managementState,const DeepCollectionEquality().hash(tags));

@override
String toString() {
  return 'BehavioralDetection(id: $id, deviceId: $deviceId, deviceName: $deviceName, serialNumber: $serialNumber, threatName: $threatName, classification: $classification, status: $status, severity: $severity, detectionDate: $detectionDate, filePath: $filePath, processName: $processName, parentProcess: $parentProcess, managementState: $managementState, tags: $tags)';
}


}

/// @nodoc
abstract mixin class $BehavioralDetectionCopyWith<$Res>  {
  factory $BehavioralDetectionCopyWith(BehavioralDetection value, $Res Function(BehavioralDetection) _then) = _$BehavioralDetectionCopyWithImpl;
@useResult
$Res call({
 String? id,@JsonKey(name: 'device_id') String? deviceId,@JsonKey(name: 'device_name') String? deviceName,@JsonKey(name: 'serial_number') String? serialNumber,@JsonKey(name: 'threat_name') String? threatName, String? classification, String? status, String? severity,@JsonKey(name: 'detection_date') String? detectionDate,@JsonKey(name: 'file_path') String? filePath,@JsonKey(name: 'process_name') String? processName,@JsonKey(name: 'parent_process') String? parentProcess,@JsonKey(name: 'management_state') String? managementState, List<String>? tags
});




}
/// @nodoc
class _$BehavioralDetectionCopyWithImpl<$Res>
    implements $BehavioralDetectionCopyWith<$Res> {
  _$BehavioralDetectionCopyWithImpl(this._self, this._then);

  final BehavioralDetection _self;
  final $Res Function(BehavioralDetection) _then;

/// Create a copy of BehavioralDetection
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? deviceId = freezed,Object? deviceName = freezed,Object? serialNumber = freezed,Object? threatName = freezed,Object? classification = freezed,Object? status = freezed,Object? severity = freezed,Object? detectionDate = freezed,Object? filePath = freezed,Object? processName = freezed,Object? parentProcess = freezed,Object? managementState = freezed,Object? tags = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,deviceId: freezed == deviceId ? _self.deviceId : deviceId // ignore: cast_nullable_to_non_nullable
as String?,deviceName: freezed == deviceName ? _self.deviceName : deviceName // ignore: cast_nullable_to_non_nullable
as String?,serialNumber: freezed == serialNumber ? _self.serialNumber : serialNumber // ignore: cast_nullable_to_non_nullable
as String?,threatName: freezed == threatName ? _self.threatName : threatName // ignore: cast_nullable_to_non_nullable
as String?,classification: freezed == classification ? _self.classification : classification // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,severity: freezed == severity ? _self.severity : severity // ignore: cast_nullable_to_non_nullable
as String?,detectionDate: freezed == detectionDate ? _self.detectionDate : detectionDate // ignore: cast_nullable_to_non_nullable
as String?,filePath: freezed == filePath ? _self.filePath : filePath // ignore: cast_nullable_to_non_nullable
as String?,processName: freezed == processName ? _self.processName : processName // ignore: cast_nullable_to_non_nullable
as String?,parentProcess: freezed == parentProcess ? _self.parentProcess : parentProcess // ignore: cast_nullable_to_non_nullable
as String?,managementState: freezed == managementState ? _self.managementState : managementState // ignore: cast_nullable_to_non_nullable
as String?,tags: freezed == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}

}


/// Adds pattern-matching-related methods to [BehavioralDetection].
extension BehavioralDetectionPatterns on BehavioralDetection {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BehavioralDetection value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BehavioralDetection() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BehavioralDetection value)  $default,){
final _that = this;
switch (_that) {
case _BehavioralDetection():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BehavioralDetection value)?  $default,){
final _that = this;
switch (_that) {
case _BehavioralDetection() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id, @JsonKey(name: 'device_id')  String? deviceId, @JsonKey(name: 'device_name')  String? deviceName, @JsonKey(name: 'serial_number')  String? serialNumber, @JsonKey(name: 'threat_name')  String? threatName,  String? classification,  String? status,  String? severity, @JsonKey(name: 'detection_date')  String? detectionDate, @JsonKey(name: 'file_path')  String? filePath, @JsonKey(name: 'process_name')  String? processName, @JsonKey(name: 'parent_process')  String? parentProcess, @JsonKey(name: 'management_state')  String? managementState,  List<String>? tags)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BehavioralDetection() when $default != null:
return $default(_that.id,_that.deviceId,_that.deviceName,_that.serialNumber,_that.threatName,_that.classification,_that.status,_that.severity,_that.detectionDate,_that.filePath,_that.processName,_that.parentProcess,_that.managementState,_that.tags);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id, @JsonKey(name: 'device_id')  String? deviceId, @JsonKey(name: 'device_name')  String? deviceName, @JsonKey(name: 'serial_number')  String? serialNumber, @JsonKey(name: 'threat_name')  String? threatName,  String? classification,  String? status,  String? severity, @JsonKey(name: 'detection_date')  String? detectionDate, @JsonKey(name: 'file_path')  String? filePath, @JsonKey(name: 'process_name')  String? processName, @JsonKey(name: 'parent_process')  String? parentProcess, @JsonKey(name: 'management_state')  String? managementState,  List<String>? tags)  $default,) {final _that = this;
switch (_that) {
case _BehavioralDetection():
return $default(_that.id,_that.deviceId,_that.deviceName,_that.serialNumber,_that.threatName,_that.classification,_that.status,_that.severity,_that.detectionDate,_that.filePath,_that.processName,_that.parentProcess,_that.managementState,_that.tags);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id, @JsonKey(name: 'device_id')  String? deviceId, @JsonKey(name: 'device_name')  String? deviceName, @JsonKey(name: 'serial_number')  String? serialNumber, @JsonKey(name: 'threat_name')  String? threatName,  String? classification,  String? status,  String? severity, @JsonKey(name: 'detection_date')  String? detectionDate, @JsonKey(name: 'file_path')  String? filePath, @JsonKey(name: 'process_name')  String? processName, @JsonKey(name: 'parent_process')  String? parentProcess, @JsonKey(name: 'management_state')  String? managementState,  List<String>? tags)?  $default,) {final _that = this;
switch (_that) {
case _BehavioralDetection() when $default != null:
return $default(_that.id,_that.deviceId,_that.deviceName,_that.serialNumber,_that.threatName,_that.classification,_that.status,_that.severity,_that.detectionDate,_that.filePath,_that.processName,_that.parentProcess,_that.managementState,_that.tags);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BehavioralDetection implements BehavioralDetection {
  const _BehavioralDetection({this.id, @JsonKey(name: 'device_id') this.deviceId, @JsonKey(name: 'device_name') this.deviceName, @JsonKey(name: 'serial_number') this.serialNumber, @JsonKey(name: 'threat_name') this.threatName, this.classification, this.status, this.severity, @JsonKey(name: 'detection_date') this.detectionDate, @JsonKey(name: 'file_path') this.filePath, @JsonKey(name: 'process_name') this.processName, @JsonKey(name: 'parent_process') this.parentProcess, @JsonKey(name: 'management_state') this.managementState, final  List<String>? tags}): _tags = tags;
  factory _BehavioralDetection.fromJson(Map<String, dynamic> json) => _$BehavioralDetectionFromJson(json);

@override final  String? id;
@override@JsonKey(name: 'device_id') final  String? deviceId;
@override@JsonKey(name: 'device_name') final  String? deviceName;
@override@JsonKey(name: 'serial_number') final  String? serialNumber;
@override@JsonKey(name: 'threat_name') final  String? threatName;
@override final  String? classification;
@override final  String? status;
@override final  String? severity;
@override@JsonKey(name: 'detection_date') final  String? detectionDate;
@override@JsonKey(name: 'file_path') final  String? filePath;
@override@JsonKey(name: 'process_name') final  String? processName;
@override@JsonKey(name: 'parent_process') final  String? parentProcess;
// v2 fields
@override@JsonKey(name: 'management_state') final  String? managementState;
 final  List<String>? _tags;
@override List<String>? get tags {
  final value = _tags;
  if (value == null) return null;
  if (_tags is EqualUnmodifiableListView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of BehavioralDetection
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BehavioralDetectionCopyWith<_BehavioralDetection> get copyWith => __$BehavioralDetectionCopyWithImpl<_BehavioralDetection>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BehavioralDetectionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BehavioralDetection&&(identical(other.id, id) || other.id == id)&&(identical(other.deviceId, deviceId) || other.deviceId == deviceId)&&(identical(other.deviceName, deviceName) || other.deviceName == deviceName)&&(identical(other.serialNumber, serialNumber) || other.serialNumber == serialNumber)&&(identical(other.threatName, threatName) || other.threatName == threatName)&&(identical(other.classification, classification) || other.classification == classification)&&(identical(other.status, status) || other.status == status)&&(identical(other.severity, severity) || other.severity == severity)&&(identical(other.detectionDate, detectionDate) || other.detectionDate == detectionDate)&&(identical(other.filePath, filePath) || other.filePath == filePath)&&(identical(other.processName, processName) || other.processName == processName)&&(identical(other.parentProcess, parentProcess) || other.parentProcess == parentProcess)&&(identical(other.managementState, managementState) || other.managementState == managementState)&&const DeepCollectionEquality().equals(other._tags, _tags));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,deviceId,deviceName,serialNumber,threatName,classification,status,severity,detectionDate,filePath,processName,parentProcess,managementState,const DeepCollectionEquality().hash(_tags));

@override
String toString() {
  return 'BehavioralDetection(id: $id, deviceId: $deviceId, deviceName: $deviceName, serialNumber: $serialNumber, threatName: $threatName, classification: $classification, status: $status, severity: $severity, detectionDate: $detectionDate, filePath: $filePath, processName: $processName, parentProcess: $parentProcess, managementState: $managementState, tags: $tags)';
}


}

/// @nodoc
abstract mixin class _$BehavioralDetectionCopyWith<$Res> implements $BehavioralDetectionCopyWith<$Res> {
  factory _$BehavioralDetectionCopyWith(_BehavioralDetection value, $Res Function(_BehavioralDetection) _then) = __$BehavioralDetectionCopyWithImpl;
@override @useResult
$Res call({
 String? id,@JsonKey(name: 'device_id') String? deviceId,@JsonKey(name: 'device_name') String? deviceName,@JsonKey(name: 'serial_number') String? serialNumber,@JsonKey(name: 'threat_name') String? threatName, String? classification, String? status, String? severity,@JsonKey(name: 'detection_date') String? detectionDate,@JsonKey(name: 'file_path') String? filePath,@JsonKey(name: 'process_name') String? processName,@JsonKey(name: 'parent_process') String? parentProcess,@JsonKey(name: 'management_state') String? managementState, List<String>? tags
});




}
/// @nodoc
class __$BehavioralDetectionCopyWithImpl<$Res>
    implements _$BehavioralDetectionCopyWith<$Res> {
  __$BehavioralDetectionCopyWithImpl(this._self, this._then);

  final _BehavioralDetection _self;
  final $Res Function(_BehavioralDetection) _then;

/// Create a copy of BehavioralDetection
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? deviceId = freezed,Object? deviceName = freezed,Object? serialNumber = freezed,Object? threatName = freezed,Object? classification = freezed,Object? status = freezed,Object? severity = freezed,Object? detectionDate = freezed,Object? filePath = freezed,Object? processName = freezed,Object? parentProcess = freezed,Object? managementState = freezed,Object? tags = freezed,}) {
  return _then(_BehavioralDetection(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,deviceId: freezed == deviceId ? _self.deviceId : deviceId // ignore: cast_nullable_to_non_nullable
as String?,deviceName: freezed == deviceName ? _self.deviceName : deviceName // ignore: cast_nullable_to_non_nullable
as String?,serialNumber: freezed == serialNumber ? _self.serialNumber : serialNumber // ignore: cast_nullable_to_non_nullable
as String?,threatName: freezed == threatName ? _self.threatName : threatName // ignore: cast_nullable_to_non_nullable
as String?,classification: freezed == classification ? _self.classification : classification // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,severity: freezed == severity ? _self.severity : severity // ignore: cast_nullable_to_non_nullable
as String?,detectionDate: freezed == detectionDate ? _self.detectionDate : detectionDate // ignore: cast_nullable_to_non_nullable
as String?,filePath: freezed == filePath ? _self.filePath : filePath // ignore: cast_nullable_to_non_nullable
as String?,processName: freezed == processName ? _self.processName : processName // ignore: cast_nullable_to_non_nullable
as String?,parentProcess: freezed == parentProcess ? _self.parentProcess : parentProcess // ignore: cast_nullable_to_non_nullable
as String?,managementState: freezed == managementState ? _self.managementState : managementState // ignore: cast_nullable_to_non_nullable
as String?,tags: freezed == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}


}

// dart format on
