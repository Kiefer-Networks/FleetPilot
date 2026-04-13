import '../../core/cache/cache_service.dart';
import '../../domain/entities/mdm_user.dart';
import '../../domain/repositories/user_repository.dart';
import '../datasources/remote/user_api.dart';

/// Concrete implementation of [UserRepository] using [UserApi].
class UserRepositoryImpl implements UserRepository {
  UserRepositoryImpl({required this.api, required this.cache});

  final UserApi api;
  final CacheService cache;

  /// Returns cached users or `null`.
  Future<List<MdmUser>?> getCachedUsers() async {
    final raw = await cache.read<List<dynamic>>('users');
    if (raw == null) return null;
    return raw
        .cast<Map<String, dynamic>>()
        .map((j) => MdmUser.fromJson(j))
        .toList();
  }

  @override
  Future<List<MdmUser>> getUsers({
    void Function(int loadedCount)? onPageLoaded,
  }) async {
    final users = await api.getAllUsers(onPageLoaded: onPageLoaded);
    cache.write('users', users.map((u) => u.toJson()).toList());
    return users;
  }

  @override
  Future<MdmUser> getUser(String id) {
    return api.getUser(id);
  }

  @override
  Future<void> deleteUser(String id) {
    return api.deleteUser(id);
  }
}
