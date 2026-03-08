import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fleetpilot/core/errors/api_exception_mapper.dart';
import 'package:fleetpilot/core/errors/failures.dart';

void main() {
  /// Helper to build a [DioException] with the given [statusCode] and
  /// [DioExceptionType.badResponse].
  DioException badResponse(int statusCode) {
    final requestOptions = RequestOptions(path: '/devices');
    return DioException(
      requestOptions: requestOptions,
      type: DioExceptionType.badResponse,
      response: Response(
        requestOptions: requestOptions,
        statusCode: statusCode,
      ),
    );
  }

  /// Helper to build a [DioException] of a specific [type] without a response.
  DioException ofType(DioExceptionType type) {
    return DioException(
      requestOptions: RequestOptions(path: '/devices'),
      type: type,
    );
  }

  group('ApiExceptionMapper.fromDioException', () {
    group('HTTP status code mapping', () {
      test('401 maps to UnauthorizedFailure', () {
        final failure = ApiExceptionMapper.fromDioException(badResponse(401));

        expect(failure, isA<UnauthorizedFailure>());
        expect(failure.message, 'Invalid or expired API token');
      });

      test('403 maps to ForbiddenFailure', () {
        final failure = ApiExceptionMapper.fromDioException(badResponse(403));

        expect(failure, isA<ForbiddenFailure>());
        expect(failure.message, 'Insufficient token permissions');
      });

      test('404 maps to NotFoundFailure', () {
        final failure = ApiExceptionMapper.fromDioException(badResponse(404));

        expect(failure, isA<NotFoundFailure>());
        expect(failure.message, 'Resource not found');
      });

      test('422 maps to ValidationFailure', () {
        final failure = ApiExceptionMapper.fromDioException(badResponse(422));

        expect(failure, isA<ValidationFailure>());
        expect(failure.message, 'Validation error');
      });

      test('429 maps to RateLimitFailure', () {
        final failure = ApiExceptionMapper.fromDioException(badResponse(429));

        expect(failure, isA<RateLimitFailure>());
        expect(failure.message, 'Rate limit exceeded');
      });

      test('500 maps to ServerFailure', () {
        final failure = ApiExceptionMapper.fromDioException(badResponse(500));

        expect(failure, isA<ServerFailure>());
        expect(failure.message, 'Server error');
      });

      test('502 (Bad Gateway) maps to ServerFailure', () {
        final failure = ApiExceptionMapper.fromDioException(badResponse(502));

        expect(failure, isA<ServerFailure>());
      });

      test('503 (Service Unavailable) maps to ServerFailure', () {
        final failure = ApiExceptionMapper.fromDioException(badResponse(503));

        expect(failure, isA<ServerFailure>());
      });

      test('504 (Gateway Timeout) maps to ServerFailure', () {
        final failure = ApiExceptionMapper.fromDioException(badResponse(504));

        expect(failure, isA<ServerFailure>());
      });

      test('599 maps to ServerFailure', () {
        final failure = ApiExceptionMapper.fromDioException(badResponse(599));

        expect(failure, isA<ServerFailure>());
      });

      test('400 (Bad Request) maps to UnexpectedFailure', () {
        final failure = ApiExceptionMapper.fromDioException(badResponse(400));

        expect(failure, isA<UnexpectedFailure>());
      });

      test('405 (Method Not Allowed) maps to UnexpectedFailure', () {
        final failure = ApiExceptionMapper.fromDioException(badResponse(405));

        expect(failure, isA<UnexpectedFailure>());
      });

      test('418 (I\'m a Teapot) maps to UnexpectedFailure', () {
        final failure = ApiExceptionMapper.fromDioException(badResponse(418));

        expect(failure, isA<UnexpectedFailure>());
      });
    });

    group('badResponse with null status code', () {
      test('null status code maps to UnexpectedFailure', () {
        final requestOptions = RequestOptions(path: '/devices');
        final exception = DioException(
          requestOptions: requestOptions,
          type: DioExceptionType.badResponse,
          response: Response(requestOptions: requestOptions, statusCode: null),
        );

        final failure = ApiExceptionMapper.fromDioException(exception);

        expect(failure, isA<UnexpectedFailure>());
      });

      test('badResponse with no response object maps to UnexpectedFailure', () {
        final exception = DioException(
          requestOptions: RequestOptions(path: '/devices'),
          type: DioExceptionType.badResponse,
        );

        final failure = ApiExceptionMapper.fromDioException(exception);

        expect(failure, isA<UnexpectedFailure>());
      });
    });

    group('timeout exceptions map to NetworkFailure', () {
      test('connectionTimeout maps to NetworkFailure', () {
        final failure = ApiExceptionMapper.fromDioException(
          ofType(DioExceptionType.connectionTimeout),
        );

        expect(failure, isA<NetworkFailure>());
        expect(failure.message, 'Network unreachable');
      });

      test('sendTimeout maps to NetworkFailure', () {
        final failure = ApiExceptionMapper.fromDioException(
          ofType(DioExceptionType.sendTimeout),
        );

        expect(failure, isA<NetworkFailure>());
      });

      test('receiveTimeout maps to NetworkFailure', () {
        final failure = ApiExceptionMapper.fromDioException(
          ofType(DioExceptionType.receiveTimeout),
        );

        expect(failure, isA<NetworkFailure>());
      });
    });

    group('connection error maps to NetworkFailure', () {
      test('connectionError maps to NetworkFailure', () {
        final failure = ApiExceptionMapper.fromDioException(
          ofType(DioExceptionType.connectionError),
        );

        expect(failure, isA<NetworkFailure>());
      });
    });

    group('certificate error maps to CertificatePinningFailure', () {
      test('badCertificate maps to CertificatePinningFailure', () {
        final failure = ApiExceptionMapper.fromDioException(
          ofType(DioExceptionType.badCertificate),
        );

        expect(failure, isA<CertificatePinningFailure>());
        expect(failure.message, 'Certificate pinning validation failed');
      });
    });

    group('cancel maps to UnexpectedFailure', () {
      test('cancel maps to UnexpectedFailure with cancellation message', () {
        final failure = ApiExceptionMapper.fromDioException(
          ofType(DioExceptionType.cancel),
        );

        expect(failure, isA<UnexpectedFailure>());
        expect(failure.message, 'Request cancelled');
      });
    });

    group('unknown maps to NetworkFailure', () {
      test('unknown type maps to NetworkFailure', () {
        final failure = ApiExceptionMapper.fromDioException(
          ofType(DioExceptionType.unknown),
        );

        expect(failure, isA<NetworkFailure>());
      });
    });
  });

  group('Failure.toString', () {
    test('UnauthorizedFailure toString includes class name and message', () {
      const failure = UnauthorizedFailure();
      expect(failure.toString(), contains('UnauthorizedFailure'));
      expect(failure.toString(), contains('Invalid or expired API token'));
    });

    test('ServerFailure toString includes class name', () {
      const failure = ServerFailure();
      expect(failure.toString(), contains('ServerFailure'));
      expect(failure.toString(), contains('Server error'));
    });

    test('RateLimitFailure retryAfterSeconds is null by default', () {
      const failure = RateLimitFailure();
      expect(failure.retryAfterSeconds, isNull);
    });

    test('RateLimitFailure stores retryAfterSeconds', () {
      const failure = RateLimitFailure(retryAfterSeconds: 30);
      expect(failure.retryAfterSeconds, 30);
    });

    test('UnexpectedFailure default message', () {
      const failure = UnexpectedFailure();
      expect(failure.message, 'Unexpected error');
    });

    test('UnexpectedFailure custom message', () {
      const failure = UnexpectedFailure('Something went very wrong');
      expect(failure.message, 'Something went very wrong');
    });
  });
}
