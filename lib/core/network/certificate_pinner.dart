import 'dart:io';

import 'package:flutter/services.dart';

import '../utils/logger_service.dart';

/// CA-based certificate pinning for Kandji API endpoints.
///
/// Instead of pinning volatile leaf certificate SPKI hashes (which rotate
/// every 90 days with Let's Encrypt), this pins the **trusted CA chain**:
///
/// - **ISRG Root X1** — valid until 2035
/// - **Let's Encrypt intermediates** (R10–R12, E5–E7) — valid until 2027
///
/// A [SecurityContext] with only these CAs is created. The TLS handshake
/// itself validates the full chain — if the server presents a certificate
/// not chained to our trusted CAs, the connection is rejected.
///
/// This means leaf certificates can rotate freely without app updates.
abstract final class CertificatePinner {
  static const _caBundleAsset = 'assets/certs/letsencrypt_ca_bundle.pem';

  static SecurityContext? _securityContext;

  /// Domains that require CA pinning.
  /// Connections to other hosts use the system trust store.
  static const _pinnedDomains = [
    'api.kandji.io',
    'api.eu.kandji.io',
  ];

  /// Initializes the pinned [SecurityContext] by loading the embedded
  /// CA bundle from assets. Must be called once at app startup.
  static Future<void> initialize() async {
    final bundleBytes = await rootBundle.load(_caBundleAsset);
    _securityContext = SecurityContext(withTrustedRoots: false);
    _securityContext!.setTrustedCertificatesBytes(
      bundleBytes.buffer.asUint8List(),
    );
    log.i('CertificatePinner: CA bundle loaded');
  }

  /// Returns the pinned [SecurityContext], or `null` if [initialize]
  /// has not been called yet (falls back to system trust store).
  static SecurityContext? get securityContext => _securityContext;

  /// Returns `true` if [host] should be pinned.
  static bool isPinnedHost(String host) {
    return _pinnedDomains.any(
      (domain) => host == domain || host.endsWith('.$domain'),
    );
  }
}
