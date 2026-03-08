import 'dart:convert';

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
    final hash = _hashPin(pin);
    await _storage.write(key: StorageKeys.pinHash, value: hash);
    state = true;
    return true;
  }

  Future<void> removePin() async {
    await _storage.delete(key: StorageKeys.pinHash);
    await _storage.delete(key: StorageKeys.biometricEnabled);
    state = false;
  }

  Future<bool> verifyPin(String pin) async {
    final stored = await _storage.read(key: StorageKeys.pinHash);
    if (stored == null) return false;
    return stored == _hashPin(pin);
  }

  static String _hashPin(String pin) {
    final bytes = utf8.encode(pin);
    return sha256.convert(bytes).toString();
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
