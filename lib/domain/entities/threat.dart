import 'package:freezed_annotation/freezed_annotation.dart';

part 'threat.freezed.dart';
part 'threat.g.dart';

/// A threat detection from the Kandji v2 threat-details endpoint.
@freezed
abstract class Threat with _$Threat {
  const factory Threat({
    String? classification,
    @JsonKey(name: 'date_of_detection') String? dateOfDetection,
    @JsonKey(name: 'device_id') String? deviceId,
    @JsonKey(name: 'device_name') String? deviceName,
    @JsonKey(name: 'file_hash') String? fileHash,
    @JsonKey(name: 'file_name') String? fileName,
    @JsonKey(name: 'file_path') String? filePath,
    @JsonKey(name: 'process_name') String? processName,
    String? status,
    @JsonKey(name: 'threat_id') String? threatId,
    @JsonKey(name: 'threat_name') String? threatName,
    // v2 fields
    String? severity,
    @JsonKey(name: 'management_state') String? managementState,
    List<String>? tags,
  }) = _Threat;

  factory Threat.fromJson(Map<String, dynamic> json) => _$ThreatFromJson(json);
}
