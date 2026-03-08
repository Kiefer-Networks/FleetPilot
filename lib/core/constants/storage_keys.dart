/// Keys for secure and persistent storage.
abstract final class StorageKeys {
  /// Prefix for profile-scoped API token storage.
  static const String apiTokenPrefix = 'fleetpilot_token_';

  /// Key for the list of profile IDs.
  static const String profileIds = 'fleetpilot_profile_ids';

  /// Key for the active profile ID.
  static const String activeProfileId = 'fleetpilot_active_profile';

  /// Key for profile metadata (JSON).
  static const String profileMetaPrefix = 'fleetpilot_meta_';

  /// Constructs the token storage key for a specific profile.
  static String tokenKey(String profileId) => '$apiTokenPrefix$profileId';

  /// Constructs the metadata storage key for a specific profile.
  static String metaKey(String profileId) => '$profileMetaPrefix$profileId';

  /// Key for the user's preferred locale.
  static const String locale = 'fleetpilot_locale';

  /// Key for the hashed app PIN (SHA-256).
  static const String pinHash = 'fleetpilot_pin_hash';

  /// Key for biometric authentication enabled flag.
  static const String biometricEnabled = 'fleetpilot_biometric_enabled';

  /// Key for session lock timeout in seconds.
  static const String lockTimeoutSeconds = 'fleetpilot_lock_timeout';

  /// Key for the timestamp when the app was last backgrounded (epoch ms).
  static const String lastBackgroundedAt = 'fleetpilot_last_backgrounded';
}
