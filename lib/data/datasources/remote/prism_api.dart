import 'package:dio/dio.dart';

import '../../../core/errors/api_exception_mapper.dart';
import '../../../core/errors/failures.dart';
import '../../../core/utils/logger_service.dart';

/// Remote data source for Prism (Device Intelligence) API calls.
class PrismApi {
  PrismApi({required this.dio});

  final Dio dio;

  /// Valid Prism category slugs.
  static const categories = [
    'activation_lock',
    'apps',
    'application_firewall',
    'cellular',
    'certificates',
    'desktop_and_screensaver',
    'device_information',
    'filevault',
    'gatekeeper_and_xprotect',
    'installed_profiles',
    'kernel_extensions',
    'launch_agents_and_daemons',
    'local_users',
    'startup_settings',
    'system_extensions',
    'transparency_database',
  ];

  /// Fetches Prism data for the given [category].
  ///
  /// All 16 category endpoints share the same query parameter signature
  /// and return the same structure: `{offset, limit, total, data: [...]}`.
  Future<Map<String, dynamic>> getCategory(
    String category, {
    int limit = 300,
    int offset = 0,
    String? blueprintIds,
    String? deviceFamilies,
    String? filter,
    String? sortBy,
  }) async {
    try {
      final queryParams = <String, dynamic>{'limit': limit, 'offset': offset};
      if (blueprintIds != null) queryParams['blueprint_ids'] = blueprintIds;
      if (deviceFamilies != null) {
        queryParams['device_families'] = deviceFamilies;
      }
      if (filter != null) queryParams['filter'] = filter;
      if (sortBy != null) queryParams['sort_by'] = sortBy;

      final response = await dio.get<dynamic>(
        '/prism/$category',
        queryParameters: queryParams,
      );
      final data = response.data;

      if (data is Map<String, dynamic>) return data;
      if (data is List) {
        return <String, dynamic>{
          'offset': offset,
          'limit': limit,
          'total': data.length,
          'data': data,
        };
      }

      return <String, dynamic>{
        'offset': offset,
        'limit': limit,
        'total': 0,
        'data': <dynamic>[],
      };
    } on DioException catch (e) {
      throw ApiExceptionMapper.fromDioException(e);
    } on Failure {
      rethrow;
    } catch (e, st) {
      log.e(
        'PrismApi.getCategory($category) error: $e',
        error: e,
        stackTrace: st,
      );
      throw UnexpectedFailure('Failed to fetch prism $category: $e');
    }
  }

  /// Requests a CSV export for the given [category].
  ///
  /// Returns the export metadata including `{id, status, category, ...}`.
  Future<Map<String, dynamic>> requestExport(
    String category, {
    String? blueprintIds,
    String? deviceFamilies,
    String? filter,
    String? sortBy,
  }) async {
    try {
      final body = <String, dynamic>{'category': category};
      if (blueprintIds != null) body['blueprint_ids'] = blueprintIds;
      if (deviceFamilies != null) body['device_families'] = deviceFamilies;
      if (filter != null) body['filter'] = filter;
      if (sortBy != null) body['sort_by'] = sortBy;

      final response = await dio.post<dynamic>('/prism/export', data: body);
      final data = response.data;
      if (data is Map<String, dynamic>) return data;
      throw const UnexpectedFailure('Unexpected prism export response');
    } on DioException catch (e) {
      throw ApiExceptionMapper.fromDioException(e);
    } on Failure {
      rethrow;
    } catch (e, st) {
      log.e('PrismApi.requestExport error: $e', error: e, stackTrace: st);
      throw UnexpectedFailure('Failed to request prism export: $e');
    }
  }

  /// Gets the status and download URL of a previously requested export.
  ///
  /// Returns `{id, status, signed_url, ...}`.
  Future<Map<String, dynamic>> getExport(String exportId) async {
    try {
      final response = await dio.get<dynamic>('/prism/export/$exportId');
      final data = response.data;
      if (data is Map<String, dynamic>) return data;
      throw const UnexpectedFailure('Unexpected prism export status response');
    } on DioException catch (e) {
      throw ApiExceptionMapper.fromDioException(e);
    } on Failure {
      rethrow;
    } catch (e, st) {
      log.e('PrismApi.getExport error: $e', error: e, stackTrace: st);
      throw UnexpectedFailure('Failed to get prism export status: $e');
    }
  }

  /// Gets the device count for a given [category].
  ///
  /// Returns `{count: int, approximate: bool}`.
  Future<Map<String, dynamic>> getCount(String category) async {
    try {
      final response = await dio.get<dynamic>(
        '/prism/count',
        queryParameters: {'category': category},
      );
      final data = response.data;
      if (data is Map<String, dynamic>) return data;
      return <String, dynamic>{'count': 0, 'approximate': false};
    } on DioException catch (e) {
      throw ApiExceptionMapper.fromDioException(e);
    } on Failure {
      rethrow;
    } catch (e, st) {
      log.e('PrismApi.getCount error: $e', error: e, stackTrace: st);
      throw UnexpectedFailure('Failed to get prism count: $e');
    }
  }
}
