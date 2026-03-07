import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../../data/datasources/remote/blueprint_api.dart';
import '../../data/datasources/remote/device_api.dart';
import '../../data/datasources/remote/tenant_api.dart';
import '../../data/datasources/remote/user_api.dart';
import '../../data/repositories/blueprint_repository_impl.dart';
import '../../data/repositories/device_repository_impl.dart';
import '../../data/repositories/profile_repository_impl.dart';
import '../../data/repositories/user_repository_impl.dart';
import '../../domain/entities/connection_profile.dart';
import '../../domain/repositories/blueprint_repository.dart';
import '../../domain/repositories/device_repository.dart';
import '../../domain/repositories/profile_repository.dart';
import '../../domain/repositories/user_repository.dart';
import '../../domain/usecases/execute_device_action.dart';
import '../../domain/usecases/get_devices.dart';
import '../../domain/usecases/verify_credentials.dart';
import '../constants/api_constants.dart';
import '../network/api_client.dart';

/// Secure storage instance backed by platform Keychain / Android Keystore.
final secureStorageProvider = Provider<FlutterSecureStorage>(
  (ref) => const FlutterSecureStorage(
    aOptions: AndroidOptions(encryptedSharedPreferences: true),
    iOptions: IOSOptions(
      accessibility: KeychainAccessibility.unlocked_this_device,
    ),
  ),
);

/// Profile repository provider.
final profileRepositoryProvider = Provider<ProfileRepository>(
  (ref) =>
      ProfileRepositoryImpl(secureStorage: ref.watch(secureStorageProvider)),
);

/// Async provider for the active connection profile.
final activeProfileProvider =
    FutureProvider<ConnectionProfile?>((ref) async {
  final profileRepo = ref.watch(profileRepositoryProvider);
  final activeId = await profileRepo.getActiveProfileId();
  if (activeId == null) return null;
  return profileRepo.getProfile(activeId);
});

/// Async Dio client provider. Waits for the active profile to resolve
/// before creating a configured Dio instance.
final dioProvider = FutureProvider<Dio>((ref) async {
  final activeProfile = await ref.watch(activeProfileProvider.future);
  if (activeProfile == null) {
    throw StateError('No active profile configured');
  }

  final baseUrl = ApiConstants.baseUrl(
    subdomain: activeProfile.subdomain,
    region: activeProfile.region,
  );

  return ApiClientFactory.create(
    baseUrl: baseUrl,
    tokenProvider: () async {
      final profileRepo = ref.read(profileRepositoryProvider);
      return profileRepo.getToken(activeProfile.id);
    },
  );
});

/// Device API data source (async — depends on Dio).
final deviceApiProvider = FutureProvider<DeviceApi>((ref) async {
  final dio = await ref.watch(dioProvider.future);
  return DeviceApi(dio: dio);
});

/// Blueprint API data source (async — depends on Dio).
final blueprintApiProvider = FutureProvider<BlueprintApi>((ref) async {
  final dio = await ref.watch(dioProvider.future);
  return BlueprintApi(dio: dio);
});

/// Device repository (async — depends on DeviceApi).
final deviceRepositoryProvider =
    FutureProvider<DeviceRepository>((ref) async {
  final api = await ref.watch(deviceApiProvider.future);
  return DeviceRepositoryImpl(api: api);
});

/// Blueprint repository (async — depends on BlueprintApi).
final blueprintRepositoryProvider =
    FutureProvider<BlueprintRepository>((ref) async {
  final api = await ref.watch(blueprintApiProvider.future);
  return BlueprintRepositoryImpl(api: api);
});

/// Use case: get all devices (async — depends on DeviceRepository).
final getDevicesUseCaseProvider = FutureProvider<GetDevices>((ref) async {
  final repo = await ref.watch(deviceRepositoryProvider.future);
  return GetDevices(repository: repo);
});

/// Use case: execute device action (async — depends on DeviceRepository).
final executeDeviceActionUseCaseProvider =
    FutureProvider<ExecuteDeviceAction>((ref) async {
  final repo = await ref.watch(deviceRepositoryProvider.future);
  return ExecuteDeviceAction(repository: repo);
});

/// User API data source (async — depends on Dio).
final userApiProvider = FutureProvider<UserApi>((ref) async {
  final dio = await ref.watch(dioProvider.future);
  return UserApi(dio: dio);
});

/// User repository (async — depends on UserApi).
final userRepositoryProvider = FutureProvider<UserRepository>((ref) async {
  final api = await ref.watch(userApiProvider.future);
  return UserRepositoryImpl(api: api);
});

/// Tenant API data source (async — depends on Dio).
final tenantApiProvider = FutureProvider<TenantApi>((ref) async {
  final dio = await ref.watch(dioProvider.future);
  return TenantApi(dio: dio);
});

/// Use case: verify credentials (stateless, no dependencies).
final verifyCredentialsUseCaseProvider = Provider<VerifyCredentials>(
  (ref) => VerifyCredentials(),
);
