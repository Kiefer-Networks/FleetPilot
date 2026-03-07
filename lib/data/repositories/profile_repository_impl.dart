import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../../core/constants/storage_keys.dart';
import '../../domain/entities/connection_profile.dart';
import '../../domain/repositories/profile_repository.dart';

/// Concrete implementation of [ProfileRepository].
///
/// Profile metadata (display name, subdomain, region) is stored as JSON
/// in secure storage. API tokens are stored separately under dedicated keys,
/// all backed by platform hardware security (Keychain / Android Keystore).
class ProfileRepositoryImpl implements ProfileRepository {
  ProfileRepositoryImpl({required this.secureStorage});

  final FlutterSecureStorage secureStorage;

  @override
  Future<List<ConnectionProfile>> getProfiles() async {
    final idsJson = await secureStorage.read(key: StorageKeys.profileIds);
    if (idsJson == null || idsJson.isEmpty) return [];

    final ids = (jsonDecode(idsJson) as List<dynamic>).cast<String>();
    final profiles = <ConnectionProfile>[];

    for (final id in ids) {
      final profile = await getProfile(id);
      if (profile != null) profiles.add(profile);
    }

    return profiles;
  }

  @override
  Future<ConnectionProfile?> getProfile(String id) async {
    final metaJson = await secureStorage.read(key: StorageKeys.metaKey(id));
    if (metaJson == null) return null;

    final json = jsonDecode(metaJson) as Map<String, dynamic>;
    return ConnectionProfile.fromJson(json);
  }

  @override
  Future<void> saveProfile(ConnectionProfile profile, String token) async {
    // Store profile metadata
    await secureStorage.write(
      key: StorageKeys.metaKey(profile.id),
      value: jsonEncode(profile.toJson()),
    );

    // Store token separately
    await secureStorage.write(
      key: StorageKeys.tokenKey(profile.id),
      value: token,
    );

    // Update profile ID list
    final ids = await _getProfileIds();
    if (!ids.contains(profile.id)) {
      ids.add(profile.id);
      await _saveProfileIds(ids);
    }
  }

  @override
  Future<void> updateProfile(ConnectionProfile profile, {String? token}) async {
    await secureStorage.write(
      key: StorageKeys.metaKey(profile.id),
      value: jsonEncode(profile.toJson()),
    );

    if (token != null) {
      await secureStorage.write(
        key: StorageKeys.tokenKey(profile.id),
        value: token,
      );
    }
  }

  @override
  Future<void> deleteProfile(String id) async {
    await secureStorage.delete(key: StorageKeys.metaKey(id));
    await secureStorage.delete(key: StorageKeys.tokenKey(id));

    final ids = await _getProfileIds();
    ids.remove(id);
    await _saveProfileIds(ids);

    // Clear active profile if it was the deleted one
    final activeId = await getActiveProfileId();
    if (activeId == id) {
      await secureStorage.delete(key: StorageKeys.activeProfileId);
    }
  }

  @override
  Future<String?> getToken(String id) {
    return secureStorage.read(key: StorageKeys.tokenKey(id));
  }

  @override
  Future<String?> getActiveProfileId() {
    return secureStorage.read(key: StorageKeys.activeProfileId);
  }

  @override
  Future<void> setActiveProfileId(String id) {
    return secureStorage.write(key: StorageKeys.activeProfileId, value: id);
  }

  Future<List<String>> _getProfileIds() async {
    final idsJson = await secureStorage.read(key: StorageKeys.profileIds);
    if (idsJson == null || idsJson.isEmpty) return [];
    return (jsonDecode(idsJson) as List<dynamic>).cast<String>();
  }

  Future<void> _saveProfileIds(List<String> ids) {
    return secureStorage.write(
      key: StorageKeys.profileIds,
      value: jsonEncode(ids),
    );
  }
}
