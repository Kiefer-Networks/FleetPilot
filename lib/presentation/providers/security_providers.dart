import 'dart:convert';

import 'package:crypto/crypto.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../../core/constants/storage_keys.dart';

const _storage = FlutterSecureStorage(
  aOptions: AndroidOptions(encryptedSharedPreferences: true),
  iOptions: IOSOptions(
    accessibility: KeychainAccessibility.unlocked_this_device,
  ),
);

/// Whether a PIN has been set (app lock is active).
final pinEnabledProvider =
    StateNotifierProvider<PinEnabledNotifier, bool>((ref) {
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
