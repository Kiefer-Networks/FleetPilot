import 'package:freezed_annotation/freezed_annotation.dart';

part 'device_details.freezed.dart';
part 'device_details.g.dart';

/// Extended device details from /devices/{id}/details endpoint.
@freezed
abstract class DeviceDetails with _$DeviceDetails {
  const DeviceDetails._();

  const factory DeviceDetails({
    DeviceGeneral? general,
    DeviceHardware? hardware,
    DeviceSecurity? security,
    DeviceCellular? cellular,
    DeviceLostMode? lostMode,
  }) = _DeviceDetails;

  /// Custom fromJson that normalizes Kandji's platform-specific response:
  /// - Apple returns `hardware_overview` instead of `hardware`
  /// - Apple returns `activation_lock`, `filevault` etc. for security info
  /// Custom fromJson that normalizes Kandji's platform-specific keys.
  factory DeviceDetails.fromJson(Map<String, dynamic> json) {
    // Apple: hardware_overview → hardware
    final hwJson = json['hardware'] ?? json['hardware_overview'];

    // Apple: build security from filevault/activation_lock if no security key
    Map<String, dynamic>? secJson;
    if (json['security'] is Map<String, dynamic>) {
      secJson = json['security'] as Map<String, dynamic>;
    } else {
      final secMap = <String, dynamic>{};
      final filevault = json['filevault'];
      if (filevault is Map<String, dynamic>) {
        if (filevault.containsKey('filevault_enabled')) {
          secMap['is_encrypted'] = filevault['filevault_enabled'] == true
              ? 1
              : 0;
          secMap['encryption_status'] = filevault['filevault_enabled'] == true
              ? 'FileVault Enabled'
              : 'Not Encrypted';
        }
      }
      final activationLock = json['activation_lock'];
      if (activationLock is Map<String, dynamic>) {
        secMap['activation_lock_enabled'] =
            activationLock['activation_lock_enabled'];
      }
      if (secMap.isNotEmpty) secJson = secMap;
    }

    return DeviceDetails(
      general: json['general'] is Map<String, dynamic>
          ? DeviceGeneral.fromJson(json['general'] as Map<String, dynamic>)
          : null,
      hardware: hwJson is Map<String, dynamic>
          ? DeviceHardware.fromJson(hwJson)
          : null,
      security: secJson != null ? DeviceSecurity.fromJson(secJson) : null,
      cellular: json['cellular'] is Map<String, dynamic>
          ? DeviceCellular.fromJson(json['cellular'] as Map<String, dynamic>)
          : null,
      lostMode: json['lost_mode'] is Map<String, dynamic>
          ? DeviceLostMode.fromJson(json['lost_mode'] as Map<String, dynamic>)
          : null,
    );
  }
}

@freezed
abstract class DeviceGeneral with _$DeviceGeneral {
  const factory DeviceGeneral({
    @JsonKey(name: 'device_id') String? deviceId,
    @JsonKey(name: 'device_name') String? deviceName,
    @JsonKey(name: 'serial_number') String? serialNumber,
    @JsonKey(name: 'model_name') String? modelName,
    String? platform,
    @JsonKey(name: 'os_version') String? osVersion,
    @JsonKey(name: 'os_build') String? osBuild,
    @JsonKey(name: 'asset_tag') String? assetTag,
    @JsonKey(name: 'blueprint_name') String? blueprintName,
    @JsonKey(name: 'blueprint_uuid') String? blueprintUuid,
    @JsonKey(name: 'first_enrollment') String? firstEnrollment,
    @JsonKey(name: 'last_enrollment') String? lastEnrollment,
    @JsonKey(name: 'api_level') String? apiLevel,
    @JsonKey(name: 'security_patch_level') String? securityPatchLevel,
    String? manufacturer,
    @JsonKey(name: 'enterprise_id') String? enterpriseId,
  }) = _DeviceGeneral;

  factory DeviceGeneral.fromJson(Map<String, dynamic> json) =>
      _$DeviceGeneralFromJson(json);
}

