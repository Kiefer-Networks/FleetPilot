// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'license_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LicenseInfo _$LicenseInfoFromJson(Map<String, dynamic> json) => _LicenseInfo(
  deviceLimit: (json['device_limit'] as num?)?.toInt(),
  deviceCount: (json['device_count'] as num?)?.toInt(),
  appleDeviceCount: (json['apple_device_count'] as num?)?.toInt(),
  windowsDeviceCount: (json['windows_device_count'] as num?)?.toInt(),
  androidDeviceCount: (json['android_device_count'] as num?)?.toInt(),
  licenseType: json['license_type'] as String?,
);

Map<String, dynamic> _$LicenseInfoToJson(_LicenseInfo instance) =>
    <String, dynamic>{
      'device_limit': instance.deviceLimit,
      'device_count': instance.deviceCount,
      'apple_device_count': instance.appleDeviceCount,
      'windows_device_count': instance.windowsDeviceCount,
      'android_device_count': instance.androidDeviceCount,
      'license_type': instance.licenseType,
    };
