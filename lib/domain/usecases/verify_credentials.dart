import '../../core/constants/api_constants.dart';
import '../../core/errors/failures.dart';
import '../../core/network/api_client.dart';
import 'package:dio/dio.dart';
import '../../core/errors/api_exception_mapper.dart';

/// Verifies API credentials by making a test request to the devices endpoint.
///
/// This use case creates a temporary [Dio] instance with the provided
/// credentials — it does not use the active profile's stored credentials.
class VerifyCredentials {
  /// Attempts to verify the given credentials.
  ///
  /// Returns `true` on success. Throws a [Failure] on error.
  Future<bool> call({
    required String subdomain,
    required ApiRegion region,
    required String token,
  }) async {
    final baseUrl = ApiConstants.baseUrl(subdomain: subdomain, region: region);
    final dio = ApiClientFactory.create(
      baseUrl: baseUrl,
      tokenProvider: () async => token,
    );

    try {
      final response = await dio.get<dynamic>(
        '/devices',
        queryParameters: {'limit': 1},
      );
      return response.statusCode == 200;
    } on DioException catch (e) {
      throw ApiExceptionMapper.fromDioException(e);
    } finally {
      dio.close();
    }
  }
}
