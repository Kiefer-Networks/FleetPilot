import 'package:freezed_annotation/freezed_annotation.dart';

part 'license_info.freezed.dart';
part 'license_info.g.dart';

@freezed
abstract class LicenseInfo with _$LicenseInfo {
  const factory LicenseInfo({
    @JsonKey(name: 'device_limit') int? deviceLimit,
    @JsonKey(name: 'device_count') int? deviceCount,
    @JsonKey(name: 'apple_device_count') int? appleDeviceCount,
    @JsonKey(name: 'windows_device_count') int? windowsDeviceCount,
    @JsonKey(name: 'android_device_count') int? androidDeviceCount,
    @JsonKey(name: 'license_type') String? licenseType,
  }) = _LicenseInfo;

  factory LicenseInfo.fromJson(Map<String, dynamic> json) =>
      _$LicenseInfoFromJson(json);
}
