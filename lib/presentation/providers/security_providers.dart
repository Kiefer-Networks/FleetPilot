import 'dart:convert';
import 'dart:math';
import 'dart:typed_data';

import 'package:crypto/crypto.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../../core/constants/storage_keys.dart';

const _storage = FlutterSecureStorage(
  aOptions: AndroidOptions(),
  iOptions: IOSOptions(
    accessibility: KeychainAccessibility.unlocked_this_device,
  ),
);

// ---------------------------------------------------------------------------
// PBKDF2-HMAC-SHA256 implementation
// ---------------------------------------------------------------------------

const _pbkdf2Iterations = 100000;
const _saltLength = 32;
const _derivedKeyLength = 32;

/// PBKDF2-HMAC-SHA256 key derivation.
Uint8List _pbkdf2(String password, Uint8List salt, int iterations, int keyLen) {
  final hmacSha256 = Hmac(sha256, utf8.encode(password));
  final blocks = (keyLen / 32).ceil();
  final result = BytesBuilder();

  for (var i = 1; i <= blocks; i++) {
    // U1 = PRF(Password, Salt || INT_32_BE(i))
    final blockIndex = Uint8List(4)
      ..buffer.asByteData().setUint32(0, i, Endian.big);
    final firstInput = Uint8List.fromList([...salt, ...blockIndex]);
    var u = hmacSha256.convert(firstInput).bytes;
    final xor = Uint8List.fromList(u);

    // U2..Uc
    for (var j = 1; j < iterations; j++) {
      u = Hmac(sha256, utf8.encode(password)).convert(u).bytes;
      for (var k = 0; k < xor.length; k++) {
        xor[k] ^= u[k];
      }
    }
    result.add(xor);
  }
  return Uint8List.fromList(result.takeBytes().sublist(0, keyLen));
}

/// Generates a cryptographically random salt.
Uint8List _generateSalt() {
  final rng = Random.secure();
  return Uint8List.fromList(
    List.generate(_saltLength, (_) => rng.nextInt(256)),
  );
}

/// Encodes bytes as hex string.
String _hexEncode(List<int> bytes) {
  return bytes.map((b) => b.toRadixString(16).padLeft(2, '0')).join();
}

/// Decodes hex string to bytes.
Uint8List _hexDecode(String hex) {
  final result = Uint8List(hex.length ~/ 2);
  for (var i = 0; i < result.length; i++) {
    result[i] = int.parse(hex.substring(i * 2, i * 2 + 2), radix: 16);
  }
  return result;
}

/// Constant-time comparison to prevent timing attacks.
bool _constantTimeEquals(String a, String b) {
  if (a.length != b.length) return false;
  var result = 0;
  for (var i = 0; i < a.length; i++) {
    result |= a.codeUnitAt(i) ^ b.codeUnitAt(i);
  }
  return result == 0;
}

/// Hash a PIN with PBKDF2. Returns `salt_hex:derived_key_hex`.
String _hashPinPbkdf2(String pin, [Uint8List? salt]) {
  salt ??= _generateSalt();
  final dk = _pbkdf2(pin, salt, _pbkdf2Iterations, _derivedKeyLength);
  return '${_hexEncode(salt)}:${_hexEncode(dk)}';
}

/// Verify a PIN against a stored hash.
/// Supports both legacy (plain SHA-256, no colon) and new (PBKDF2) formats.
bool _verifyPinHash(String pin, String stored) {
  if (stored.contains(':')) {
    // New PBKDF2 format: salt_hex:derived_key_hex
    final parts = stored.split(':');
    if (parts.length != 2) return false;
    final salt = _hexDecode(parts[0]);
    final dk = _pbkdf2(pin, salt, _pbkdf2Iterations, _derivedKeyLength);
    return _constantTimeEquals(parts[1], _hexEncode(dk));
  } else {
    // Legacy plain SHA-256 (no salt) — migrate on next setPin
    final bytes = utf8.encode(pin);
    final legacy = sha256.convert(bytes).toString();
    return _constantTimeEquals(stored, legacy);
  }
}

