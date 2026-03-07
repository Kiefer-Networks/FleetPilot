import '../../domain/entities/mdm_user.dart';
import '../../domain/repositories/user_repository.dart';
import '../datasources/remote/user_api.dart';

/// Concrete implementation of [UserRepository] using [UserApi].
class UserRepositoryImpl implements UserRepository {
  UserRepositoryImpl({required this.api});

  final UserApi api;

  @override
  Future<List<MdmUser>> getUsers({
    void Function(int loadedCount)? onPageLoaded,
  }) {
    return api.getAllUsers(onPageLoaded: onPageLoaded);
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
