import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/di/providers.dart';
import '../../domain/entities/device.dart';
import '../../domain/entities/mdm_user.dart';
import 'device_providers.dart';

/// Sort order: true = A-Z, false = Z-A.
final userSortAscProvider = StateProvider<bool>((ref) => true);

/// Search query for user list filtering.
final userSearchQueryProvider = StateProvider<String>((ref) => '');

/// Whether to show archived users.
final showArchivedUsersProvider = StateProvider<bool>((ref) => false);

/// Number of users loaded so far during pagination.
final usersLoadingCountProvider = StateProvider<int>((ref) => 0);

/// Provider for the full user list with cursor pagination.
/// Keeps previous data while refreshing in the background.
final usersProvider = AsyncNotifierProvider<UsersNotifier, List<MdmUser>>(
  UsersNotifier.new,
);

/// Manages user list state with cursor-based pagination.
/// Caches previous results and silently refreshes in background.
class UsersNotifier extends AsyncNotifier<List<MdmUser>> {
  @override
  Future<List<MdmUser>> build() async {
    final repo = await ref.watch(userRepositoryProvider.future);
    return repo.getUsers(
      onPageLoaded: (count) {
        ref.read(usersLoadingCountProvider.notifier).state = count;
      },
    );
  }

  /// Silently refresh: keep showing old data while fetching new.
  Future<void> refresh() async {
    final previousData = state.valueOrNull;
    // Don't set to loading — keep showing cached data
    try {
      final repo = await ref.read(userRepositoryProvider.future);
      final fresh = await repo.getUsers(
        onPageLoaded: (count) {
          ref.read(usersLoadingCountProvider.notifier).state = count;
        },
      );
      state = AsyncData(fresh);
    } catch (e, st) {
      // If refresh fails but we have cached data, keep it
      if (previousData != null) {
        state = AsyncData(previousData);
      } else {
        state = AsyncError(e, st);
      }
    }
  }
}

/// Provider for filtered/searched users derived from the full list.
final filteredUsersProvider = Provider<AsyncValue<List<MdmUser>>>((ref) {
  final usersAsync = ref.watch(usersProvider);
  final query = ref.watch(userSearchQueryProvider).toLowerCase();
  final showArchived = ref.watch(showArchivedUsersProvider);

  return usersAsync.whenData((users) {
    var filtered = users.where((u) => showArchived || !u.archived);

    if (query.isNotEmpty) {
      filtered = filtered.where((user) {
        final name = user.name?.toLowerCase() ?? '';
        final email = user.email?.toLowerCase() ?? '';
        return name.contains(query) || email.contains(query);
      });
    }

    final result = filtered.toList();
    final sortAsc = ref.watch(userSortAscProvider);
    result.sort((a, b) {
      final nameA = (a.name ?? a.email ?? a.id).toLowerCase();
      final nameB = (b.name ?? b.email ?? b.id).toLowerCase();
      return sortAsc ? nameA.compareTo(nameB) : nameB.compareTo(nameA);
    });
    return result;
  });
});

/// Provider for a single user by ID.
final userDetailProvider = FutureProvider.family<MdmUser, String>((
  ref,
  userId,
) async {
  final repo = await ref.watch(userRepositoryProvider.future);
  return repo.getUser(userId);
});

/// Devices assigned to a specific user, derived from the loaded device list.
/// Matches by email since the device list's embedded user doesn't include user_id.
final userDevicesProvider =
    Provider.family<AsyncValue<List<Device>>, String>((ref, userId) {
  final devicesAsync = ref.watch(devicesProvider);
  final userAsync = ref.watch(userDetailProvider(userId));

  return devicesAsync.whenData((devices) {
    final userEmail = userAsync.valueOrNull?.email?.toLowerCase();
    if (userEmail == null || userEmail.isEmpty) return <Device>[];
    return devices
        .where((d) => d.user?.email?.toLowerCase() == userEmail)
        .toList();
  });
});
