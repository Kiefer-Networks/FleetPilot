import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:crypto/crypto.dart';

import '../utils/logger_service.dart';

/// SPKI SHA-256 certificate pinning for Kandji API endpoints.
///
/// Validates that the server certificate's SubjectPublicKeyInfo hash
/// matches one of the pinned hashes for the given domain.
abstract final class CertificatePinner {
  // TODO: Replace these placeholder hashes with real SPKI SHA-256 pin hashes
  // before production release. Generate them with:
  //   openssl s_client -connect <host>:443 -servername <host> 2>/dev/null \
  //     | openssl x509 -pubkey -noout \
  //     | openssl pkey -pubin -outform der \
  //     | openssl dgst -sha256 -binary \
  //     | openssl enc -base64
  static const _pins = <String, List<String>>{
    'api.kandji.io': [
      // TODO: Replace with actual primary SPKI SHA-256 hash
      'AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=',
      // TODO: Replace with actual backup SPKI SHA-256 hash
      'BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB=',
    ],
    'api.eu.kandji.io': [
      // TODO: Replace with actual primary SPKI SHA-256 hash
      'AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=',
      // TODO: Replace with actual backup SPKI SHA-256 hash
      'BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB=',
    ],
  };

  /// Returns `true` if the certificate is valid for the given [host].
  ///
  /// Returns `true` immediately for hosts without configured pins.
  /// Returns `false` if the certificate is null or its SPKI hash
  /// does not match any pinned hash.
  static bool validate(X509Certificate? certificate, String host, int port) {
    final pins = _pinsForHost(host);
    if (pins == null) return true;

    if (certificate == null) {
      log.e('CertificatePinner: No certificate presented by $host');
      return false;
    }

    final spkiHash = _computeSpkiHash(certificate);
    if (spkiHash == null) {
      log.e('CertificatePinner: Failed to extract SPKI from certificate');
      return false;
    }

    final matched = pins.contains(spkiHash);

    if (!matched) {
      log.e(
        'CertificatePinner: Pin mismatch for $host — '
        'got $spkiHash',
      );
    }

    return matched;
  }

  static List<String>? _pinsForHost(String host) {
    for (final entry in _pins.entries) {
      if (host == entry.key || host.endsWith('.${entry.key}')) {
        return entry.value;
      }
    }
    return null;
  }

  /// Extracts the SubjectPublicKeyInfo from the DER-encoded certificate
  /// and returns its base64-encoded SHA-256 hash.
  static String? _computeSpkiHash(X509Certificate certificate) {
    final spki = _extractSpki(certificate.der);
    if (spki == null) return null;
    final digest = sha256.convert(spki);
    return base64Encode(digest.bytes);
  }

  /// Parses minimal ASN.1 DER to extract the SubjectPublicKeyInfo field
  /// from an X.509 certificate.
  ///
  /// X.509 structure:
  ///   SEQUENCE (Certificate)
  ///     SEQUENCE (TBSCertificate)
  ///       [0] EXPLICIT version (optional)
  ///       INTEGER serialNumber
  ///       SEQUENCE signature algorithm
  ///       SEQUENCE issuer
  ///       SEQUENCE validity
  ///       SEQUENCE subject
  ///       SEQUENCE subjectPublicKeyInfo  ← we want this
  static Uint8List? _extractSpki(Uint8List der) {
    try {
      // Certificate SEQUENCE
      final cert = _readTag(der, 0);
      if (cert == null) return null;

      // TBSCertificate SEQUENCE
      final tbs = _readTag(der, cert.contentOffset);
      if (tbs == null) return null;

      var pos = tbs.contentOffset;

      // [0] EXPLICIT version — context tag 0xa0 (optional)
      if (pos < der.length && der[pos] == 0xa0) {
        final version = _readTag(der, pos);
        if (version == null) return null;
        pos = version.contentOffset + version.contentLength;
      }

      // serialNumber INTEGER
      final serial = _readTag(der, pos);
      if (serial == null) return null;
      pos = serial.contentOffset + serial.contentLength;

      // signature algorithm SEQUENCE
      final sigAlg = _readTag(der, pos);
      if (sigAlg == null) return null;
      pos = sigAlg.contentOffset + sigAlg.contentLength;

      // issuer SEQUENCE
      final issuer = _readTag(der, pos);
      if (issuer == null) return null;
      pos = issuer.contentOffset + issuer.contentLength;

      // validity SEQUENCE
      final validity = _readTag(der, pos);
      if (validity == null) return null;
      pos = validity.contentOffset + validity.contentLength;

      // subject SEQUENCE
      final subject = _readTag(der, pos);
      if (subject == null) return null;
      pos = subject.contentOffset + subject.contentLength;

      // subjectPublicKeyInfo SEQUENCE — return the full TLV
      final spki = _readTag(der, pos);
      if (spki == null) return null;

      return Uint8List.sublistView(
        der,
        pos,
        spki.contentOffset + spki.contentLength,
      );
    } catch (_) {
      return null;
    }
  }

  /// Reads an ASN.1 DER tag+length at [offset] and returns the parsed element.
  static _Asn1Element? _readTag(Uint8List data, int offset) {
    if (offset >= data.length) return null;

    final tag = data[offset];
    var pos = offset + 1;
    if (pos >= data.length) return null;

    // Parse length
    var length = data[pos];
    pos++;

    if (length & 0x80 != 0) {
      final numLengthBytes = length & 0x7f;
      if (numLengthBytes == 0 || numLengthBytes > 4) return null;
      length = 0;
      for (var i = 0; i < numLengthBytes; i++) {
        if (pos >= data.length) return null;
        length = (length << 8) | data[pos];
        pos++;
      }
    }

    return _Asn1Element(tag: tag, contentOffset: pos, contentLength: length);
  }
}

class _Asn1Element {
  const _Asn1Element({
    required this.tag,
    required this.contentOffset,
    required this.contentLength,
  });

  final int tag;
  final int contentOffset;
  final int contentLength;
}
