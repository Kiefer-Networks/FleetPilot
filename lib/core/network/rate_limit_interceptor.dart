import 'package:dio/dio.dart';

import '../utils/logger_service.dart';

/// Handles HTTP 429 responses by respecting the Retry-After header
/// and retrying the request automatically.
class RateLimitInterceptor extends Interceptor {
  /// The [Dio] instance used for retrying requests.
  /// Must be set after construction to avoid circular references.
  Dio? dio;

  @override
  Future<void> onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    if (err.response?.statusCode == 429) {
      final retryAfter = _parseRetryAfter(err.response);
      if (retryAfter != null && retryAfter > 0 && dio != null) {
        log.w(
          'RateLimitInterceptor: 429 received, '
          'retrying after $retryAfter seconds',
        );
        await Future<void>.delayed(Duration(seconds: retryAfter));

        try {
          final response = await dio!.fetch<dynamic>(err.requestOptions);
          handler.resolve(response);
          return;
        } on DioException catch (retryError) {
          handler.next(retryError);
          return;
        }
      }
    }
    handler.next(err);
  }

  int? _parseRetryAfter(Response<dynamic>? response) {
    final header = response?.headers.value('retry-after');
    if (header == null) return null;
    return int.tryParse(header);
  }
}