// ---------------------------------------------------------------------------
// PIN attempt rate limiting
// ---------------------------------------------------------------------------

const _maxAttempts = 5;
const _lockoutDurations = [30, 60, 300]; // seconds: 30s, 1min, 5min

/// Whether a PIN has been set (app lock is active).
final pinEnabledProvider = StateNotifierProvider<PinEnabledNotifier, bool>((
  ref,
) {
  return PinEnabledNotifier();
});

/// Whether biometric authentication is enabled (requires PIN to be set first).
final biometricEnabledProvider =
    StateNotifierProvider<BiometricEnabledNotifier, bool>((ref) {
      return BiometricEnabledNotifier();
    });

class PinEnabledNotifier extends StateNotifier<bool> {
  PinEnabledNotifier() : super(false) {
    _load();
  }

  Future<void> _load() async {
    final hash = await _storage.read(key: StorageKeys.pinHash);
    state = hash != null && hash.isNotEmpty;
  }

  Future<bool> setPin(String pin) async {
    if (pin.length != 6) return false;
    final hash = _hashPinPbkdf2(pin);
    await _storage.write(key: StorageKeys.pinHash, value: hash);
    await _resetFailedAttempts();
    state = true;
    return true;
  }

  Future<void> removePin() async {
    await _storage.delete(key: StorageKeys.pinHash);
    await _storage.delete(key: StorageKeys.biometricEnabled);
    await _resetFailedAttempts();
    state = false;
  }

  /// Verifies the PIN. Returns `true` on success, `false` on failure.
  /// Returns `null` if the account is locked out (rate limited).
  Future<bool?> verifyPin(String pin) async {
    // Check rate limiting
    final lockout = await getRemainingLockoutSeconds();
    if (lockout > 0) return null;

    final stored = await _storage.read(key: StorageKeys.pinHash);
    if (stored == null) return false;

    final valid = _verifyPinHash(pin, stored);

    if (valid) {
      // Migrate legacy hash to PBKDF2 on successful verify
      if (!stored.contains(':')) {
        final upgraded = _hashPinPbkdf2(pin);
        await _storage.write(key: StorageKeys.pinHash, value: upgraded);
      }
      await _resetFailedAttempts();
      return true;
    } else {
      await _recordFailedAttempt();
      return false;
    }
  }

  /// Returns the remaining lockout time in seconds, or 0 if not locked out.
  Future<int> getRemainingLockoutSeconds() async {
    final attemptsStr = await _storage.read(key: StorageKeys.pinFailedAttempts);
    final attempts = int.tryParse(attemptsStr ?? '') ?? 0;
    if (attempts < _maxAttempts) return 0;

    final lockedAtStr = await _storage.read(key: StorageKeys.pinLockedUntil);
    if (lockedAtStr == null) return 0;

    final lockedUntil = int.tryParse(lockedAtStr) ?? 0;
    final now = DateTime.now().millisecondsSinceEpoch;
    final remaining = ((lockedUntil - now) / 1000).ceil();
    return remaining > 0 ? remaining : 0;
  }

  Future<void> _recordFailedAttempt() async {
    final attemptsStr = await _storage.read(key: StorageKeys.pinFailedAttempts);
    final attempts = (int.tryParse(attemptsStr ?? '') ?? 0) + 1;
    await _storage.write(
      key: StorageKeys.pinFailedAttempts,
      value: attempts.toString(),
    );

    if (attempts >= _maxAttempts) {
      // Calculate lockout tier (0, 1, 2 = 30s, 60s, 300s)
      final tier = ((attempts - _maxAttempts) ~/ _maxAttempts).clamp(
        0,
        _lockoutDurations.length - 1,
      );
      final lockoutMs = _lockoutDurations[tier] * 1000;
      final lockedUntil = DateTime.now().millisecondsSinceEpoch + lockoutMs;
      await _storage.write(
        key: StorageKeys.pinLockedUntil,
        value: lockedUntil.toString(),
      );
    }
  }

