import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core/constants/api_constants.dart';

part 'connection_profile.freezed.dart';
part 'connection_profile.g.dart';

/// Represents a saved MDM tenant connection profile.
///
/// The API token is NOT stored in this entity — it is kept exclusively
/// in platform-specific secure storage (Keychain / EncryptedSharedPreferences).
@freezed
abstract class ConnectionProfile with _$ConnectionProfile {
  const factory ConnectionProfile({
    required String id,
    required String displayName,
    required String subdomain,
    required ApiRegion region,
  }) = _ConnectionProfile;

  factory ConnectionProfile.fromJson(Map<String, dynamic> json) =>
      _$ConnectionProfileFromJson(json);
}
