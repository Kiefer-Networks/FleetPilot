import 'package:dio/dio.dart';

import 'failures.dart';

/// Maps Dio exceptions and HTTP status codes to domain [Failure] types.
abstract final class ApiExceptionMapper {
  /// Converts a [DioException] to the appropriate [Failure].
  static Failure fromDioException(DioException exception) {
    return switch (exception.type) {
      DioExceptionType.connectionTimeout ||
      DioExceptionType.sendTimeout ||
      DioExceptionType.receiveTimeout ||
      DioExceptionType.connectionError => const NetworkFailure(),
      DioExceptionType.badCertificate => const CertificatePinningFailure(),
      DioExceptionType.badResponse => _fromStatusCode(
        exception.response?.statusCode,
      ),
      DioExceptionType.cancel => const UnexpectedFailure('Request cancelled'),
      DioExceptionType.unknown => const NetworkFailure(),
    };
  }

  static Failure _fromStatusCode(int? statusCode) {
    if (statusCode == null) return const UnexpectedFailure();
    return switch (statusCode) {
      401 => const UnauthorizedFailure(),
      403 => const ForbiddenFailure(),
      404 => const NotFoundFailure(),
      422 => const ValidationFailure(),
      429 => const RateLimitFailure(),
      >= 500 => const ServerFailure(),
      _ => const UnexpectedFailure(),
    };
  }
}
