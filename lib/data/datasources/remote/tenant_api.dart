import 'dart:convert';

import 'package:dio/dio.dart';

import '../../../core/constants/api_constants.dart';
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

  /// Builds an absolute v2 URL from the current Dio base URL.
  String _v2(String path) =>
      '${ApiConstants.v2BaseUrl(dio.options.baseUrl)}$path';

  /// Fetches threat details via v2 endpoint.
  Future<List<Threat>> getThreats({
    String statuses = 'quarantined,not_quarantined,released,resolved',
    String? classification,
    String? severities,
    String? managementState,
    String? tags,
    String? deviceId,
    String? term,
    String? detectionDateFrom,
    String? detectionDateTo,
    int? dateRange,
    String? sortBy,
    int limit = 1000,
    int offset = 0,
  }) async {
    try {
      final queryParams = <String, dynamic>{
        'statuses': statuses,
        'limit': limit,
        'offset': offset,
      };
      if (classification != null) queryParams['classification'] = classification;
      if (severities != null) queryParams['severities'] = severities;
      if (managementState != null) {
        queryParams['management_state'] = managementState;
      }
      if (tags != null) queryParams['tags'] = tags;
      if (deviceId != null) queryParams['device_id'] = deviceId;
      if (term != null) queryParams['term'] = term;
      if (detectionDateFrom != null) {
        queryParams['detection_date_from'] = detectionDateFrom;
      }
      if (detectionDateTo != null) {
        queryParams['detection_date_to'] = detectionDateTo;
      }
      if (dateRange != null) queryParams['date_range'] = dateRange;
      if (sortBy != null) queryParams['sort_by'] = sortBy;

      final response = await dio.get<dynamic>(
        _v2('/threat/threat-details'),
        queryParameters: queryParams,
      );

      return _extractListItems(response.data)
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
    String? sortBy,
    Map<String, dynamic>? filter,
  }) async {
    try {
      final queryParams = <String, dynamic>{'page': page, 'size': size};
      if (sortBy != null) queryParams['sort_by'] = sortBy;
      if (filter != null) queryParams['filter'] = jsonEncode(filter);

      final response = await dio.get<dynamic>(
        '/vulnerability-management/vulnerabilities',
        queryParameters: queryParams,
      );

      return _extractListItems(response.data)
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
    int size = 300,
    String? after,
    Map<String, dynamic>? filter,
  }) async {
    try {
      final queryParams = <String, dynamic>{'size': size};
      if (after != null) queryParams['after'] = after;
      if (filter != null) queryParams['filter'] = jsonEncode(filter);
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
    String cveId, {
    int page = 1,
    int size = 50,
    String? sortBy,
    Map<String, dynamic>? filter,
  }) async {
    try {
      final queryParams = <String, dynamic>{'page': page, 'size': size};
      if (sortBy != null) queryParams['sort_by'] = sortBy;
      if (filter != null) queryParams['filter'] = jsonEncode(filter);
      final response = await dio.get<dynamic>(
        '/vulnerability-management/vulnerabilities/$cveId/devices',
        queryParameters: queryParams,
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
    String cveId, {
    int page = 1,
    int size = 50,
    String? sortBy,
    Map<String, dynamic>? filter,
  }) async {
    try {
      final queryParams = <String, dynamic>{'page': page, 'size': size};
      if (sortBy != null) queryParams['sort_by'] = sortBy;
      if (filter != null) queryParams['filter'] = jsonEncode(filter);
      final response = await dio.get<dynamic>(
        '/vulnerability-management/vulnerabilities/$cveId/software',
        queryParameters: queryParams,
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

  /// Fetches behavioral detections via v2 endpoint.
  /// Note: v2 requires [deviceId]. Without it we fetch from all devices
  /// by iterating; pass null to fetch a global list via a wrapper.
  Future<List<BehavioralDetection>> getBehavioralDetections({
    String? deviceId,
    String? classifications,
    String? statuses,
    String? severities,
    String? managementState,
    String? tags,
    String? searchTerm,
    String? detectionFrom,
    String? detectionTo,
    String? sortBy,
    int limit = 1000,
    int offset = 0,
  }) async {
    try {
      final queryParams = <String, dynamic>{
        'limit': limit,
        'offset': offset,
      };
      // v2 requires device_id but we make it optional in our layer
      if (deviceId != null) queryParams['device_id'] = deviceId;
      if (classifications != null) {
        queryParams['classifications'] = classifications;
      }
      if (statuses != null) queryParams['statuses'] = statuses;
      if (severities != null) queryParams['severities'] = severities;
      if (managementState != null) {
        queryParams['management_state'] = managementState;
      }
      if (tags != null) queryParams['tags'] = tags;
      if (searchTerm != null) queryParams['search_term'] = searchTerm;
      if (detectionFrom != null) queryParams['detection_from'] = detectionFrom;
      if (detectionTo != null) queryParams['detection_to'] = detectionTo;
      if (sortBy != null) queryParams['sort_by'] = sortBy;

      final response = await dio.get<dynamic>(
        _v2('/threat/behavioral-detections/events'),
        queryParameters: queryParams,
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
  Future<List<AdeDevice>> getAllAdeDevices({
    int? page,
    String? blueprintId,
    String? deviceFamily,
    String? model,
    String? profileStatus,
    String? serialNumber,
  }) async {
    try {
      final queryParams = <String, dynamic>{};
      if (page != null) queryParams['page'] = page;
      if (blueprintId != null) queryParams['blueprint_id'] = blueprintId;
      if (deviceFamily != null) queryParams['device_family'] = deviceFamily;
      if (model != null) queryParams['model'] = model;
      if (profileStatus != null) queryParams['profile_status'] = profileStatus;
      if (serialNumber != null) queryParams['serial_number'] = serialNumber;
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

  // ---------------------------------------------------------------------------
  // Blueprint Routing
  // ---------------------------------------------------------------------------

  /// Gets blueprint routing enrollment code and status.
  Future<Map<String, dynamic>> getBlueprintRouting() async {
    try {
      final response = await dio.get<dynamic>('/blueprint-routing/');
      final data = response.data;
      if (data is Map<String, dynamic>) return data;
      return {};
    } on DioException catch (e) {
      throw ApiExceptionMapper.fromDioException(e);
    }
  }

  /// Updates blueprint routing enrollment code and status.
  Future<Map<String, dynamic>> updateBlueprintRouting(
    Map<String, dynamic> body,
  ) async {
    try {
      final response = await dio.patch<dynamic>(
        '/blueprint-routing/',
        data: body,
      );
      final data = response.data;
      if (data is Map<String, dynamic>) return data;
      return {};
    } on DioException catch (e) {
      throw ApiExceptionMapper.fromDioException(e);
    }
  }

  /// Gets blueprint routing activity events.
  Future<List<Map<String, dynamic>>> getBlueprintRoutingActivity({
    int limit = 300,
    int offset = 0,
  }) async {
    try {
      final response = await dio.get<dynamic>(
        '/blueprint-routing/activity',
        queryParameters: {'limit': limit, 'offset': offset},
      );
      return _extractListItems(response.data);
    } on DioException catch (e) {
      throw ApiExceptionMapper.fromDioException(e);
    } on Failure {
      rethrow;
    } catch (e, st) {
      log.e(
        'TenantApi.getBlueprintRoutingActivity error: $e',
        error: e,
        stackTrace: st,
      );
      throw UnexpectedFailure(
        'Failed to parse blueprint routing activity: $e',
      );
    }
  }

  // ---------------------------------------------------------------------------
  // Self Service Categories
  // ---------------------------------------------------------------------------

  /// Lists self-service categories.
  Future<List<Map<String, dynamic>>> getSelfServiceCategories() async {
    try {
      final response = await dio.get<dynamic>('/self-service/categories');
      return _extractListItems(response.data);
    } on DioException catch (e) {
      throw ApiExceptionMapper.fromDioException(e);
    } on Failure {
      rethrow;
    } catch (e, st) {
      log.e(
        'TenantApi.getSelfServiceCategories error: $e',
        error: e,
        stackTrace: st,
      );
      throw UnexpectedFailure('Failed to parse self-service categories: $e');
    }
  }

  /// Creates a self-service category.
  Future<Map<String, dynamic>> createSelfServiceCategory(
    Map<String, dynamic> body,
  ) async {
    try {
      final response = await dio.post<dynamic>(
        '/self-service/categories',
        data: body,
      );
      final data = response.data;
      if (data is Map<String, dynamic>) return data;
      return {};
    } on DioException catch (e) {
      throw ApiExceptionMapper.fromDioException(e);
    }
  }

  /// Deletes a self-service category.
  Future<void> deleteSelfServiceCategory(String id) async {
    try {
      await dio.delete<dynamic>('/self-service/categories/$id');
    } on DioException catch (e) {
      throw ApiExceptionMapper.fromDioException(e);
    }
  }

  // ---------------------------------------------------------------------------
  // Library Items CRUD
  // ---------------------------------------------------------------------------

  /// Gets a single custom script by ID.
  Future<Map<String, dynamic>> getCustomScript(String id) async {
    try {
      final response = await dio.get<dynamic>('/library/custom-scripts/$id');
      final data = response.data;
      if (data is Map<String, dynamic>) return data;
      return {};
    } on DioException catch (e) {
      throw ApiExceptionMapper.fromDioException(e);
    }
  }

  /// Creates a custom script.
  Future<Map<String, dynamic>> createCustomScript(
    Map<String, dynamic> body,
  ) async {
    try {
      final response = await dio.post<dynamic>(
        '/library/custom-scripts',
        data: body,
      );
      final data = response.data;
      if (data is Map<String, dynamic>) return data;
      return {};
    } on DioException catch (e) {
      throw ApiExceptionMapper.fromDioException(e);
    }
  }

  /// Updates a custom script.
  Future<Map<String, dynamic>> updateCustomScript(
    String id,
    Map<String, dynamic> body,
  ) async {
    try {
      final response = await dio.patch<dynamic>(
        '/library/custom-scripts/$id',
        data: body,
      );
      final data = response.data;
      if (data is Map<String, dynamic>) return data;
      return {};
    } on DioException catch (e) {
      throw ApiExceptionMapper.fromDioException(e);
    }
  }

  /// Deletes a custom script.
  Future<void> deleteCustomScript(String id) async {
    try {
      await dio.delete<dynamic>('/library/custom-scripts/$id');
    } on DioException catch (e) {
      throw ApiExceptionMapper.fromDioException(e);
    }
  }

  /// Gets a single custom profile by ID.
  Future<Map<String, dynamic>> getCustomProfile(String id) async {
    try {
      final response = await dio.get<dynamic>('/library/custom-profiles/$id');
      final data = response.data;
      if (data is Map<String, dynamic>) return data;
      return {};
    } on DioException catch (e) {
      throw ApiExceptionMapper.fromDioException(e);
    }
  }

  /// Creates a custom profile.
  Future<Map<String, dynamic>> createCustomProfile(
    Map<String, dynamic> body,
  ) async {
    try {
      final response = await dio.post<dynamic>(
        '/library/custom-profiles',
        data: body,
      );
      final data = response.data;
      if (data is Map<String, dynamic>) return data;
      return {};
    } on DioException catch (e) {
      throw ApiExceptionMapper.fromDioException(e);
    }
  }

  /// Updates a custom profile.
  Future<Map<String, dynamic>> updateCustomProfile(
    String id,
    Map<String, dynamic> body,
  ) async {
    try {
      final response = await dio.patch<dynamic>(
        '/library/custom-profiles/$id',
        data: body,
      );
      final data = response.data;
      if (data is Map<String, dynamic>) return data;
      return {};
    } on DioException catch (e) {
      throw ApiExceptionMapper.fromDioException(e);
    }
  }

  /// Deletes a custom profile.
  Future<void> deleteCustomProfile(String id) async {
    try {
      await dio.delete<dynamic>('/library/custom-profiles/$id');
    } on DioException catch (e) {
      throw ApiExceptionMapper.fromDioException(e);
    }
  }

  /// Creates a custom app (requires S3 upload).
  Future<Map<String, dynamic>> createCustomApp(
    Map<String, dynamic> body,
  ) async {
    try {
      final response = await dio.post<dynamic>(
        '/library/custom-apps',
        data: body,
      );
      final data = response.data;
      if (data is Map<String, dynamic>) return data;
      return {};
    } on DioException catch (e) {
      throw ApiExceptionMapper.fromDioException(e);
    }
  }

  /// Updates a custom app.
  Future<Map<String, dynamic>> updateCustomApp(
    String id,
    Map<String, dynamic> body,
  ) async {
    try {
      final response = await dio.patch<dynamic>(
        '/library/custom-apps/$id',
        data: body,
      );
      final data = response.data;
      if (data is Map<String, dynamic>) return data;
      return {};
    } on DioException catch (e) {
      throw ApiExceptionMapper.fromDioException(e);
    }
  }

  /// Deletes a custom app.
  Future<void> deleteCustomApp(String id) async {
    try {
      await dio.delete<dynamic>('/library/custom-apps/$id');
    } on DioException catch (e) {
      throw ApiExceptionMapper.fromDioException(e);
    }
  }

  /// Uploads a custom app package to S3.
  Future<void> uploadCustomApp(String id, String filePath) async {
    try {
      final formData = FormData.fromMap({
        'file': await MultipartFile.fromFile(filePath),
      });
      await dio.post<dynamic>(
        '/library/custom-apps/$id/upload',
        data: formData,
      );
    } on DioException catch (e) {
      throw ApiExceptionMapper.fromDioException(e);
    }
  }

  /// Creates an IPA (in-house) app.
  Future<Map<String, dynamic>> createIpaApp(FormData formData) async {
    try {
      final response = await dio.post<dynamic>(
        '/library/ipa-apps',
        data: formData,
      );
      final data = response.data;
      if (data is Map<String, dynamic>) return data;
      return {};
    } on DioException catch (e) {
      throw ApiExceptionMapper.fromDioException(e);
    }
  }

  /// Gets a single IPA app by ID.
  Future<Map<String, dynamic>> getIpaApp(String id) async {
    try {
      final response = await dio.get<dynamic>('/library/ipa-apps/$id');
      final data = response.data;
      if (data is Map<String, dynamic>) return data;
      return {};
    } on DioException catch (e) {
      throw ApiExceptionMapper.fromDioException(e);
    }
  }

  /// Updates an IPA app.
  Future<Map<String, dynamic>> updateIpaApp(
    String id,
    Map<String, dynamic> body,
  ) async {
    try {
      final response = await dio.patch<dynamic>(
        '/library/ipa-apps/$id',
        data: body,
      );
      final data = response.data;
      if (data is Map<String, dynamic>) return data;
      return {};
    } on DioException catch (e) {
      throw ApiExceptionMapper.fromDioException(e);
    }
  }

  /// Deletes an IPA app.
  Future<void> deleteIpaApp(String id) async {
    try {
      await dio.delete<dynamic>('/library/ipa-apps/$id');
    } on DioException catch (e) {
      throw ApiExceptionMapper.fromDioException(e);
    }
  }

  /// Uploads a new IPA file for an in-house app.
  Future<void> uploadIpaApp(String id, String filePath) async {
    try {
      final formData = FormData.fromMap({
        'file': await MultipartFile.fromFile(filePath),
      });
      await dio.post<dynamic>(
        '/library/ipa-apps/$id/upload',
        data: formData,
      );
    } on DioException catch (e) {
      throw ApiExceptionMapper.fromDioException(e);
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
