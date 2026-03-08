import 'package:flutter_test/flutter_test.dart';
import 'package:fleetpilot/core/constants/api_constants.dart';
import 'package:fleetpilot/domain/entities/connection_profile.dart';

void main() {
  group('ConnectionProfile construction', () {
    test('creates a US region profile', () {
      const profile = ConnectionProfile(
        id: 'profile-001',
        displayName: 'Acme Corp US',
        subdomain: 'acme',
        region: ApiRegion.us,
      );

      expect(profile.id, 'profile-001');
      expect(profile.displayName, 'Acme Corp US');
      expect(profile.subdomain, 'acme');
      expect(profile.region, ApiRegion.us);
    });

    test('creates an EU region profile', () {
      const profile = ConnectionProfile(
        id: 'profile-002',
        displayName: 'Globex EU',
        subdomain: 'globex',
        region: ApiRegion.eu,
      );

      expect(profile.id, 'profile-002');
      expect(profile.displayName, 'Globex EU');
      expect(profile.subdomain, 'globex');
      expect(profile.region, ApiRegion.eu);
    });
  });

  group('ConnectionProfile.fromJson', () {
    test('deserializes a complete US profile', () {
      final json = <String, dynamic>{
        'id': 'json-001',
        'displayName': 'Test Tenant',
        'subdomain': 'testtenant',
        'region': 'us',
      };

      final profile = ConnectionProfile.fromJson(json);

      expect(profile.id, 'json-001');
      expect(profile.displayName, 'Test Tenant');
      expect(profile.subdomain, 'testtenant');
      expect(profile.region, ApiRegion.us);
    });

    test('deserializes a complete EU profile', () {
      final json = <String, dynamic>{
        'id': 'json-002',
        'displayName': 'European Office',
        'subdomain': 'euro-office',
        'region': 'eu',
      };

      final profile = ConnectionProfile.fromJson(json);

      expect(profile.region, ApiRegion.eu);
      expect(profile.subdomain, 'euro-office');
    });

    test('throws when required id is missing', () {
      final json = <String, dynamic>{
        'displayName': 'No ID',
        'subdomain': 'noid',
        'region': 'us',
      };

      expect(() => ConnectionProfile.fromJson(json), throwsA(isA<TypeError>()));
    });

    test('throws when required displayName is missing', () {
      final json = <String, dynamic>{
        'id': 'missing-name',
        'subdomain': 'test',
        'region': 'us',
      };

      expect(() => ConnectionProfile.fromJson(json), throwsA(isA<TypeError>()));
    });

    test('throws when required subdomain is missing', () {
      final json = <String, dynamic>{
        'id': 'missing-sub',
        'displayName': 'Test',
        'region': 'us',
      };

      expect(() => ConnectionProfile.fromJson(json), throwsA(isA<TypeError>()));
    });

    test('throws when region is invalid', () {
      final json = <String, dynamic>{
        'id': 'bad-region',
        'displayName': 'Test',
        'subdomain': 'test',
        'region': 'ap',
      };

      expect(
        () => ConnectionProfile.fromJson(json),
        throwsA(isA<ArgumentError>()),
      );
    });

    test('throws when region is missing', () {
      final json = <String, dynamic>{
        'id': 'no-region',
        'displayName': 'Test',
        'subdomain': 'test',
      };

      expect(() => ConnectionProfile.fromJson(json), throwsA(anything));
    });
  });

  group('ConnectionProfile.toJson', () {
    test('serializes to expected JSON structure', () {
      const profile = ConnectionProfile(
        id: 'serial-001',
        displayName: 'Serialize Test',
        subdomain: 'sertest',
        region: ApiRegion.us,
      );

      final json = profile.toJson();

      expect(json['id'], 'serial-001');
      expect(json['displayName'], 'Serialize Test');
      expect(json['subdomain'], 'sertest');
      expect(json['region'], 'us');
    });

    test('serializes EU region correctly', () {
      const profile = ConnectionProfile(
        id: 'serial-002',
        displayName: 'EU Test',
        subdomain: 'eutest',
        region: ApiRegion.eu,
      );

      final json = profile.toJson();

      expect(json['region'], 'eu');
    });

    test('round-trips through toJson and fromJson', () {
      const original = ConnectionProfile(
        id: 'roundtrip-001',
        displayName: 'Round Trip Test',
        subdomain: 'roundtrip',
        region: ApiRegion.us,
      );

      final json = original.toJson();
      final restored = ConnectionProfile.fromJson(json);

      expect(restored, equals(original));
    });

    test('round-trips EU profile', () {
      const original = ConnectionProfile(
        id: 'roundtrip-eu',
        displayName: 'EU Round Trip',
        subdomain: 'eu-rt',
        region: ApiRegion.eu,
      );

      final json = original.toJson();
      final restored = ConnectionProfile.fromJson(json);

      expect(restored, equals(original));
    });
  });

  group('ConnectionProfile equality', () {
    test('two profiles with identical fields are equal', () {
      const a = ConnectionProfile(
        id: 'eq-001',
        displayName: 'Same',
        subdomain: 'same',
        region: ApiRegion.us,
      );
      const b = ConnectionProfile(
        id: 'eq-001',
        displayName: 'Same',
        subdomain: 'same',
        region: ApiRegion.us,
      );

      expect(a, equals(b));
      expect(a.hashCode, equals(b.hashCode));
    });

    test('profiles with different ids are not equal', () {
      const a = ConnectionProfile(
        id: 'id-a',
        displayName: 'Same',
        subdomain: 'same',
        region: ApiRegion.us,
      );
      const b = ConnectionProfile(
        id: 'id-b',
        displayName: 'Same',
        subdomain: 'same',
        region: ApiRegion.us,
      );

      expect(a, isNot(equals(b)));
    });

    test('profiles with different regions are not equal', () {
      const a = ConnectionProfile(
        id: 'same-id',
        displayName: 'Same',
        subdomain: 'same',
        region: ApiRegion.us,
      );
      const b = ConnectionProfile(
        id: 'same-id',
        displayName: 'Same',
        subdomain: 'same',
        region: ApiRegion.eu,
      );

      expect(a, isNot(equals(b)));
    });
  });

  group('ConnectionProfile.copyWith', () {
    test('copies with updated display name', () {
      const original = ConnectionProfile(
        id: 'copy-001',
        displayName: 'Original Name',
        subdomain: 'orig',
        region: ApiRegion.us,
      );

      final updated = original.copyWith(displayName: 'New Name');

      expect(updated.id, 'copy-001');
      expect(updated.displayName, 'New Name');
      expect(updated.subdomain, 'orig');
      expect(updated.region, ApiRegion.us);
    });

    test('copies with updated region', () {
      const original = ConnectionProfile(
        id: 'copy-002',
        displayName: 'Test',
        subdomain: 'test',
        region: ApiRegion.us,
      );

      final updated = original.copyWith(region: ApiRegion.eu);

      expect(updated.region, ApiRegion.eu);
      expect(updated.id, 'copy-002');
    });

    test('copies with updated subdomain', () {
      const original = ConnectionProfile(
        id: 'copy-003',
        displayName: 'Test',
        subdomain: 'old-sub',
        region: ApiRegion.us,
      );

      final updated = original.copyWith(subdomain: 'new-sub');

      expect(updated.subdomain, 'new-sub');
      expect(updated.displayName, 'Test');
    });
  });

  group('ConnectionProfile.toString', () {
    test('includes all field values', () {
      const profile = ConnectionProfile(
        id: 'str-001',
        displayName: 'String Test',
        subdomain: 'strtest',
        region: ApiRegion.us,
      );

      final str = profile.toString();

      expect(str, contains('str-001'));
      expect(str, contains('String Test'));
      expect(str, contains('strtest'));
      expect(str, contains('ApiRegion.us'));
    });
  });
}
