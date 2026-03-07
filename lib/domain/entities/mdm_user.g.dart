// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mdm_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MdmUser _$MdmUserFromJson(Map<String, dynamic> json) => _MdmUser(
  id: json['id'] as String,
  name: json['name'] as String?,
  email: json['email'] as String?,
  jobTitle: json['job_title'] as String?,
  department: json['department'] as String?,
  deviceCount: (json['device_count'] as num?)?.toInt() ?? 0,
  archived: json['archived'] as bool? ?? false,
  createdAt: json['created_at'] as String?,
  updatedAt: json['updated_at'] as String?,
);

Map<String, dynamic> _$MdmUserToJson(_MdmUser instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'email': instance.email,
  'job_title': instance.jobTitle,
  'department': instance.department,
  'device_count': instance.deviceCount,
  'archived': instance.archived,
  'created_at': instance.createdAt,
  'updated_at': instance.updatedAt,
};
