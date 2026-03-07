// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DeviceGeneral _$DeviceGeneralFromJson(Map<String, dynamic> json) =>
    _DeviceGeneral(
      deviceId: json['device_id'] as String?,
      deviceName: json['device_name'] as String?,
      serialNumber: json['serial_number'] as String?,
      modelName: json['model_name'] as String?,
      platform: json['platform'] as String?,
      osVersion: json['os_version'] as String?,
      osBuild: json['os_build'] as String?,
      assetTag: json['asset_tag'] as String?,
      blueprintName: json['blueprint_name'] as String?,
      blueprintUuid: json['blueprint_uuid'] as String?,
      firstEnrollment: json['first_enrollment'] as String?,
      lastEnrollment: json['last_enrollment'] as String?,
      apiLevel: json['api_level'] as String?,
      securityPatchLevel: json['security_patch_level'] as String?,
      manufacturer: json['manufacturer'] as String?,
      enterpriseId: json['enterprise_id'] as String?,
    );

Map<String, dynamic> _$DeviceGeneralToJson(_DeviceGeneral instance) =>
    <String, dynamic>{
      'device_id': instance.deviceId,
      'device_name': instance.deviceName,
      'serial_number': instance.serialNumber,
      'model_name': instance.modelName,
      'platform': instance.platform,
      'os_version': instance.osVersion,
      'os_build': instance.osBuild,
      'asset_tag': instance.assetTag,
      'blueprint_name': instance.blueprintName,
      'blueprint_uuid': instance.blueprintUuid,
      'first_enrollment': instance.firstEnrollment,
      'last_enrollment': instance.lastEnrollment,
      'api_level': instance.apiLevel,
      'security_patch_level': instance.securityPatchLevel,
      'manufacturer': instance.manufacturer,
      'enterprise_id': instance.enterpriseId,
    };

_DeviceHardware _$DeviceHardwareFromJson(Map<String, dynamic> json) =>
    _DeviceHardware(
      totalCapacity: json['total_capacity'] as String?,
      availableCapacity: json['available_capacity'] as String?,
      totalRam: json['total_ram'] as String?,
      wifiMacAddress: json['wifi_mac_address'] as String?,
      modelName: json['model_name'] as String?,
      modelIdentifier: json['model_identifier'] as String?,
      processorType: json['processor_type'] as String?,
      chip: json['chip'] as String?,
      memory: json['memory'] as String?,
      serialNumber: json['serial_number'] as String?,
      hardwareUuid: json['hardware_uuid'] as String?,
      provisioningUdid: json['provisioning_udid'] as String?,
    );

Map<String, dynamic> _$DeviceHardwareToJson(_DeviceHardware instance) =>
    <String, dynamic>{
      'total_capacity': instance.totalCapacity,
      'available_capacity': instance.availableCapacity,
      'total_ram': instance.totalRam,
      'wifi_mac_address': instance.wifiMacAddress,
      'model_name': instance.modelName,
      'model_identifier': instance.modelIdentifier,
      'processor_type': instance.processorType,
      'chip': instance.chip,
      'memory': instance.memory,
      'serial_number': instance.serialNumber,
      'hardware_uuid': instance.hardwareUuid,
      'provisioning_udid': instance.provisioningUdid,
    };

_DeviceSecurity _$DeviceSecurityFromJson(Map<String, dynamic> json) =>
    _DeviceSecurity(
      encryptionStatus: json['encryption_status'] as String?,
      devicePosture: json['device_posture'] as String?,
      hasPasscode: (json['has_passcode'] as num?)?.toInt(),
      isEncrypted: (json['is_encrypted'] as num?)?.toInt(),
      hasGooglePlayProtect: (json['has_google_play_protect'] as num?)?.toInt(),
      developerModeEnabled: json['developer_mode_enabled'],
      androidDebugBridgeEnabled: json['android_debug_bridge_enabled'],
      unknownAppSourcesEnabled: json['unknown_app_sources_enabled'],
      activationLockEnabled: json['activation_lock_enabled'],
    );

Map<String, dynamic> _$DeviceSecurityToJson(_DeviceSecurity instance) =>
    <String, dynamic>{
      'encryption_status': instance.encryptionStatus,
      'device_posture': instance.devicePosture,
      'has_passcode': instance.hasPasscode,
      'is_encrypted': instance.isEncrypted,
      'has_google_play_protect': instance.hasGooglePlayProtect,
      'developer_mode_enabled': instance.developerModeEnabled,
      'android_debug_bridge_enabled': instance.androidDebugBridgeEnabled,
      'unknown_app_sources_enabled': instance.unknownAppSourcesEnabled,
      'activation_lock_enabled': instance.activationLockEnabled,
    };

_DeviceCellular _$DeviceCellularFromJson(Map<String, dynamic> json) =>
    _DeviceCellular(
      imei: json['imei'] as String?,
      meid: json['meid'] as String?,
    );

Map<String, dynamic> _$DeviceCellularToJson(_DeviceCellular instance) =>
    <String, dynamic>{'imei': instance.imei, 'meid': instance.meid};

_DeviceLostMode _$DeviceLostModeFromJson(Map<String, dynamic> json) =>
    _DeviceLostMode(
      lostModeStatus: json['lost_mode_status'] as String?,
      enabledBy: json['enabled_by'] as String?,
      enableStatusAt: json['enable_status_at'] as String?,
      lockScreenMessage: json['lock_screen_message'] as String?,
      lockScreenPhoneNumber: json['lock_screen_phone_number'] as String?,
      lastLocation: json['last_location'] as Map<String, dynamic>?,
      lastLocationAt: json['last_location_at'] as String?,
    );

Map<String, dynamic> _$DeviceLostModeToJson(_DeviceLostMode instance) =>
    <String, dynamic>{
      'lost_mode_status': instance.lostModeStatus,
      'enabled_by': instance.enabledBy,
      'enable_status_at': instance.enableStatusAt,
      'lock_screen_message': instance.lockScreenMessage,
      'lock_screen_phone_number': instance.lockScreenPhoneNumber,
      'last_location': instance.lastLocation,
      'last_location_at': instance.lastLocationAt,
    };
