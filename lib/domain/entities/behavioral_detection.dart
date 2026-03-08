import 'package:freezed_annotation/freezed_annotation.dart';

part 'behavioral_detection.freezed.dart';
part 'behavioral_detection.g.dart';

/// A behavioral detection event from Kandji v2.
@freezed
abstract class BehavioralDetection with _$BehavioralDetection {
  const factory BehavioralDetection({
    String? id,
    @JsonKey(name: 'device_id') String? deviceId,
    @JsonKey(name: 'device_name') String? deviceName,
    @JsonKey(name: 'serial_number') String? serialNumber,
    @JsonKey(name: 'threat_name') String? threatName,
    String? classification,
    String? status,
    String? severity,
    @JsonKey(name: 'detection_date') String? detectionDate,
    @JsonKey(name: 'file_path') String? filePath,
    @JsonKey(name: 'process_name') String? processName,
    @JsonKey(name: 'parent_process') String? parentProcess,
    // v2 fields
    @JsonKey(name: 'management_state') String? managementState,
    List<String>? tags,
  }) = _BehavioralDetection;

  factory BehavioralDetection.fromJson(Map<String, dynamic> json) =>
      _$BehavioralDetectionFromJson(json);
}
