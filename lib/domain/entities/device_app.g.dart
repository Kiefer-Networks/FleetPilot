// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_app.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DeviceApp _$DeviceAppFromJson(Map<String, dynamic> json) => _DeviceApp(
  displayName: json['display_name'] as String?,
  packageName: json['package_name'] as String?,
  versionName: json['version_name'] as String?,
  applicationSource: json['application_source'] as String?,
  installerPackageName: json['installer_package_name'] as String?,
  appName: json['app_name'] as String?,
  bundleName: json['bundle_name'] as String?,
  bundleId: json['bundle_id'] as String?,
  name: json['name'] as String?,
  version: json['version'] as String?,
  shortVersion: json['short_version'] as String?,
  path: json['path'] as String?,
  developerName: json['developer_name'] as String?,
);

Map<String, dynamic> _$DeviceAppToJson(_DeviceApp instance) =>
    <String, dynamic>{
      'display_name': instance.displayName,
      'package_name': instance.packageName,
      'version_name': instance.versionName,
      'application_source': instance.applicationSource,
      'installer_package_name': instance.installerPackageName,
      'app_name': instance.appName,
      'bundle_name': instance.bundleName,
      'bundle_id': instance.bundleId,
      'name': instance.name,
      'version': instance.version,
      'short_version': instance.shortVersion,
      'path': instance.path,
      'developer_name': instance.developerName,
    };
