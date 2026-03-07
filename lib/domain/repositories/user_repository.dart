import '../entities/mdm_user.dart';

/// Abstract interface for user API operations.
abstract interface class UserRepository {
  /// Fetches all users (handles pagination internally).
  Future<List<MdmUser>> getUsers({
    void Function(int loadedCount)? onPageLoaded,
  });

  /// Fetches a single user by [id].
  Future<MdmUser> getUser(String id);

  /// Deletes a user by [id].
  Future<void> deleteUser(String id);
}
