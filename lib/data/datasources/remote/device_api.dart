import 'package:dio/dio.dart';

import '../../../core/constants/api_constants.dart';
import '../../../core/errors/api_exception_mapper.dart';
import '../../../core/errors/failures.dart';
import '../../../core/utils/logger_service.dart';
import '../../../domain/entities/device.dart';
import '../../../domain/entities/device_action.dart';
import '../../../domain/entities/device_activity.dart';
import '../../../domain/entities/device_app.dart';
import '../../../domain/entities/device_command.dart';
import '../../../domain/entities/device_details.dart';
import '../../../domain/entities/device_note.dart';
import '../../../domain/entities/device_secret.dart';
import '../../../domain/entities/device_status.dart';
import '../../../domain/entities/tag.dart';

/// Remote data source for device-related API calls.
class DeviceApi {
  DeviceApi({required this.dio});

  final Dio dio;

  /// Fetches a single page of devices.
  Future<List<Device>> getDevicesPage({
    required int offset,
    String? platform,
    String? blueprintId,
    String? ordering,
    String? assetTag,
    String? deviceName,
    bool? filevaultEnabled,
    String? macAddress,
    String? model,
    String? osVersion,
    String? serialNumber,
    String? tagName,
    String? tagNameIn,
    String? tagId,
    String? tagIdIn,
    String? user,
    String? userEmail,
    String? userEmailExact,
    String? userId,
    String? userName,
  }) async {
    try {
      final queryParams = <String, dynamic>{
        'limit': ApiConstants.pageLimit,
        'offset': offset,
      };
      if (platform != null) queryParams['platform'] = platform;
      if (blueprintId != null) queryParams['blueprint_id'] = blueprintId;
      if (ordering != null) queryParams['ordering'] = ordering;
      if (assetTag != null) queryParams['asset_tag'] = assetTag;
      if (deviceName != null) queryParams['device_name'] = deviceName;
      if (filevaultEnabled != null) {
        queryParams['filevault_enabled'] = filevaultEnabled.toString();
      }
      if (macAddress != null) queryParams['mac_address'] = macAddress;
      if (model != null) queryParams['model'] = model;
      if (osVersion != null) queryParams['os_version'] = osVersion;
      if (serialNumber != null) queryParams['serial_number'] = serialNumber;
      if (tagName != null) queryParams['tag_name'] = tagName;
      if (tagNameIn != null) queryParams['tag_name_in'] = tagNameIn;
      if (tagId != null) queryParams['tag_id'] = tagId;
      if (tagIdIn != null) queryParams['tag_id_in'] = tagIdIn;
      if (user != null) queryParams['user'] = user;
      if (userEmail != null) queryParams['user_email'] = userEmail;
      if (userEmailExact != null) {
        queryParams['user_email_exact'] = userEmailExact;
      }
      if (userId != null) queryParams['user_id'] = userId;
      if (userName != null) queryParams['user_name'] = userName;

      final response = await dio.get<dynamic>(
        '/devices',
        queryParameters: queryParams,
      );

      final items = _extractList(response.data);
      return items.map(Device.fromJson).toList(growable: false);
    } on DioException catch (e) {
      throw ApiExceptionMapper.fromDioException(e);
    } on Failure {
      rethrow;
    } catch (e, st) {
      log.e(
        'DeviceApi.getDevicesPage parse error: $e',
        error: e,
        stackTrace: st,
      );
      throw UnexpectedFailure('Failed to parse device response: $e');
    }
  }

  /// Fetches all devices by transparently paginating through all pages.
  Future<List<Device>> getAllDevices({
    String? platform,
    String? blueprintId,
    String? ordering,
    void Function(int loadedCount)? onPageLoaded,
  }) async {
    final allDevices = <Device>[];
    var offset = 0;

    while (true) {
      final page = await getDevicesPage(
        offset: offset,
        platform: platform,
        blueprintId: blueprintId,
        ordering: ordering,
      );
      allDevices.addAll(page);
      onPageLoaded?.call(allDevices.length);

      if (page.length < ApiConstants.pageLimit) break;
      offset += ApiConstants.pageLimit;
    }

    return allDevices;
  }

