import 'package:dio/dio.dart';

import '../../../core/errors/api_exception_mapper.dart';
import '../../../core/errors/failures.dart';
import '../../../core/utils/logger_service.dart';
import '../../../domain/entities/ade_device.dart';
import '../../../domain/entities/ade_integration.dart';
import '../../../domain/entities/audit_event.dart';
import '../../../domain/entities/behavioral_detection.dart';
import '../../../domain/entities/license_info.dart';
import '../../../domain/entities/threat.dart';
import '../../../domain/entities/vulnerability.dart';
import '../../../domain/entities/vulnerability_detection.dart';

/// Remote data source for tenant-wide API calls (threats, vulnerabilities).
class TenantApi {
  TenantApi({required this.dio});

  final Dio dio;

  /// Fetches threat details from the tenant.
  Future<List<Threat>> getThreats({
    int? dateRange,
    int limit = 300,
    int offset = 0,
  }) async {
    try {
      final queryParams = <String, dynamic>{'limit': limit, 'offset': offset};
      if (dateRange != null) queryParams['date_range'] = dateRange.toString();

      final response = await dio.get<dynamic>(
        '/threat-details',
        queryParameters: queryParams,
      );
      final data = response.data;

      List<dynamic> items;
      if (data is List) {
        items = data;
      } else if (data is Map<String, dynamic>) {
        items = (data['results'] as List?) ?? (data['threats'] as List?) ?? [];
      } else {
        return [];
      }

      return items
          .cast<Map<String, dynamic>>()
          .map(Threat.fromJson)
          .toList(growable: false);
    } on DioException catch (e) {
      throw ApiExceptionMapper.fromDioException(e);
    } on Failure {
      rethrow;
    } catch (e, st) {
      log.e('TenantApi.getThreats parse error: $e', error: e, stackTrace: st);
      throw UnexpectedFailure('Failed to parse threats: $e');
    }
  }

  /// Fetches vulnerabilities from the tenant.
  Future<List<Vulnerability>> getVulnerabilities({
    int page = 1,
    int size = 50,
  }) async {
    try {
      final response = await dio.get<dynamic>(
        '/vulnerability-management/vulnerabilities',
        queryParameters: {'page': page, 'size': size},
      );
      final data = response.data;

      List<dynamic> items;
      if (data is List) {
        items = data;
      } else if (data is Map<String, dynamic>) {
        items =
            (data['results'] as List?) ??
            (data['data'] as List?) ??
            (data['vulnerabilities'] as List?) ??
            [];
      } else {
        return [];
      }

      return items
          .cast<Map<String, dynamic>>()
          .map(Vulnerability.fromJson)
          .toList(growable: false);
    } on DioException catch (e) {
      throw ApiExceptionMapper.fromDioException(e);
    } on Failure {
      rethrow;
    } catch (e, st) {
      log.e(
        'TenantApi.getVulnerabilities parse error: $e',
        error: e,
        stackTrace: st,
      );
      throw UnexpectedFailure('Failed to parse vulnerabilities: $e');
    }
  }

  /// Fetches audit events with pagination.
  Future<List<AuditEvent>> getAuditEvents({
    int limit = 50,
    String sortBy = 'occurred_at',
    String? startDate,
    String? endDate,
    String? cursor,
  }) async {
    try {
      final queryParams = <String, dynamic>{'limit': limit, 'sort_by': sortBy};
      if (startDate != null) queryParams['start_date'] = startDate;
      if (endDate != null) queryParams['end_date'] = endDate;
      if (cursor != null) queryParams['cursor'] = cursor;

      final response = await dio.get<dynamic>(
        '/audit/events',
        queryParameters: queryParams,
      );
      return _extractListItems(
        response.data,
      ).map(AuditEvent.fromJson).toList(growable: false);
    } on DioException catch (e) {
      throw ApiExceptionMapper.fromDioException(e);
    } on Failure {
      rethrow;
    } catch (e, st) {
      log.e(
        'TenantApi.getAuditEvents parse error: $e',
        error: e,
        stackTrace: st,
      );
      throw UnexpectedFailure('Failed to parse audit events: $e');
    }
  }

  // ---------------------------------------------------------------------------
  // Vulnerability Management
  // ---------------------------------------------------------------------------

