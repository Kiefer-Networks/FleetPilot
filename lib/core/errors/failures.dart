/// Base class for all domain-level failures.
sealed class Failure {
  const Failure(this.message);

  /// A developer-facing message describing the failure.
  final String message;

  @override
  String toString() => '$runtimeType: $message';
}

/// The API returned HTTP 401 — invalid or expired token.
class UnauthorizedFailure extends Failure {
  const UnauthorizedFailure() : super('Invalid or expired API token');
}

/// The API returned HTTP 403 — insufficient token permissions.
class ForbiddenFailure extends Failure {
  const ForbiddenFailure() : super('Insufficient token permissions');
}

/// The API returned HTTP 404 — resource not found.
class NotFoundFailure extends Failure {
  const NotFoundFailure() : super('Resource not found');
}

/// The API returned HTTP 422 — validation error.
class ValidationFailure extends Failure {
  const ValidationFailure() : super('Validation error');
}

/// The API returned HTTP 429 — rate limit exceeded.
class RateLimitFailure extends Failure {
  const RateLimitFailure({this.retryAfterSeconds})
    : super('Rate limit exceeded');

  /// Seconds to wait before retrying, from the Retry-After header.
  final int? retryAfterSeconds;
}

/// The API returned HTTP 5xx — server error.
class ServerFailure extends Failure {
  const ServerFailure() : super('Server error');
}

/// A network error occurred (no connectivity, DNS failure, timeout).
class NetworkFailure extends Failure {
  const NetworkFailure() : super('Network unreachable');
}

/// An unexpected error occurred that doesn't fit other categories.
class UnexpectedFailure extends Failure {
  const UnexpectedFailure([super.message = 'Unexpected error']);
}

/// Certificate pinning validation failed.
class CertificatePinningFailure extends Failure {
  const CertificatePinningFailure()
    : super('Certificate pinning validation failed');
}
