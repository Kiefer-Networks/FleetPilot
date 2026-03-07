import 'package:dio/dio.dart';

import '../utils/logger_service.dart';

/// Injects the Bearer token into every outgoing request.
///
/// The token is fetched dynamically from secure storage via [tokenProvider].
/// The Authorization header is NEVER logged.
class AuthInterceptor extends Interceptor {
  AuthInterceptor({required this.tokenProvider});

  /// Callback that retrieves the current API token from secure storage.
  final Future<String?> Function() tokenProvider;

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final token = await tokenProvider();
    if (token != null && token.isNotEmpty) {
      options.headers['Authorization'] = 'Bearer $token';
    } else {
      log.w('AuthInterceptor: No token available for request');
    }
    handler.next(options);
  }
}