  /// Fetches vulnerability detections.
  Future<List<VulnerabilityDetection>> getVulnerabilityDetections({
    int size = 50,
    String? after,
  }) async {
    try {
      final queryParams = <String, dynamic>{'size': size};
      if (after != null) queryParams['after'] = after;
      final response = await dio.get<dynamic>(
        '/vulnerability-management/detections',
        queryParameters: queryParams,
      );
      return _extractListItems(
        response.data,
      ).map(VulnerabilityDetection.fromJson).toList(growable: false);
    } on DioException catch (e) {
      throw ApiExceptionMapper.fromDioException(e);
    } on Failure {
      rethrow;
    } catch (e, st) {
      log.e(
        'TenantApi.getVulnerabilityDetections error: $e',
        error: e,
        stackTrace: st,
      );
      throw UnexpectedFailure('Failed to parse vulnerability detections: $e');
    }
  }

  /// Fetches details for a specific CVE.
  Future<Vulnerability> getVulnerabilityDetail(String cveId) async {
    try {
      final response = await dio.get<dynamic>(
        '/vulnerability-management/vulnerabilities/$cveId',
      );
      final data = response.data;
      if (data is Map<String, dynamic>) return Vulnerability.fromJson(data);
      throw const UnexpectedFailure('Unexpected CVE detail response');
    } on DioException catch (e) {
      throw ApiExceptionMapper.fromDioException(e);
    } on Failure {
      rethrow;
    } catch (e, st) {
      log.e(
        'TenantApi.getVulnerabilityDetail error: $e',
        error: e,
        stackTrace: st,
      );
      throw UnexpectedFailure('Failed to parse CVE detail: $e');
    }
  }

  /// Fetches devices affected by a specific CVE.
  Future<List<Map<String, dynamic>>> getVulnerabilityDevices(
    String cveId,
  ) async {
    try {
      final response = await dio.get<dynamic>(
        '/vulnerability-management/vulnerabilities/$cveId/devices',
      );
      return _extractListItems(response.data);
    } on DioException catch (e) {
      throw ApiExceptionMapper.fromDioException(e);
    } on Failure {
      rethrow;
    } catch (e, st) {
      log.e(
        'TenantApi.getVulnerabilityDevices error: $e',
        error: e,
        stackTrace: st,
      );
      throw UnexpectedFailure('Failed to parse CVE devices: $e');
    }
  }

  /// Fetches software affected by a specific CVE.
  Future<List<Map<String, dynamic>>> getVulnerabilitySoftware(
    String cveId,
  ) async {
    try {
      final response = await dio.get<dynamic>(
        '/vulnerability-management/vulnerabilities/$cveId/software',
      );
      return _extractListItems(response.data);
    } on DioException catch (e) {
      throw ApiExceptionMapper.fromDioException(e);
    } on Failure {
      rethrow;
    } catch (e, st) {
      log.e(
        'TenantApi.getVulnerabilitySoftware error: $e',
        error: e,
        stackTrace: st,
      );
      throw UnexpectedFailure('Failed to parse CVE software: $e');
    }
  }

  /// Fetches behavioral detections.
  Future<List<BehavioralDetection>> getBehavioralDetections({
    int limit = 300,
    int offset = 0,
  }) async {
    try {
      final response = await dio.get<dynamic>(
        '/behavioral-detections',
        queryParameters: {'limit': limit, 'offset': offset},
      );
      return _extractListItems(
        response.data,
      ).map(BehavioralDetection.fromJson).toList(growable: false);
    } on DioException catch (e) {
      throw ApiExceptionMapper.fromDioException(e);
    } on Failure {
      rethrow;
    } catch (e, st) {
      log.e(
        'TenantApi.getBehavioralDetections error: $e',
        error: e,
        stackTrace: st,
      );
      throw UnexpectedFailure('Failed to parse behavioral detections: $e');
    }
  }

  // ---------------------------------------------------------------------------
  // Apple ADE Integration
  // ---------------------------------------------------------------------------

  /// Lists all ADE integrations.
  Future<List<AdeIntegration>> getAdeIntegrations() async {
    try {
      final response = await dio.get<dynamic>('/integrations/apple/ade');
      return _extractListItems(
        response.data,
      ).map(AdeIntegration.fromJson).toList(growable: false);
    } on DioException catch (e) {
      throw ApiExceptionMapper.fromDioException(e);
    } on Failure {
      rethrow;
    } catch (e, st) {
      log.e('TenantApi.getAdeIntegrations error: $e', error: e, stackTrace: st);
      throw UnexpectedFailure('Failed to parse ADE integrations: $e');
    }
  }

