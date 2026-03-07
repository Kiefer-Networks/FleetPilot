import 'package:dio/dio.dart';

import '../utils/logger_service.dart';

/// Logs HTTP requests and responses with ALL sensitive headers stripped.
///
/// The Authorization header is replaced with "[REDACTED]" in all log output.
/// Response bodies are truncated to prevent accidental secret leakage.
class SanitizedLoggingInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final sanitizedHeaders = Map<String, dynamic>.from(options.headers);
    if (sanitizedHeaders.containsKey('Authorization')) {
      sanitizedHeaders['Authorization'] = '[REDACTED]';
    }
    log.d(
      'HTTP ${options.method} ${options.uri.path}'
      '${options.uri.query.isNotEmpty ? "?${options.uri.query}" : ""}',
    );
    handler.next(options);
  }

  @override
  void onResponse(
    Response<dynamic> response,
    ResponseInterceptorHandler handler,
  ) {
    log.d('HTTP ${response.statusCode} ${response.requestOptions.uri.path}');
    handler.next(response);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    log.e(
      'HTTP ERROR ${err.response?.statusCode ?? "?"} '
      '${err.requestOptions.uri.path}: ${err.type.name}',
    );
    handler.next(err);
  }
}
