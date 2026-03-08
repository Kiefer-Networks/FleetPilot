import 'package:flutter_test/flutter_test.dart';
import 'package:fleetpilot/domain/entities/tag.dart';

void main() {
  group('Tag.fromJson', () {
    group('tag_id / id field variants', () {
      test('parses tag_id as the primary id field', () {
        final json = <String, dynamic>{
          'tag_id': 'tag-abc-123',
          'tag_name': 'Finance',
        };

        final tag = Tag.fromJson(json);

        expect(tag.tagId, 'tag-abc-123');
        expect(tag.name, 'Finance');
      });

      test('falls back to id when tag_id is absent', () {
        final json = <String, dynamic>{
          'id': 'tag-fallback-456',
          'tag_name': 'Engineering',
        };

        final tag = Tag.fromJson(json);

        expect(tag.tagId, 'tag-fallback-456');
      });

      test('prefers tag_id over id when both are present', () {
        final json = <String, dynamic>{
          'tag_id': 'preferred-id',
          'id': 'fallback-id',
          'tag_name': 'Test',
        };

        final tag = Tag.fromJson(json);

        expect(tag.tagId, 'preferred-id');
      });

      test(
        'defaults to empty string when neither tag_id nor id is present',
        () {
          final json = <String, dynamic>{'tag_name': 'Orphan Tag'};

          final tag = Tag.fromJson(json);

          expect(tag.tagId, '');
        },
      );

      test('converts non-string id to string', () {
        final json = <String, dynamic>{'tag_id': 42, 'tag_name': 'Numeric ID'};

        final tag = Tag.fromJson(json);

        expect(tag.tagId, '42');
      });
    });

    group('tag_name / name field variants', () {
      test('parses tag_name as the primary name field', () {
        final json = <String, dynamic>{
          'tag_id': 'tag-001',
          'tag_name': 'Primary Name',
        };

        final tag = Tag.fromJson(json);

        expect(tag.name, 'Primary Name');
      });

      test('falls back to name when tag_name is absent', () {
        final json = <String, dynamic>{
          'tag_id': 'tag-002',
          'name': 'Fallback Name',
        };

        final tag = Tag.fromJson(json);

        expect(tag.name, 'Fallback Name');
      });

      test('prefers tag_name over name when both are present', () {
        final json = <String, dynamic>{
          'tag_id': 'tag-003',
          'tag_name': 'Preferred',
          'name': 'Fallback',
        };

        final tag = Tag.fromJson(json);

        expect(tag.name, 'Preferred');
      });

      test('defaults to empty string when neither name field is present', () {
        final json = <String, dynamic>{'tag_id': 'tag-004'};

        final tag = Tag.fromJson(json);

        expect(tag.name, '');
      });

      test('converts non-string name to string', () {
        final json = <String, dynamic>{'tag_id': 'tag-005', 'tag_name': 123};

        final tag = Tag.fromJson(json);

        expect(tag.name, '123');
      });
    });

    group('edge cases', () {
      test('handles completely empty JSON map', () {
        final json = <String, dynamic>{};

        final tag = Tag.fromJson(json);

        expect(tag.tagId, '');
        expect(tag.name, '');
      });

      test('handles null values for all fields', () {
        final json = <String, dynamic>{
          'tag_id': null,
          'id': null,
          'tag_name': null,
          'name': null,
        };

        final tag = Tag.fromJson(json);

        expect(tag.tagId, '');
        expect(tag.name, '');
      });

      test('tag_id null falls through to id', () {
        final json = <String, dynamic>{
          'tag_id': null,
          'id': 'backup-id',
          'tag_name': 'Test',
        };

        final tag = Tag.fromJson(json);

        expect(tag.tagId, 'backup-id');
      });

      test('tag_name null falls through to name', () {
        final json = <String, dynamic>{
          'tag_id': 'tag-006',
          'tag_name': null,
          'name': 'Backup Name',
        };

        final tag = Tag.fromJson(json);

        expect(tag.name, 'Backup Name');
      });

      test('handles realistic Kandji API tag response', () {
        final json = <String, dynamic>{
          'tag_id': 'a1b2c3d4-e5f6-7890-abcd-ef1234567890',
          'tag_name': 'Remote Workers',
        };

        final tag = Tag.fromJson(json);

        expect(tag.tagId, 'a1b2c3d4-e5f6-7890-abcd-ef1234567890');
        expect(tag.name, 'Remote Workers');
      });

      test('handles alternate API response shape with id and name', () {
        final json = <String, dynamic>{
          'id': 'f0e1d2c3-b4a5-6789-0123-456789abcdef',
          'name': 'VIP Users',
        };

        final tag = Tag.fromJson(json);

        expect(tag.tagId, 'f0e1d2c3-b4a5-6789-0123-456789abcdef');
        expect(tag.name, 'VIP Users');
      });
    });
  });

  group('Tag equality', () {
    test('two tags with the same fields are equal', () {
      final a = Tag.fromJson(<String, dynamic>{
        'tag_id': 'eq-1',
        'tag_name': 'Same',
      });
      final b = Tag.fromJson(<String, dynamic>{
        'tag_id': 'eq-1',
        'tag_name': 'Same',
      });

      expect(a, equals(b));
      expect(a.hashCode, equals(b.hashCode));
    });

    test('two tags with different ids are not equal', () {
      final a = Tag.fromJson(<String, dynamic>{
        'tag_id': 'id-a',
        'tag_name': 'Same Name',
      });
      final b = Tag.fromJson(<String, dynamic>{
        'tag_id': 'id-b',
        'tag_name': 'Same Name',
      });

      expect(a, isNot(equals(b)));
    });

    test('two tags with different names are not equal', () {
      final a = Tag.fromJson(<String, dynamic>{
        'tag_id': 'same-id',
        'tag_name': 'Name A',
      });
      final b = Tag.fromJson(<String, dynamic>{
        'tag_id': 'same-id',
        'tag_name': 'Name B',
      });

      expect(a, isNot(equals(b)));
    });
  });
}
