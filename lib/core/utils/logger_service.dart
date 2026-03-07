import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';

/// Centralized logger service. All logging goes through this singleton.
///
/// Never use `print()` or `debugPrint()` directly.
/// Sensitive data (tokens, serials) must never be passed to any log method.
final Logger log = Logger(
  printer: PrettyPrinter(
    methodCount: 0,
    errorMethodCount: 5,
    lineLength: 80,
    noBoxingByDefault: true,
  ),
  level: kReleaseMode ? Level.warning : Level.debug,
);