  /// Fetches a single device by [deviceId].
  Future<Device> getDevice(String deviceId) async {
    try {
      final response = await dio.get<dynamic>('/devices/$deviceId');
      final data = response.data;
      if (data is Map<String, dynamic>) {
        return Device.fromJson(data);
      }
      throw const UnexpectedFailure('Unexpected device detail response format');
    } on DioException catch (e) {
      throw ApiExceptionMapper.fromDioException(e);
    } on Failure {
      rethrow;
    } catch (e, st) {
      log.e('DeviceApi.getDevice parse error: $e', error: e, stackTrace: st);
      throw UnexpectedFailure('Failed to parse device response: $e');
    }
  }

  /// Executes a remote [action] on the device with [deviceId].
  Future<void> executeAction(
    String deviceId,
    DeviceAction action, {
    Map<String, dynamic>? body,
  }) async {
    try {
      await dio.post<dynamic>(
        '/devices/$deviceId/action/${action.apiPath}',
        data: body ?? <String, dynamic>{},
      );
    } on DioException catch (e) {
      throw ApiExceptionMapper.fromDioException(e);
    }
  }

  /// Fetches extended details for a device.
  Future<DeviceDetails> getDeviceDetails(String deviceId) async {
    try {
      final response = await dio.get<dynamic>('/devices/$deviceId/details');
      final data = response.data;
      if (data is Map<String, dynamic>) {
        return DeviceDetails.fromJson(data);
      }
      throw const UnexpectedFailure('Unexpected device details response');
    } on DioException catch (e) {
      throw ApiExceptionMapper.fromDioException(e);
    } on Failure {
      rethrow;
    } catch (e, st) {
      log.e(
        'DeviceApi.getDeviceDetails parse error: $e',
        error: e,
        stackTrace: st,
      );
      throw UnexpectedFailure('Failed to parse device details: $e');
    }
  }

  /// Fetches apps installed on a device.
  Future<List<DeviceApp>> getDeviceApps(String deviceId) async {
    try {
      final response = await dio.get<dynamic>('/devices/$deviceId/apps');
      final data = response.data;

      // Response can be {device_id, apps: [...]} or a plain list
      List<dynamic> appsList;
      if (data is Map<String, dynamic> && data['apps'] is List) {
        appsList = data['apps'] as List;
      } else if (data is List) {
        appsList = data;
      } else {
        return [];
      }

      final castApps = appsList.cast<Map<String, dynamic>>();
      return castApps.map(DeviceApp.fromJson).toList(growable: false);
    } on DioException catch (e) {
      throw ApiExceptionMapper.fromDioException(e);
    } on Failure {
      rethrow;
    } catch (e, st) {
      log.e(
        'DeviceApi.getDeviceApps parse error: $e',
        error: e,
        stackTrace: st,
      );
      throw UnexpectedFailure('Failed to parse device apps: $e');
    }
  }

  /// Fetches status (library items + parameters) for a device.
  Future<DeviceStatus> getDeviceStatus(String deviceId) async {
    try {
      final response = await dio.get<dynamic>('/devices/$deviceId/status');
      final data = response.data;
      if (data is Map<String, dynamic>) {
        return DeviceStatus.fromJson(data);
      }
      return const DeviceStatus();
    } on DioException catch (e) {
      throw ApiExceptionMapper.fromDioException(e);
    } on Failure {
      rethrow;
    } catch (e, st) {
      log.e(
        'DeviceApi.getDeviceStatus parse error: $e',
        error: e,
        stackTrace: st,
      );
      throw UnexpectedFailure('Failed to parse device status: $e');
    }
  }

