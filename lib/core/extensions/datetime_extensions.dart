/// Extensions on [DateTime] for relative time formatting.
extension DateTimeExtensions on DateTime {
  /// Returns a human-readable relative time string (e.g. "5 min ago").
  String get relativeTime {
    final now = DateTime.now();
    final diff = now.difference(this);

    if (diff.isNegative) return 'just now';
    if (diff.inSeconds < 60) return 'just now';
    if (diff.inMinutes < 60) return '${diff.inMinutes} min ago';
    if (diff.inHours < 24) return '${diff.inHours}h ago';
    if (diff.inDays < 7) return '${diff.inDays}d ago';
    if (diff.inDays < 30) return '${diff.inDays ~/ 7}w ago';
    if (diff.inDays < 365) return '${diff.inDays ~/ 30}mo ago';
    return '${diff.inDays ~/ 365}y ago';
  }
}
