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
}
