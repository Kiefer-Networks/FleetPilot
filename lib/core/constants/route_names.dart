/// Named route paths for go_router navigation.
abstract final class RouteNames {
  static const String authSetup = '/auth/setup';
  static const String authBiometric = '/auth/biometric';
  static const String devices = '/devices';
  static const String deviceDetail = '/devices/:deviceId';
  static const String blueprints = '/blueprints';
  static const String blueprintDetail = '/blueprints/:blueprintId';
  static const String users = '/users';
  static const String userDetail = '/users/:userId';
  static const String settings = '/settings';
  static const String profileEdit = '/settings/profile/:profileId';
}
