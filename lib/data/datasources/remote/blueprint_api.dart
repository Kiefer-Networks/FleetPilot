import 'package:dio/dio.dart';

import '../../../core/errors/api_exception_mapper.dart';
import '../../../core/errors/failures.dart';
import '../../../core/utils/logger_service.dart';
import '../../../domain/entities/blueprint.dart';
import '../../../domain/entities/blueprint_template.dart';
import '../../../domain/entities/library_item.dart';
import '../../../domain/entities/library_item_status.dart';

/// Remote data source for blueprint-related API calls.
class BlueprintApi {
  BlueprintApi({required this.dio});

  final Dio dio;

  /// Fetches all blueprints.
  Future<List<Blueprint>> getBlueprints() async {
    try {
      final response = await dio.get<dynamic>('/blueprints');
      final data = response.data;

      if (data is List) {
        return data
            .cast<Map<String, dynamic>>()
            .map(Blueprint.fromJson)
            .toList(growable: false);
      }

      if (data is Map<String, dynamic>) {
        for (final key in ['results', 'value', 'blueprints', 'data']) {
          final list = data[key];
          if (list is List) {
            return list
                .cast<Map<String, dynamic>>()
                .map(Blueprint.fromJson)
                .toList(growable: false);
          }
        }
      }

      return [];
    } on DioException catch (e) {
      throw ApiExceptionMapper.fromDioException(e);
    } on Failure {
      rethrow;
    } catch (e, st) {
      log.e('BlueprintApi parse error: $e', error: e, stackTrace: st);
      throw UnexpectedFailure('Failed to parse blueprint response: $e');
    }
  }

  /// Fetches library items assigned to a blueprint.
  Future<List<LibraryItem>> getBlueprintLibraryItems(String blueprintId) async {
    try {
      final response = await dio.get<dynamic>(
        '/blueprints/$blueprintId/list-library-items',
      );
      final data = response.data;

      if (data is Map<String, dynamic>) {
        log.d(
          'BlueprintApi.getBlueprintLibraryItems keys: ${data.keys.toList()}',
        );
      }

      List<dynamic> items;
      if (data is List) {
        items = data;
      } else if (data is Map<String, dynamic>) {
        items =
            (data['results'] as List?) ??
            (data['library_items'] as List?) ??
            (data['data'] as List?) ??
            [];
      } else {
        return [];
      }

      return items
          .cast<Map<String, dynamic>>()
          .map(LibraryItem.fromJson)
          .toList(growable: false);
    } on DioException catch (e) {
      throw ApiExceptionMapper.fromDioException(e);
    } on Failure {
      rethrow;
    } catch (e, st) {
      log.e(
        'BlueprintApi.getBlueprintLibraryItems parse error: $e',
        error: e,
        stackTrace: st,
      );
      throw UnexpectedFailure('Failed to parse library items: $e');
    }
  }

  /// Creates a new blueprint.
  Future<Blueprint> createBlueprint(Map<String, dynamic> body) async {
    try {
      final response = await dio.post<dynamic>('/blueprints', data: body);
      final data = response.data;
      if (data is Map<String, dynamic>) return Blueprint.fromJson(data);
      throw const UnexpectedFailure('Unexpected blueprint create response');
    } on DioException catch (e) {
      throw ApiExceptionMapper.fromDioException(e);
    } on Failure {
      rethrow;
    } catch (e, st) {
      log.e('BlueprintApi.createBlueprint error: $e', error: e, stackTrace: st);
      throw UnexpectedFailure('Failed to create blueprint: $e');
    }
  }

  /// Updates a blueprint.
  Future<Blueprint> updateBlueprint(
    String id,
    Map<String, dynamic> body,
  ) async {
    try {
      final response = await dio.patch<dynamic>('/blueprints/$id', data: body);
      final data = response.data;
      if (data is Map<String, dynamic>) return Blueprint.fromJson(data);
      throw const UnexpectedFailure('Unexpected blueprint update response');
    } on DioException catch (e) {
      throw ApiExceptionMapper.fromDioException(e);
    } on Failure {
      rethrow;
    } catch (e, st) {
      log.e('BlueprintApi.updateBlueprint error: $e', error: e, stackTrace: st);
      throw UnexpectedFailure('Failed to update blueprint: $e');
    }
  }

  /// Deletes a blueprint.
  Future<void> deleteBlueprint(String id) async {
    try {
      await dio.delete<dynamic>('/blueprints/$id');
    } on DioException catch (e) {
      throw ApiExceptionMapper.fromDioException(e);
    }
  }

  /// Assigns or removes a library item from a blueprint.
  Future<void> assignLibraryItem(
    String blueprintId,
    Map<String, dynamic> body,
  ) async {
    try {
      await dio.post<dynamic>(
        '/blueprints/$blueprintId/assign-library-item',
        data: body,
      );
    } on DioException catch (e) {
      throw ApiExceptionMapper.fromDioException(e);
    }
  }

