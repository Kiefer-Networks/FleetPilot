/// Extensions on [String] for validation and formatting.
extension StringExtensions on String {
  /// Whether this string is a valid subdomain component.
  ///
  /// Rules: alphanumeric + hyphens, max 63 chars,
  /// no leading/trailing hyphens, no protocol prefix.
  bool get isValidSubdomain {
    if (isEmpty || length > 63) return false;
    if (startsWith('-') || endsWith('-')) return false;
    if (contains('://')) return false;
    return RegExp(
      r'^[a-zA-Z0-9][a-zA-Z0-9-]*[a-zA-Z0-9]$|^[a-zA-Z0-9]$',
    ).hasMatch(this);
  }

  /// Whether this string looks like a valid API bearer token.
  ///
  /// Allows alphanumeric characters plus common token delimiters
  /// (hyphens, underscores, dots, colons). Length must be 20–500 chars.
  bool get isValidApiToken {
    if (length < 20 || length > 500) return false;
    return RegExp(r'^[a-zA-Z0-9\-_.:]+$').hasMatch(this);
  }
}
