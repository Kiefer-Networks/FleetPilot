/// API configuration constants for the endpoint management API.
abstract final class ApiConstants {
  /// Maximum number of items per page.
  static const int pageLimit = 300;

  /// Default request timeout in milliseconds.
  static const int connectTimeoutMs = 15000;

  /// Default response receive timeout in milliseconds.
  static const int receiveTimeoutMs = 30000;

  /// Constructs the base URL for the given [subdomain] and [region].
  static String baseUrl({
    required String subdomain,
    required ApiRegion region,
  }) {
    return switch (region) {
      ApiRegion.us => 'https://$subdomain.api.kandji.io/api/v1',
      ApiRegion.eu => 'https://$subdomain.api.eu.kandji.io/api/v1',
    };
  }

  /// Derives the v2 base URL from a v1 base URL.
  /// E.g. `https://sub.api.kandji.io/api/v1` → `https://sub.api.kandji.io/api/v2`
  static String v2BaseUrl(String v1BaseUrl) =>
      v1BaseUrl.replaceFirst('/api/v1', '/api/v2');

  /// Constructs a display-friendly API URL preview.
  static String urlPreview({
    required String subdomain,
    required ApiRegion region,
  }) {
    final host = switch (region) {
      ApiRegion.us => '$subdomain.api.kandji.io',
      ApiRegion.eu => '$subdomain.api.eu.kandji.io',
    };
    return 'https://$host';
  }
}

/// Supported API regions.
enum ApiRegion {
  us,
  eu;

  /// Display label for the region.
  String get label => switch (this) {
    ApiRegion.us => 'US',
    ApiRegion.eu => 'EU',
  };
}