  /// Fetches blueprint templates.
  Future<List<BlueprintTemplate>> getBlueprintTemplates() async {
    try {
      final response = await dio.get<dynamic>('/blueprints/templates/');
      final data = response.data;
      List<dynamic> items;
      if (data is List) {
        items = data;
      } else if (data is Map<String, dynamic>) {
        items =
            (data['results'] as List?) ??
            (data['templates'] as List?) ??
            (data['data'] as List?) ??
            [];
      } else {
        return [];
      }
      return items
          .cast<Map<String, dynamic>>()
          .map(BlueprintTemplate.fromJson)
          .toList(growable: false);
    } on DioException catch (e) {
      throw ApiExceptionMapper.fromDioException(e);
    } on Failure {
      rethrow;
    } catch (e, st) {
      log.e(
        'BlueprintApi.getBlueprintTemplates error: $e',
        error: e,
        stackTrace: st,
      );
      throw UnexpectedFailure('Failed to parse blueprint templates: $e');
    }
  }

  /// Downloads OTA enrollment profile for a blueprint.
  Future<String> getOtaEnrollmentProfile(String blueprintId) async {
    try {
      final response = await dio.get<dynamic>(
        '/blueprints/$blueprintId/ota-enrollment-profile',
      );
      final data = response.data;
      if (data is String) return data;
      if (data is Map<String, dynamic>) {
        return (data['profile'] as String?) ?? data.toString();
      }
      return data.toString();
    } on DioException catch (e) {
      throw ApiExceptionMapper.fromDioException(e);
    }
  }

  /// Fetches library item activity.
  Future<List<LibraryItemActivity>> getLibraryItemActivity(
    String itemId,
  ) async {
    try {
      final response = await dio.get<dynamic>(
        '/library/library-items/$itemId/activity',
      );
      final data = response.data;
      List<dynamic> items;
      if (data is List) {
        items = data;
      } else if (data is Map<String, dynamic>) {
        items =
            (data['results'] as List?) ??
            (data['activity'] as List?) ??
            (data['data'] as List?) ??
            [];
      } else {
        return [];
      }
      return items
          .cast<Map<String, dynamic>>()
          .map(LibraryItemActivity.fromJson)
          .toList(growable: false);
    } on DioException catch (e) {
      throw ApiExceptionMapper.fromDioException(e);
    } on Failure {
      rethrow;
    } catch (e, st) {
      log.e(
        'BlueprintApi.getLibraryItemActivity error: $e',
        error: e,
        stackTrace: st,
      );
      throw UnexpectedFailure('Failed to parse library item activity: $e');
    }
  }

  /// Fetches library item deployment status per device.
  Future<List<LibraryItemStatus>> getLibraryItemStatus(String itemId) async {
    try {
      final response = await dio.get<dynamic>(
        '/library/library-items/$itemId/status',
      );
      final data = response.data;
      List<dynamic> items;
      if (data is List) {
        items = data;
      } else if (data is Map<String, dynamic>) {
        items =
            (data['results'] as List?) ??
            (data['status'] as List?) ??
            (data['data'] as List?) ??
            [];
      } else {
        return [];
      }
      return items
          .cast<Map<String, dynamic>>()
          .map(LibraryItemStatus.fromJson)
          .toList(growable: false);
    } on DioException catch (e) {
      throw ApiExceptionMapper.fromDioException(e);
    } on Failure {
      rethrow;
    } catch (e, st) {
      log.e(
        'BlueprintApi.getLibraryItemStatus error: $e',
        error: e,
        stackTrace: st,
      );
      throw UnexpectedFailure('Failed to parse library item status: $e');
    }
  }

  /// Fetches all library items across all categories with their details.
  /// Returns a map of item ID → raw JSON data including a 'category' key.
  Future<Map<String, Map<String, dynamic>>> getAllLibraryItemDetails() async {
    final result = <String, Map<String, dynamic>>{};

    final categories = <String, String>{
      'custom-script': '/library/custom-scripts',
      'custom-app': '/library/custom-apps',
      'custom-profile': '/library/custom-profiles',
      'in-house-app': '/library/ipa-apps',
    };

    await Future.wait(
      categories.entries.map((entry) async {
        try {
          final response = await dio.get<dynamic>(entry.value);
          final items = _extractItems(response.data);
          for (final item in items) {
            if (item is Map<String, dynamic>) {
              final id = item['id']?.toString();
              if (id != null) {
                result[id] = {...item, '_category': entry.key};
              }
            }
          }
        } on DioException {
          // Endpoint may not exist — skip silently.
        }
      }),
    );

    return result;
  }

  List<dynamic> _extractItems(dynamic data) {
    if (data is List) return data;
    if (data is Map<String, dynamic>) {
      for (final key in ['results', 'data', 'items']) {
        final list = data[key];
        if (list is List) return list;
      }
    }
    return [];
  }

  /// Fetches a single blueprint by [id].
  Future<Blueprint> getBlueprint(String id) async {
    try {
      final response = await dio.get<dynamic>('/blueprints/$id');
      final data = response.data;
      if (data is Map<String, dynamic>) {
        return Blueprint.fromJson(data);
      }
      throw const UnexpectedFailure(
        'Unexpected blueprint detail response format',
      );
    } on DioException catch (e) {
      throw ApiExceptionMapper.fromDioException(e);
    } on Failure {
      rethrow;
    } catch (e, st) {
      log.e('BlueprintApi parse error: $e', error: e, stackTrace: st);
      throw UnexpectedFailure('Failed to parse blueprint response: $e');
    }
  }
}
