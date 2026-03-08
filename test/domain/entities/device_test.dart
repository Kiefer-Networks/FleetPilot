import 'package:flutter_test/flutter_test.dart';
import 'package:fleetpilot/domain/entities/device.dart';

void main() {
  group('Device.fromJson', () {
    test('parses a fully populated API response', () {
      final json = <String, dynamic>{
        'device_id': 'abc-123-def',
        'device_name': 'John\u2019s MacBook Pro',
        'serial_number': 'C02ZN1ABCDEF',
        'platform': 'Mac',
        'model': 'MacBook Pro (14-inch, 2023)',
        'os_version': '14.4.1',
        'asset_tag': 'IT-00421',
        'blueprint_id': 'bp-001',
        'blueprint_name': 'Engineering Standard',
        'user': {
          'email': 'john.doe@acme.corp',
          'name': 'John Doe',
          'user_id': 'user-789',
        },
        'last_check_in': '2026-03-07T18:42:00Z',
        'first_enrollment': '2024-01-15T09:00:00Z',
        'agent_version': '4.2.1',
        'is_missing': false,
        'is_removed': false,
        'is_supervised': true,
        'general_status': 'pass',
        'lost_mode_status': 'disabled',
        'tags': ['finance', 'managed'],
      };

      final device = Device.fromJson(json);

      expect(device.deviceId, 'abc-123-def');
      expect(device.deviceName, 'John\u2019s MacBook Pro');
      expect(device.serialNumber, 'C02ZN1ABCDEF');
      expect(device.platform, 'Mac');
      expect(device.model, 'MacBook Pro (14-inch, 2023)');
      expect(device.osVersion, '14.4.1');
      expect(device.assetTag, 'IT-00421');
      expect(device.blueprintId, 'bp-001');
      expect(device.blueprintName, 'Engineering Standard');
      expect(device.user, isNotNull);
      expect(device.user!.email, 'john.doe@acme.corp');
      expect(device.user!.name, 'John Doe');
      expect(device.user!.userId, 'user-789');
      expect(device.lastCheckIn, '2026-03-07T18:42:00Z');
      expect(device.firstEnrollment, '2024-01-15T09:00:00Z');
      expect(device.agentVersion, '4.2.1');
      expect(device.isMissing, false);
      expect(device.isRemoved, false);
      expect(device.isSupervised, true);
      expect(device.generalStatus, 'pass');
      expect(device.lostModeStatus, 'disabled');
      expect(device.tags, ['finance', 'managed']);
    });

    test('parses minimal response with only required field', () {
      final json = <String, dynamic>{'device_id': 'minimal-device-001'};

      final device = Device.fromJson(json);

      expect(device.deviceId, 'minimal-device-001');
      expect(device.deviceName, isNull);
      expect(device.serialNumber, isNull);
      expect(device.platform, isNull);
      expect(device.model, isNull);
      expect(device.osVersion, isNull);
      expect(device.assetTag, isNull);
      expect(device.blueprintId, isNull);
      expect(device.blueprintName, isNull);
      expect(device.user, isNull);
      expect(device.lastCheckIn, isNull);
      expect(device.firstEnrollment, isNull);
      expect(device.agentVersion, isNull);
      expect(device.isMissing, false);
      expect(device.isRemoved, false);
      expect(device.isSupervised, false);
      expect(device.generalStatus, isNull);
      expect(device.lostModeStatus, isNull);
      expect(device.tags, isEmpty);
    });

    test('handles null user field gracefully', () {
      final json = <String, dynamic>{'device_id': 'dev-no-user', 'user': null};

      final device = Device.fromJson(json);
      expect(device.user, isNull);
    });

    test('handles non-map user field (e.g. empty string) gracefully', () {
      // The API sometimes returns an empty string for the user field
      // instead of null or a map.
      final json = <String, dynamic>{'device_id': 'dev-empty-user', 'user': ''};

      final device = Device.fromJson(json);
      expect(device.user, isNull);
    });

    test('handles user map with all null subfields', () {
      final json = <String, dynamic>{
        'device_id': 'dev-null-user-fields',
        'user': <String, dynamic>{'email': null, 'name': null, 'user_id': null},
      };

      final device = Device.fromJson(json);
      expect(device.user, isNotNull);
      expect(device.user!.email, isNull);
      expect(device.user!.name, isNull);
      expect(device.user!.userId, isNull);
    });

    group('tags field parsing', () {
      test('parses tags as a list of strings', () {
        final json = <String, dynamic>{
          'device_id': 'dev-tags-strings',
          'tags': ['finance', 'vip', 'remote'],
        };

        final device = Device.fromJson(json);
        expect(device.tags, ['finance', 'vip', 'remote']);
      });

      test('parses tags as a list of maps with name key', () {
        final json = <String, dynamic>{
          'device_id': 'dev-tags-maps',
          'tags': [
            {'name': 'engineering'},
            {'name': 'onsite'},
          ],
        };

        final device = Device.fromJson(json);
        expect(device.tags, ['engineering', 'onsite']);
      });

      test('handles null tags field', () {
        final json = <String, dynamic>{
          'device_id': 'dev-tags-null',
          'tags': null,
        };

        final device = Device.fromJson(json);
        expect(device.tags, isEmpty);
      });

      test('handles missing tags field', () {
        final json = <String, dynamic>{'device_id': 'dev-tags-missing'};

        final device = Device.fromJson(json);
        expect(device.tags, isEmpty);
      });

      test('filters out empty strings from tags', () {
        final json = <String, dynamic>{
          'device_id': 'dev-tags-empty',
          'tags': ['valid', '', 'also-valid'],
        };

        final device = Device.fromJson(json);
        expect(device.tags, ['valid', 'also-valid']);
      });

      test('filters out map entries with null name', () {
        final json = <String, dynamic>{
          'device_id': 'dev-tags-null-name',
          'tags': [
            {'name': 'keep-me'},
            {'name': null},
            {'name': 'keep-me-too'},
          ],
        };

        final device = Device.fromJson(json);
        expect(device.tags, ['keep-me', 'keep-me-too']);
      });

      test('handles mixed tag types (strings and maps)', () {
        final json = <String, dynamic>{
          'device_id': 'dev-tags-mixed',
          'tags': [
            'plain-string',
            {'name': 'from-map'},
          ],
        };

        final device = Device.fromJson(json);
        expect(device.tags, ['plain-string', 'from-map']);
      });

      test('converts non-string non-map tag items via toString()', () {
        final json = <String, dynamic>{
          'device_id': 'dev-tags-int',
          'tags': [42, 'normal'],
        };

        final device = Device.fromJson(json);
        expect(device.tags, ['42', 'normal']);
      });
    });

    group('boolean defaults', () {
      test('is_missing defaults to false when absent', () {
        final json = <String, dynamic>{'device_id': 'dev-bool-defaults'};
        final device = Device.fromJson(json);
        expect(device.isMissing, false);
      });

      test('is_missing defaults to false when null', () {
        final json = <String, dynamic>{
          'device_id': 'dev-bool-null',
          'is_missing': null,
        };
        final device = Device.fromJson(json);
        expect(device.isMissing, false);
      });

      test('is_removed true is parsed correctly', () {
        final json = <String, dynamic>{
          'device_id': 'dev-removed',
          'is_removed': true,
        };
        final device = Device.fromJson(json);
        expect(device.isRemoved, true);
      });

      test('is_supervised true is parsed correctly', () {
        final json = <String, dynamic>{
          'device_id': 'dev-supervised',
          'is_supervised': true,
        };
        final device = Device.fromJson(json);
        expect(device.isSupervised, true);
      });
    });

    test('handles realistic iPhone response', () {
      final json = <String, dynamic>{
        'device_id': 'iphone-uuid-001',
        'device_name': 'iPhone 15 Pro',
        'serial_number': 'DNQX2ABC123',
        'platform': 'iPhone',
        'model': 'iPhone 15 Pro',
        'os_version': '17.4',
        'asset_tag': null,
        'blueprint_id': 'bp-mobile',
        'blueprint_name': 'Mobile Standard',
        'user': {
          'email': 'jane.smith@acme.corp',
          'name': 'Jane Smith',
          'user_id': 'user-456',
        },
        'last_check_in': '2026-03-08T10:30:00Z',
        'first_enrollment': '2025-09-01T14:22:00Z',
        'agent_version': null,
        'is_missing': false,
        'is_removed': false,
        'is_supervised': true,
        'general_status': 'pass',
        'lost_mode_status': 'enabled',
        'tags': ['mobile', 'executive'],
      };

      final device = Device.fromJson(json);

      expect(device.platform, 'iPhone');
      expect(device.lostModeStatus, 'enabled');
      expect(device.agentVersion, isNull);
      expect(device.assetTag, isNull);
      expect(device.isSupervised, true);
      expect(device.tags, hasLength(2));
    });

    test('handles iPad response with empty tags list', () {
      final json = <String, dynamic>{
        'device_id': 'ipad-uuid-002',
        'device_name': 'iPad Air (5th generation)',
        'serial_number': 'DLXP3XYZ789',
        'platform': 'iPad',
        'model': 'iPad Air (5th generation)',
        'os_version': '17.3.1',
        'is_supervised': false,
        'tags': <String>[],
      };

      final device = Device.fromJson(json);

      expect(device.platform, 'iPad');
      expect(device.tags, isEmpty);
      expect(device.isSupervised, false);
    });

    test('handles AppleTV response', () {
      final json = <String, dynamic>{
        'device_id': 'atv-uuid-003',
        'device_name': 'Conference Room A - Apple TV',
        'serial_number': 'GX4H7ATV001',
        'platform': 'AppleTV',
        'model': 'Apple TV 4K (3rd generation)',
        'os_version': '17.4',
        'is_supervised': true,
        'general_status': 'pass',
      };

      final device = Device.fromJson(json);

      expect(device.platform, 'AppleTV');
      expect(device.user, isNull);
    });
  });

  group('Device equality', () {
    test('two devices with same fields are equal', () {
      final a = Device.fromJson(<String, dynamic>{
        'device_id': 'eq-test',
        'device_name': 'Test Mac',
        'platform': 'Mac',
      });
      final b = Device.fromJson(<String, dynamic>{
        'device_id': 'eq-test',
        'device_name': 'Test Mac',
        'platform': 'Mac',
      });

      expect(a, equals(b));
      expect(a.hashCode, equals(b.hashCode));
    });

    test('two devices with different device_id are not equal', () {
      final a = Device.fromJson(<String, dynamic>{
        'device_id': 'id-1',
        'device_name': 'Same Name',
      });
      final b = Device.fromJson(<String, dynamic>{
        'device_id': 'id-2',
        'device_name': 'Same Name',
      });

      expect(a, isNot(equals(b)));
    });
  });

  group('Device.copyWith', () {
    test('creates a modified copy while preserving other fields', () {
      final original = Device.fromJson(<String, dynamic>{
        'device_id': 'copy-test',
        'device_name': 'Original Name',
        'platform': 'Mac',
        'is_supervised': false,
      });

      final modified = original.copyWith(
        deviceName: 'Updated Name',
        isSupervised: true,
      );

      expect(modified.deviceId, 'copy-test');
      expect(modified.deviceName, 'Updated Name');
      expect(modified.platform, 'Mac');
      expect(modified.isSupervised, true);
    });
  });

  group('DeviceUser.fromJson', () {
    test('parses a complete user map', () {
      final json = <String, dynamic>{
        'email': 'admin@example.com',
        'name': 'Admin User',
        'user_id': 'usr-999',
      };

      final user = DeviceUser.fromJson(json);

      expect(user.email, 'admin@example.com');
      expect(user.name, 'Admin User');
      expect(user.userId, 'usr-999');
    });

    test('parses user with only email', () {
      final json = <String, dynamic>{'email': 'partial@example.com'};

      final user = DeviceUser.fromJson(json);

      expect(user.email, 'partial@example.com');
      expect(user.name, isNull);
      expect(user.userId, isNull);
    });

    test('parses empty user map', () {
      final json = <String, dynamic>{};

      final user = DeviceUser.fromJson(json);

      expect(user.email, isNull);
      expect(user.name, isNull);
      expect(user.userId, isNull);
    });
  });
}
