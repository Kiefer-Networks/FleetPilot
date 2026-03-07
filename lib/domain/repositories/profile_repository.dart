import '../entities/connection_profile.dart';

/// Abstract interface for managing connection profiles.
///
/// Implementations handle secure storage of API tokens (Keychain/Keystore)
/// and plaintext metadata separately.
abstract interface class ProfileRepository {
  /// Returns all saved connection profiles (without tokens).
  Future<List<ConnectionProfile>> getProfiles();

  /// Returns a single profile by [id], or `null` if not found.
  Future<ConnectionProfile?> getProfile(String id);

  /// Saves a new profile. The [token] is stored in secure storage separately.
  Future<void> saveProfile(ConnectionProfile profile, String token);

  /// Updates an existing profile's metadata. Optionally updates the [token].
  Future<void> updateProfile(ConnectionProfile profile, {String? token});

  /// Deletes a profile and its associated token from secure storage.
  Future<void> deleteProfile(String id);

  /// Returns the API token for the given profile [id] from secure storage.
  Future<String?> getToken(String id);

  /// Returns the currently active profile ID, or `null` if none is set.
  Future<String?> getActiveProfileId();

  /// Sets the active profile ID.
  Future<void> setActiveProfileId(String id);
}
