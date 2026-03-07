import 'package:local_auth/local_auth.dart';

/// Service for biometric and device-credential authentication.
///
/// Wraps [LocalAuthentication] with enterprise-appropriate defaults.
/// Never caches auth state — every call is a fresh biometric prompt.
class BiometricService {
  BiometricService({LocalAuthentication? auth})
    : _auth = auth ?? LocalAuthentication();

  final LocalAuthentication _auth;

  /// Whether the device supports any form of biometric or device credential.
  Future<bool> get isAvailable async {
    final canCheck = await _auth.canCheckBiometrics;
    final isDeviceSupported = await _auth.isDeviceSupported();
    return canCheck || isDeviceSupported;
  }

  /// Prompts the user for biometric or device credential authentication.
  ///
  /// [reason] is shown in the system biometric prompt.
  /// Returns `true` if authenticated, `false` otherwise.
  Future<bool> authenticate({required String reason}) async {
    try {
      return await _auth.authenticate(
        localizedReason: reason,
        options: const AuthenticationOptions(
          stickyAuth: true,
          biometricOnly: false,
        ),
      );
    } catch (_) {
      return false;
    }
  }
}
