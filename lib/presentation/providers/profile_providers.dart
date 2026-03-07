import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/di/providers.dart';
import '../../domain/entities/connection_profile.dart';

/// Provider for the list of all saved connection profiles.
final profilesProvider = FutureProvider<List<ConnectionProfile>>((ref) async {
  final repo = ref.watch(profileRepositoryProvider);
  return repo.getProfiles();
});

/// Provider for the active profile ID.
final activeProfileIdProvider = FutureProvider<String?>((ref) async {
  final repo = ref.watch(profileRepositoryProvider);
  return repo.getActiveProfileId();
});

/// State notifier for managing profile operations (save, delete, switch).
final profileActionsProvider =
    AsyncNotifierProvider<ProfileActionsNotifier, void>(
      ProfileActionsNotifier.new,
    );

/// Handles profile CRUD operations and profile switching.
class ProfileActionsNotifier extends AsyncNotifier<void> {
  @override
  Future<void> build() async {}

  /// Saves a new profile and sets it as active.
  Future<void> saveProfile({
    required ConnectionProfile profile,
    required String token,
  }) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      final repo = ref.read(profileRepositoryProvider);
      await repo.saveProfile(profile, token);
      await repo.setActiveProfileId(profile.id);
      ref.invalidate(profilesProvider);
      ref.invalidate(activeProfileIdProvider);
      ref.invalidate(activeProfileProvider);
    });
  }

  /// Deletes a profile and clears state if it was active.
  Future<void> deleteProfile(String id) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      final repo = ref.read(profileRepositoryProvider);
      await repo.deleteProfile(id);
      ref.invalidate(profilesProvider);
      ref.invalidate(activeProfileIdProvider);
      ref.invalidate(activeProfileProvider);
    });
  }

  /// Switches the active profile.
  Future<void> switchProfile(String id) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      final repo = ref.read(profileRepositoryProvider);
      await repo.setActiveProfileId(id);
      ref.invalidate(activeProfileIdProvider);
      ref.invalidate(activeProfileProvider);
    });
  }
}
