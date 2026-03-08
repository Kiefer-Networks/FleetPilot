import 'package:dio/dio.dart';

import '../../../core/errors/api_exception_mapper.dart';
import '../../../core/errors/failures.dart';
import '../../../core/utils/logger_service.dart';
import '../../../domain/entities/mdm_user.dart';

/// Remote data source for user-related API calls.
class UserApi {
  UserApi({required this.dio});

  final Dio dio;

  /// Fetches all users using cursor-based pagination.
  Future<List<MdmUser>> getAllUsers({
    String? email,
    String? id,
    String? integrationId,
    bool? archived,
    void Function(int loadedCount)? onPageLoaded,
  }) async {
    final allUsers = <MdmUser>[];
    String? cursor;

    try {
      while (true) {
        final queryParams = <String, dynamic>{};
        if (cursor != null) queryParams['cursor'] = cursor;
        if (email != null) queryParams['email'] = email;
        if (id != null) queryParams['id'] = id;
        if (integrationId != null) {
          queryParams['integration_id'] = integrationId;
        }
        if (archived != null) queryParams['archived'] = archived.toString();

        final response = await dio.get<dynamic>(
          '/users',
          queryParameters: queryParams,
        );

        final data = response.data;
        if (data is Map<String, dynamic>) {
          final results = data['results'];
          if (results is List) {
            final users = results
                .cast<Map<String, dynamic>>()
                .map(MdmUser.fromJson)
                .toList(growable: false);
            allUsers.addAll(users);
            onPageLoaded?.call(allUsers.length);
          }

          // Extract cursor from the 'next' URL
          final next = data['next'];
          if (next == null || next is! String || next.isEmpty) break;

          cursor = _extractCursor(next);
          if (cursor == null) break;
        } else if (data is List) {
          // Fallback: plain array response
          final users = data
              .cast<Map<String, dynamic>>()
              .map(MdmUser.fromJson)
              .toList(growable: false);
          allUsers.addAll(users);
          onPageLoaded?.call(allUsers.length);
          break;
        } else {
          break;
        }
      }

      return allUsers;
    } on DioException catch (e) {
      throw ApiExceptionMapper.fromDioException(e);
    } on Failure {
      rethrow;
    } catch (e, st) {
      log.e('UserApi.getAllUsers parse error: $e', error: e, stackTrace: st);
      throw UnexpectedFailure('Failed to parse user response: $e');
    }
  }

  /// Fetches a single user by [userId].
  Future<MdmUser> getUser(String userId) async {
    try {
      final response = await dio.get<dynamic>('/users/$userId');
      final data = response.data;
      if (data is Map<String, dynamic>) {
        return MdmUser.fromJson(data);
      }
      throw const UnexpectedFailure('Unexpected user detail response format');
    } on DioException catch (e) {
      throw ApiExceptionMapper.fromDioException(e);
    } on Failure {
      rethrow;
    } catch (e, st) {
      log.e('UserApi.getUser parse error: $e', error: e, stackTrace: st);
      throw UnexpectedFailure('Failed to parse user response: $e');
    }
  }

  /// Deletes a user by [userId].
  Future<void> deleteUser(String userId) async {
    try {
      await dio.delete<dynamic>('/users/$userId');
    } on DioException catch (e) {
      throw ApiExceptionMapper.fromDioException(e);
    }
  }

  /// Extracts the cursor parameter from a pagination URL.
  String? _extractCursor(String url) {
    try {
      final uri = Uri.parse(url);
      return uri.queryParameters['cursor'];
    } catch (_) {
      return null;
    }
  }
}