  /// Fetches recent activity for a device.
  Future<List<DeviceActivity>> getDeviceActivity(
    String deviceId, {
    int limit = 100,
    int offset = 0,
  }) async {
    try {
      final response = await dio.get<dynamic>(
        '/devices/$deviceId/activity',
        queryParameters: {'limit': limit, 'offset': offset},
      );
      final data = response.data;

      // Response: {device_id, activity: [...]} or plain list
      List<dynamic> activityList;
      if (data is Map<String, dynamic>) {
        final activity = data['activity'];
        if (activity is List) {
          activityList = activity;
        } else if (activity is Map<String, dynamic> &&
            activity['results'] is List) {
          activityList = activity['results'] as List;
        } else {
          return [];
        }
      } else if (data is List) {
        activityList = data;
      } else {
        return [];
      }

      return activityList
          .cast<Map<String, dynamic>>()
          .map(DeviceActivity.fromJson)
          .toList(growable: false);
    } on DioException catch (e) {
      throw ApiExceptionMapper.fromDioException(e);
    } on Failure {
      rethrow;
    } catch (e, st) {
      log.e(
        'DeviceApi.getDeviceActivity parse error: $e',
        error: e,
        stackTrace: st,
      );
      throw UnexpectedFailure('Failed to parse device activity: $e');
    }
  }

  /// Fetches MDM commands for a device.
  Future<List<DeviceCommand>> getDeviceCommands(
    String deviceId, {
    int limit = 100,
    int offset = 0,
  }) async {
    try {
      final response = await dio.get<dynamic>(
        '/devices/$deviceId/commands',
        queryParameters: {'limit': limit, 'offset': offset},
      );
      final data = response.data;

      // Response: {device_id, commands: [...]} or plain list
      List<dynamic> commandsList;
      if (data is Map<String, dynamic>) {
        final commands = data['commands'];
        if (commands is List) {
          commandsList = commands;
        } else if (commands is Map<String, dynamic> &&
            commands['results'] is List) {
          commandsList = commands['results'] as List;
        } else {
          return [];
        }
      } else if (data is List) {
        commandsList = data;
      } else {
        return [];
      }

      return commandsList
          .cast<Map<String, dynamic>>()
          .map(DeviceCommand.fromJson)
          .toList(growable: false);
    } on DioException catch (e) {
      throw ApiExceptionMapper.fromDioException(e);
    } on Failure {
      rethrow;
    } catch (e, st) {
      log.e(
        'DeviceApi.getDeviceCommands parse error: $e',
        error: e,
        stackTrace: st,
      );
      throw UnexpectedFailure('Failed to parse device commands: $e');
    }
  }

  /// Fetches all device secrets (FileVault key, unlock pin, recovery password, bypass code).
  Future<DeviceSecrets> getDeviceSecrets(String deviceId) async {
    String? filevaultKey;
    String? unlockPin;
    String? recoveryPassword;
    String? bypassCode;

    Future<String?> fetchSecret(String path, String key) async {
      try {
        final response = await dio.get<dynamic>(
          '/devices/$deviceId/secrets/$path',
        );
        final data = response.data;
        if (data is Map<String, dynamic>) return data[key] as String?;
      } on DioException catch (_) {
        // 404 or 403 means secret not available for this device
      } catch (_) {
        // Ignore parse errors for individual secrets
      }
      return null;
    }

    final results = await Future.wait([
      fetchSecret('filevaultkey', 'key'),
      fetchSecret('unlockpin', 'pin'),
      fetchSecret('recoverypassword', 'recovery_password'),
      fetchSecret('bypasscode', 'bypass_code'),
    ]);

    filevaultKey = results[0];
    unlockPin = results[1];
    recoveryPassword = results[2];
    bypassCode = results[3];

    return DeviceSecrets(
      filevaultKey: filevaultKey,
      unlockPin: unlockPin,
      recoveryPassword: recoveryPassword,
      bypassCode: bypassCode,
    );
  }

  // ---------------------------------------------------------------------------
  // Device Notes CRUD
  // ---------------------------------------------------------------------------

  Future<List<DeviceNote>> getDeviceNotes(String deviceId) async {
    try {
      final response = await dio.get<dynamic>('/devices/$deviceId/notes');
      final items = _extractList(response.data);
      return items.map(DeviceNote.fromJson).toList(growable: false);
    } on DioException catch (e) {
      throw ApiExceptionMapper.fromDioException(e);
    } on Failure {
      rethrow;
    } catch (e, st) {
      log.e(
        'DeviceApi.getDeviceNotes parse error: $e',
        error: e,
        stackTrace: st,
      );
      throw UnexpectedFailure('Failed to parse device notes: $e');
    }
  }

