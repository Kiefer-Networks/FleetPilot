// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'threat.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Threat _$ThreatFromJson(Map<String, dynamic> json) => _Threat(
  classification: json['classification'] as String?,
  dateOfDetection: json['date_of_detection'] as String?,
  deviceId: json['device_id'] as String?,
  deviceName: json['device_name'] as String?,
  fileHash: json['file_hash'] as String?,
  fileName: json['file_name'] as String?,
  filePath: json['file_path'] as String?,
  processName: json['process_name'] as String?,
  status: json['status'] as String?,
  threatId: json['threat_id'] as String?,
  threatName: json['threat_name'] as String?,
);

Map<String, dynamic> _$ThreatToJson(_Threat instance) => <String, dynamic>{
  'classification': instance.classification,
  'date_of_detection': instance.dateOfDetection,
  'device_id': instance.deviceId,
  'device_name': instance.deviceName,
  'file_hash': instance.fileHash,
  'file_name': instance.fileName,
  'file_path': instance.filePath,
  'process_name': instance.processName,
  'status': instance.status,
  'threat_id': instance.threatId,
  'threat_name': instance.threatName,
};