@freezed
abstract class DeviceHardware with _$DeviceHardware {
  const DeviceHardware._();

  const factory DeviceHardware({
    // Android fields
    @JsonKey(name: 'total_capacity') String? totalCapacity,
    @JsonKey(name: 'available_capacity') String? availableCapacity,
    @JsonKey(name: 'total_ram') String? totalRam,
    @JsonKey(name: 'wifi_mac_address') String? wifiMacAddress,
    // Apple hardware_overview fields
    @JsonKey(name: 'model_name') String? modelName,
    @JsonKey(name: 'model_identifier') String? modelIdentifier,
    @JsonKey(name: 'processor_type') String? processorType,
    String? chip,
    String? memory,
    @JsonKey(name: 'serial_number') String? serialNumber,
    @JsonKey(name: 'hardware_uuid') String? hardwareUuid,
    @JsonKey(name: 'provisioning_udid') String? provisioningUdid,
  }) = _DeviceHardware;

  factory DeviceHardware.fromJson(Map<String, dynamic> json) =>
      _$DeviceHardwareFromJson(json);

  /// Resolved RAM — checks both Android (total_ram) and Apple (memory) fields.
  String? get resolvedRam => totalRam ?? memory;

  /// Resolved processor.
  String? get resolvedProcessor => processorType ?? chip;
}

@freezed
abstract class DeviceSecurity with _$DeviceSecurity {
  const factory DeviceSecurity({
    @JsonKey(name: 'encryption_status') String? encryptionStatus,
    @JsonKey(name: 'device_posture') String? devicePosture,
    @JsonKey(name: 'has_passcode') int? hasPasscode,
    @JsonKey(name: 'is_encrypted') int? isEncrypted,
    @JsonKey(name: 'has_google_play_protect') int? hasGooglePlayProtect,
    @JsonKey(name: 'developer_mode_enabled') dynamic developerModeEnabled,
    @JsonKey(name: 'android_debug_bridge_enabled')
    dynamic androidDebugBridgeEnabled,
    @JsonKey(name: 'unknown_app_sources_enabled')
    dynamic unknownAppSourcesEnabled,
    @JsonKey(name: 'activation_lock_enabled') dynamic activationLockEnabled,
  }) = _DeviceSecurity;

  factory DeviceSecurity.fromJson(Map<String, dynamic> json) =>
      _$DeviceSecurityFromJson(json);
}

@freezed
abstract class DeviceCellular with _$DeviceCellular {
  const factory DeviceCellular({String? imei, String? meid}) = _DeviceCellular;

  factory DeviceCellular.fromJson(Map<String, dynamic> json) =>
      _$DeviceCellularFromJson(json);
}

@freezed
abstract class DeviceLostMode with _$DeviceLostMode {
  const DeviceLostMode._();

  const factory DeviceLostMode({
    @JsonKey(name: 'lost_mode_status') String? lostModeStatus,
    @JsonKey(name: 'enabled_by') String? enabledBy,
    @JsonKey(name: 'enable_status_at') String? enableStatusAt,
    @JsonKey(name: 'lock_screen_message') String? lockScreenMessage,
    @JsonKey(name: 'lock_screen_phone_number') String? lockScreenPhoneNumber,
    @JsonKey(name: 'last_location') Map<String, dynamic>? lastLocation,
    @JsonKey(name: 'last_location_at') String? lastLocationAt,
  }) = _DeviceLostMode;

  factory DeviceLostMode.fromJson(Map<String, dynamic> json) =>
      _$DeviceLostModeFromJson(json);

  bool get isEnabled => lostModeStatus?.toUpperCase() == 'ENABLED';

  double? get latitude {
    final v = lastLocation?['latitude'];
    if (v is num) return v.toDouble();
    if (v is String) return double.tryParse(v);
    return null;
  }

  double? get longitude {
    final v = lastLocation?['longitude'];
    if (v is num) return v.toDouble();
    if (v is String) return double.tryParse(v);
    return null;
  }
}