  /// Gets a single ADE integration by [id].
  Future<AdeIntegration> getAdeIntegration(String id) async {
    try {
      final response = await dio.get<dynamic>('/integrations/apple/ade/$id');
      final data = response.data;
      if (data is Map<String, dynamic>) return AdeIntegration.fromJson(data);
      throw const UnexpectedFailure('Unexpected ADE integration response');
    } on DioException catch (e) {
      throw ApiExceptionMapper.fromDioException(e);
    } on Failure {
      rethrow;
    } catch (e, st) {
      log.e('TenantApi.getAdeIntegration error: $e', error: e, stackTrace: st);
      throw UnexpectedFailure('Failed to parse ADE integration: $e');
    }
  }

  /// Creates an ADE integration with a server token file (.p7m).
  Future<AdeIntegration> createAdeIntegration({
    required String filePath,
    required String fileName,
    String? phone,
    String? email,
    String? blueprintId,
  }) async {
    try {
      final formData = FormData.fromMap({
        'file': await MultipartFile.fromFile(filePath, filename: fileName),
        if (phone != null && phone.isNotEmpty) 'phone': phone,
        if (email != null && email.isNotEmpty) 'email': email,
        if (blueprintId != null && blueprintId.isNotEmpty)
          'blueprint_id': blueprintId,
      });
      final response = await dio.post<dynamic>(
        '/integrations/apple/ade',
        data: formData,
      );
      final data = response.data;
      if (data is Map<String, dynamic>) return AdeIntegration.fromJson(data);
      throw const UnexpectedFailure('Unexpected ADE create response');
    } on DioException catch (e) {
      throw ApiExceptionMapper.fromDioException(e);
    } on Failure {
      rethrow;
    } catch (e, st) {
      log.e(
        'TenantApi.createAdeIntegration error: $e',
        error: e,
        stackTrace: st,
      );
      throw UnexpectedFailure('Failed to create ADE integration: $e');
    }
  }

  /// Updates an ADE integration.
  Future<AdeIntegration> updateAdeIntegration(
    String id,
    Map<String, dynamic> body,
  ) async {
    try {
      final response = await dio.patch<dynamic>(
        '/integrations/apple/ade/$id',
        data: body,
      );
      final data = response.data;
      if (data is Map<String, dynamic>) return AdeIntegration.fromJson(data);
      throw const UnexpectedFailure('Unexpected ADE update response');
    } on DioException catch (e) {
      throw ApiExceptionMapper.fromDioException(e);
    } on Failure {
      rethrow;
    } catch (e, st) {
      log.e(
        'TenantApi.updateAdeIntegration error: $e',
        error: e,
        stackTrace: st,
      );
      throw UnexpectedFailure('Failed to update ADE integration: $e');
    }
  }

  /// Deletes an ADE integration.
  Future<void> deleteAdeIntegration(String id) async {
    try {
      await dio.delete<dynamic>('/integrations/apple/ade/$id');
    } on DioException catch (e) {
      throw ApiExceptionMapper.fromDioException(e);
    }
  }

  /// Lists ADE devices for a specific integration.
  Future<List<AdeDevice>> getAdeDevices(String integrationId) async {
    try {
      final response = await dio.get<dynamic>(
        '/integrations/apple/ade/$integrationId/devices',
      );
      return _extractListItems(
        response.data,
      ).map(AdeDevice.fromJson).toList(growable: false);
    } on DioException catch (e) {
      throw ApiExceptionMapper.fromDioException(e);
    } on Failure {
      rethrow;
    } catch (e, st) {
      log.e('TenantApi.getAdeDevices error: $e', error: e, stackTrace: st);
      throw UnexpectedFailure('Failed to parse ADE devices: $e');
    }
  }

