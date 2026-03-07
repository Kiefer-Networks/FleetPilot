import 'package:freezed_annotation/freezed_annotation.dart';

part 'device_app.freezed.dart';
part 'device_app.g.dart';

/// An application installed on a managed device.
/// Handles both Android (display_name/package_name) and
/// Apple (bundle_name/bundle_id) field naming.
@freezed
abstract class DeviceApp with _$DeviceApp {
  const DeviceApp._();

  const factory DeviceApp({
    // Android fields
    @JsonKey(name: 'display_name') String? displayName,
    @JsonKey(name: 'package_name') String? packageName,
    @JsonKey(name: 'version_name') String? versionName,
    @JsonKey(name: 'application_source') String? applicationSource,
    @JsonKey(name: 'installer_package_name') String? installerPackageName,
    // Apple fields
    @JsonKey(name: 'app_name') String? appName,
    @JsonKey(name: 'bundle_name') String? bundleName,
    @JsonKey(name: 'bundle_id') String? bundleId,
    String? name,
    String? version,
    @JsonKey(name: 'short_version') String? shortVersion,
    String? path,
    @JsonKey(name: 'developer_name') String? developerName,
  }) = _DeviceApp;

  factory DeviceApp.fromJson(Map<String, dynamic> json) =>
      _$DeviceAppFromJson(json);

  /// Resolved app name across platforms.
  String get resolvedName =>
      displayName ??
      appName ??
      bundleName ??
      name ??
      packageName ??
      bundleId ??
      'Unknown';

  /// Resolved version across platforms.
  String? get resolvedVersion => versionName ?? shortVersion ?? version;

  /// Resolved identifier across platforms.
  String? get resolvedId => packageName ?? bundleId;
}
