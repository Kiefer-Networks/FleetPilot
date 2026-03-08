// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'behavioral_detection.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BehavioralDetection _$BehavioralDetectionFromJson(Map<String, dynamic> json) =>
    _BehavioralDetection(
      id: json['id'] as String?,
      deviceId: json['device_id'] as String?,
      deviceName: json['device_name'] as String?,
      serialNumber: json['serial_number'] as String?,
      threatName: json['threat_name'] as String?,
      classification: json['classification'] as String?,
      status: json['status'] as String?,
      severity: json['severity'] as String?,
      detectionDate: json['detection_date'] as String?,
      filePath: json['file_path'] as String?,
      processName: json['process_name'] as String?,
      parentProcess: json['parent_process'] as String?,
      managementState: json['management_state'] as String?,
      tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$BehavioralDetectionToJson(
  _BehavioralDetection instance,
) => <String, dynamic>{
  'id': instance.id,
  'device_id': instance.deviceId,
  'device_name': instance.deviceName,
  'serial_number': instance.serialNumber,
  'threat_name': instance.threatName,
  'classification': instance.classification,
  'status': instance.status,
  'severity': instance.severity,
  'detection_date': instance.detectionDate,
  'file_path': instance.filePath,
  'process_name': instance.processName,
  'parent_process': instance.parentProcess,
  'management_state': instance.managementState,
  'tags': instance.tags,
};