  /// Lists all ADE devices across all integrations.
  Future<List<AdeDevice>> getAllAdeDevices({int? page}) async {
    try {
      final queryParams = <String, dynamic>{};
      if (page != null) queryParams['page'] = page;
      final response = await dio.get<dynamic>(
        '/integrations/apple/ade/devices',
        queryParameters: queryParams,
      );
      return _extractListItems(
        response.data,
      ).map(AdeDevice.fromJson).toList(growable: false);
    } on DioException catch (e) {
      throw ApiExceptionMapper.fromDioException(e);
    } on Failure {
      rethrow;
    } catch (e, st) {
      log.e('TenantApi.getAllAdeDevices error: $e', error: e, stackTrace: st);
      throw UnexpectedFailure('Failed to parse all ADE devices: $e');
    }
  }

  /// Gets a specific ADE device by ID.
  Future<AdeDevice> getAdeDevice(String deviceId) async {
    try {
      final response = await dio.get<dynamic>(
        '/integrations/apple/ade/devices/$deviceId',
      );
      final data = response.data;
      if (data is Map<String, dynamic>) return AdeDevice.fromJson(data);
      throw const UnexpectedFailure('Unexpected ADE device response');
    } on DioException catch (e) {
      throw ApiExceptionMapper.fromDioException(e);
    } on Failure {
      rethrow;
    } catch (e, st) {
      log.e('TenantApi.getAdeDevice error: $e', error: e, stackTrace: st);
      throw UnexpectedFailure('Failed to parse ADE device: $e');
    }
  }

  /// Updates a specific ADE device (blueprint, user, asset tag).
  Future<AdeDevice> updateAdeDevice(
    String deviceId,
    Map<String, dynamic> body,
  ) async {
    try {
      final response = await dio.patch<dynamic>(
        '/integrations/apple/ade/devices/$deviceId',
        data: body,
      );
      final data = response.data;
      if (data is Map<String, dynamic>) return AdeDevice.fromJson(data);
      throw const UnexpectedFailure('Unexpected ADE device update response');
    } on DioException catch (e) {
      throw ApiExceptionMapper.fromDioException(e);
    } on Failure {
      rethrow;
    } catch (e, st) {
      log.e('TenantApi.updateAdeDevice error: $e', error: e, stackTrace: st);
      throw UnexpectedFailure('Failed to update ADE device: $e');
    }
  }

  /// Gets the ADE public key for token generation.
  Future<String> getAdePublicKey() async {
    try {
      final response = await dio.get<dynamic>(
        '/integrations/apple/ade/public_key/',
      );
      final data = response.data;
      if (data is Map<String, dynamic>) {
        return (data['public_key'] as String?) ?? '';
      }
      if (data is String) return data;
      return '';
    } on DioException catch (e) {
      throw ApiExceptionMapper.fromDioException(e);
    }
  }

  /// Renews the ADE token for an integration with a new .p7m file.
  Future<void> renewAdeToken(
    String integrationId, {
    required String filePath,
    required String fileName,
  }) async {
    try {
      final formData = FormData.fromMap({
        'file': await MultipartFile.fromFile(filePath, filename: fileName),
      });
      await dio.post<dynamic>(
        '/integrations/apple/ade/$integrationId/renew',
        data: formData,
      );
    } on DioException catch (e) {
      throw ApiExceptionMapper.fromDioException(e);
    }
  }

  /// Fetches tenant licensing info.
  Future<LicenseInfo> getLicenseInfo() async {
    try {
      final response = await dio.get<dynamic>('/settings/licensing');
      final data = response.data;
      if (data is Map<String, dynamic>) {
        return LicenseInfo.fromJson(data);
      }
      throw const UnexpectedFailure('Unexpected licensing response');
    } on DioException catch (e) {
      throw ApiExceptionMapper.fromDioException(e);
    } on Failure {
      rethrow;
    } catch (e, st) {
      log.e('TenantApi.getLicenseInfo error: $e', error: e, stackTrace: st);
      throw UnexpectedFailure('Failed to parse licensing info: $e');
    }
  }

  /// Extracts a list of maps from various response shapes.
  List<Map<String, dynamic>> _extractListItems(dynamic data) {
    if (data is List) return data.cast<Map<String, dynamic>>();
    if (data is Map<String, dynamic>) {
      for (final key in [
        'results',
        'data',
        'devices',
        'affected_devices',
        'device_records',
        'records',
        'items',
        'detections',
        'integrations',
        'events',
        'software',
        'vulnerabilities',
      ]) {
        final list = data[key];
        if (list is List) return list.cast<Map<String, dynamic>>();
      }
    }
    return [];
  }
}