  Future<void> _resetFailedAttempts() async {
    await _storage.delete(key: StorageKeys.pinFailedAttempts);
    await _storage.delete(key: StorageKeys.pinLockedUntil);
  }
}

class BiometricEnabledNotifier extends StateNotifier<bool> {
  BiometricEnabledNotifier() : super(false) {
    _load();
  }

  Future<void> _load() async {
    final value = await _storage.read(key: StorageKeys.biometricEnabled);
    state = value == 'true';
  }

  Future<void> setEnabled(bool enabled) async {
    if (enabled) {
      await _storage.write(key: StorageKeys.biometricEnabled, value: 'true');
    } else {
      await _storage.delete(key: StorageKeys.biometricEnabled);
    }
    state = enabled;
  }
}

/// Predefined lock timeout options in seconds.
/// 0 means "immediately" (lock on every background/resume cycle).
enum LockTimeout {
  immediately(0),
  seconds30(30),
  seconds60(60),
  seconds120(120),
  minutes5(300);

  const LockTimeout(this.seconds);
  final int seconds;

  static LockTimeout fromSeconds(int s) {
    return LockTimeout.values.firstWhere(
      (t) => t.seconds == s,
      orElse: () => LockTimeout.seconds60,
    );
  }
}

/// The configured session lock timeout.
final lockTimeoutProvider =
    StateNotifierProvider<LockTimeoutNotifier, LockTimeout>((ref) {
      return LockTimeoutNotifier();
    });

class LockTimeoutNotifier extends StateNotifier<LockTimeout> {
  LockTimeoutNotifier() : super(LockTimeout.seconds60) {
    _load();
  }

  Future<void> _load() async {
    final value = await _storage.read(key: StorageKeys.lockTimeoutSeconds);
    if (value != null) {
      final seconds = int.tryParse(value);
      if (seconds != null) {
        state = LockTimeout.fromSeconds(seconds);
      }
    }
  }

  Future<void> setTimeout(LockTimeout timeout) async {
    await _storage.write(
      key: StorageKeys.lockTimeoutSeconds,
      value: timeout.seconds.toString(),
    );
    state = timeout;
  }
}

/// Tracks whether the session is currently locked and needs re-authentication.
///
/// Set to `true` when the app resumes after the configured timeout has elapsed.
/// Set to `false` after the user successfully authenticates.
final sessionLockedProvider =
    StateNotifierProvider<SessionLockedNotifier, bool>((ref) {
      return SessionLockedNotifier();
    });

class SessionLockedNotifier extends StateNotifier<bool> {
  SessionLockedNotifier() : super(false);

  void lock() => state = true;

  void unlock() => state = false;
}

/// Records and checks the backgrounded timestamp.
class SessionTimeoutService {
  const SessionTimeoutService();

  Future<void> recordBackground() async {
    await _storage.write(
      key: StorageKeys.lastBackgroundedAt,
      value: DateTime.now().millisecondsSinceEpoch.toString(),
    );
  }

  /// Returns `true` if the elapsed background time exceeds [timeoutSeconds].
  /// A timeout of 0 means "immediately" — always returns `true`.
  Future<bool> hasTimedOut(int timeoutSeconds) async {
    if (timeoutSeconds == 0) return true;

    final stored = await _storage.read(key: StorageKeys.lastBackgroundedAt);
    if (stored == null) return false;

    final backgroundedAt = int.tryParse(stored);
    if (backgroundedAt == null) return false;

    final elapsed = DateTime.now().millisecondsSinceEpoch - backgroundedAt;
    return elapsed >= timeoutSeconds * 1000;
  }

  Future<void> clear() async {
    await _storage.delete(key: StorageKeys.lastBackgroundedAt);
  }
}
