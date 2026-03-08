import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio/io.dart';

import '../constants/api_constants.dart';
import 'auth_interceptor.dart';
import 'certificate_pinner.dart';
import 'logging_interceptor.dart';
import 'rate_limit_interceptor.dart';

/// Factory for creating configured [Dio] instances.
///
/// Each instance enforces TLS, applies auth headers, rate limiting,
/// CA-based certificate pinning, and sanitized logging.
abstract final class ApiClientFactory {
  /// Creates a [Dio] instance configured for the given API base URL.
  ///
  /// [baseUrl] — fully qualified API base URL.
  /// [tokenProvider] — callback returning the current bearer token.
  static Dio create({
    required String baseUrl,
    required Future<String?> Function() tokenProvider,
  }) {
    final rateLimitInterceptor = RateLimitInterceptor();

    final dio = Dio(
      BaseOptions(
        baseUrl: baseUrl,
        connectTimeout: const Duration(
          milliseconds: ApiConstants.connectTimeoutMs,
        ),
        receiveTimeout: const Duration(
          milliseconds: ApiConstants.receiveTimeoutMs,
        ),
        headers: {
          'Accept': 'application/json',
          'Content-Type': 'application/json',
        },
      ),
    );

    // CA-based certificate pinning: use a SecurityContext that only
    // trusts the Let's Encrypt chain (ISRG Root X1 + intermediates).
    final pinnedContext = CertificatePinner.securityContext;
    if (pinnedContext != null) {
      dio.httpClientAdapter = IOHttpClientAdapter(
        createHttpClient: () {
          return HttpClient(context: pinnedContext);
        },
      );
    }

    rateLimitInterceptor.dio = dio;

    dio.interceptors.addAll([
      AuthInterceptor(tokenProvider: tokenProvider),
      rateLimitInterceptor,
      SanitizedLoggingInterceptor(),
    ]);

    return dio;
  }
}