  Future<DeviceNote> createDeviceNote(String deviceId, String content) async {
    try {
      final response = await dio.post<dynamic>(
        '/devices/$deviceId/notes',
        data: {'content': content},
      );
      final data = response.data;
      if (data is Map<String, dynamic>) return DeviceNote.fromJson(data);
      throw const UnexpectedFailure('Unexpected note create response');
    } on DioException catch (e) {
      throw ApiExceptionMapper.fromDioException(e);
    } on Failure {
      rethrow;
    } catch (e, st) {
      log.e('DeviceApi.createDeviceNote error: $e', error: e, stackTrace: st);
      throw UnexpectedFailure('Failed to create note: $e');
    }
  }

  Future<DeviceNote> updateDeviceNote(
    String deviceId,
    String noteId,
    String content,
  ) async {
    try {
      final response = await dio.patch<dynamic>(
        '/devices/$deviceId/notes/$noteId',
        data: {'content': content},
      );
      final data = response.data;
      if (data is Map<String, dynamic>) return DeviceNote.fromJson(data);
      throw const UnexpectedFailure('Unexpected note update response');
    } on DioException catch (e) {
      throw ApiExceptionMapper.fromDioException(e);
    } on Failure {
      rethrow;
    } catch (e, st) {
      log.e('DeviceApi.updateDeviceNote error: $e', error: e, stackTrace: st);
      throw UnexpectedFailure('Failed to update note: $e');
    }
  }

  Future<void> deleteDeviceNote(String deviceId, String noteId) async {
    try {
      await dio.delete<dynamic>('/devices/$deviceId/notes/$noteId');
    } on DioException catch (e) {
      throw ApiExceptionMapper.fromDioException(e);
    }
  }

  // ---------------------------------------------------------------------------
  // Update / Delete Device
  // ---------------------------------------------------------------------------

  Future<Device> updateDevice(
    String deviceId,
    Map<String, dynamic> body,
  ) async {
    try {
      final response = await dio.patch<dynamic>(
        '/devices/$deviceId',
        data: body,
      );
      final data = response.data;
      if (data is Map<String, dynamic>) return Device.fromJson(data);
      throw const UnexpectedFailure('Unexpected update device response');
    } on DioException catch (e) {
      throw ApiExceptionMapper.fromDioException(e);
    } on Failure {
      rethrow;
    } catch (e, st) {
      log.e('DeviceApi.updateDevice error: $e', error: e, stackTrace: st);
      throw UnexpectedFailure('Failed to update device: $e');
    }
  }

  Future<void> deleteDevice(String deviceId) async {
    try {
      await dio.delete<dynamic>('/devices/$deviceId');
    } on DioException catch (e) {
      throw ApiExceptionMapper.fromDioException(e);
    }
  }

  // ---------------------------------------------------------------------------
  // Lost Mode
  // ---------------------------------------------------------------------------

  /// Retrieves lost mode details for a device.
  Future<Map<String, dynamic>> getLostModeDetails(String deviceId) async {
    try {
      final response = await dio.get<dynamic>(
        '/devices/$deviceId/details/lostmode',
      );
      final data = response.data;
      if (data is Map<String, dynamic>) return data;
      return {};
    } on DioException catch (e) {
      throw ApiExceptionMapper.fromDioException(e);
    }
  }

  /// Cancels lost mode for a device.
  Future<void> cancelLostMode(String deviceId) async {
    try {
      await dio.delete<dynamic>('/devices/$deviceId/details/lostmode');
    } on DioException catch (e) {
      throw ApiExceptionMapper.fromDioException(e);
    }
  }

  // ---------------------------------------------------------------------------
  // Device Parameters & Library Items
  // ---------------------------------------------------------------------------

  /// Fetches device parameters.
  Future<List<Map<String, dynamic>>> getDeviceParameters(
    String deviceId,
  ) async {
    try {
      final response = await dio.get<dynamic>('/devices/$deviceId/parameters');
      return _extractList(response.data);
    } on DioException catch (e) {
      throw ApiExceptionMapper.fromDioException(e);
    } on Failure {
      rethrow;
    } catch (e, st) {
      log.e(
        'DeviceApi.getDeviceParameters error: $e',
        error: e,
        stackTrace: st,
      );
      throw UnexpectedFailure('Failed to parse device parameters: $e');
    }
  }

