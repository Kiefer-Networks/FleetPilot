import 'package:freezed_annotation/freezed_annotation.dart';

part 'device_secret.freezed.dart';

/// Aggregated device secrets from multiple Kandji endpoints.
@freezed
abstract class DeviceSecrets with _$DeviceSecrets {
  const factory DeviceSecrets({
    String? filevaultKey,
    String? unlockPin,
    String? recoveryPassword,
    String? bypassCode,
  }) = _DeviceSecrets;
}

/// A single secret entry for display.
@freezed
abstract class SecretEntry with _$SecretEntry {
  const factory SecretEntry({
    required String label,
    String? value,
    @Default(false) bool isError,
  }) = _SecretEntry;
}