  /// Fetches library items installed on a device.
  Future<List<Map<String, dynamic>>> getDeviceLibraryItems(
    String deviceId,
  ) async {
    try {
      final response = await dio.get<dynamic>(
        '/devices/$deviceId/library-items',
      );
      return _extractList(response.data);
    } on DioException catch (e) {
      throw ApiExceptionMapper.fromDioException(e);
    } on Failure {
      rethrow;
    } catch (e, st) {
      log.e(
        'DeviceApi.getDeviceLibraryItems error: $e',
        error: e,
        stackTrace: st,
      );
      throw UnexpectedFailure('Failed to parse device library items: $e');
    }
  }

  // ---------------------------------------------------------------------------
  // Tags CRUD
  // ---------------------------------------------------------------------------

  Future<List<Tag>> getTags({String search = ''}) async {
    try {
      final response = await dio.get<dynamic>(
        '/tags',
        queryParameters: {'search': search},
      );
      final items = _extractList(response.data);
      return items.map(Tag.fromJson).toList(growable: false);
    } on DioException catch (e) {
      throw ApiExceptionMapper.fromDioException(e);
    } on Failure {
      rethrow;
    } catch (e, st) {
      log.e('DeviceApi.getTags parse error: $e', error: e, stackTrace: st);
      throw UnexpectedFailure('Failed to parse tags: $e');
    }
  }

  Future<Tag> createTag(String name) async {
    try {
      final response = await dio.post<dynamic>('/tags', data: {'name': name});
      final data = response.data;
      if (data is Map<String, dynamic>) return Tag.fromJson(data);
      throw const UnexpectedFailure('Unexpected tag create response');
    } on DioException catch (e) {
      throw ApiExceptionMapper.fromDioException(e);
    } on Failure {
      rethrow;
    } catch (e, st) {
      log.e('DeviceApi.createTag error: $e', error: e, stackTrace: st);
      throw UnexpectedFailure('Failed to create tag: $e');
    }
  }

  Future<Tag> updateTag(String tagId, String name) async {
    try {
      final response = await dio.patch<dynamic>(
        '/tags/$tagId',
        data: {'name': name},
      );
      final data = response.data;
      if (data is Map<String, dynamic>) return Tag.fromJson(data);
      throw const UnexpectedFailure('Unexpected tag update response');
    } on DioException catch (e) {
      throw ApiExceptionMapper.fromDioException(e);
    } on Failure {
      rethrow;
    } catch (e, st) {
      log.e('DeviceApi.updateTag error: $e', error: e, stackTrace: st);
      throw UnexpectedFailure('Failed to update tag: $e');
    }
  }

  Future<void> deleteTag(String tagId) async {
    try {
      await dio.delete<dynamic>('/tags/$tagId');
    } on DioException catch (e) {
      throw ApiExceptionMapper.fromDioException(e);
    }
  }

  /// Validates credentials with a minimal API request.
  Future<bool> validateCredentials() async {
    try {
      final response = await dio.get<dynamic>(
        '/devices',
        queryParameters: {'limit': 1},
      );
      return response.statusCode == 200;
    } on DioException catch (e) {
      throw ApiExceptionMapper.fromDioException(e);
    }
  }

  /// Extracts a list of device maps from the API response.
  ///
  /// Handles both formats:
  /// - Plain array: `[{...}, {...}]`
  /// - Object wrapper: `{"results": [...]}` or `{"value": [...]}`
  List<Map<String, dynamic>> _extractList(dynamic data) {
    if (data is List) {
      return data.cast<Map<String, dynamic>>();
    }

    if (data is Map<String, dynamic>) {
      // Try common wrapper keys
      for (final key in [
        'results',
        'value',
        'devices',
        'data',
        'activity',
        'commands',
        'apps',
        'notes',
        'tags',
      ]) {
        final list = data[key];
        if (list is List) {
          return list.cast<Map<String, dynamic>>();
        }
      }
      log.w('DeviceApi: Object response with unknown keys: ${data.keys}');
    }

    log.w('DeviceApi: Unexpected response type: ${data.runtimeType}');
    return [];
  }
}
