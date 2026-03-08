import 'package:flutter_test/flutter_test.dart';
import 'package:fleetpilot/core/extensions/string_extensions.dart';

void main() {
  group('isValidSubdomain', () {
    group('valid subdomains', () {
      test('simple alphanumeric subdomain', () {
        expect('acme'.isValidSubdomain, isTrue);
      });

      test('single character subdomain', () {
        expect('a'.isValidSubdomain, isTrue);
      });

      test('single digit subdomain', () {
        expect('7'.isValidSubdomain, isTrue);
      });

      test('subdomain with hyphens', () {
        expect('my-company'.isValidSubdomain, isTrue);
      });

      test('subdomain with multiple hyphens', () {
        expect('my-cool-company'.isValidSubdomain, isTrue);
      });

      test('subdomain with numbers', () {
        expect('company123'.isValidSubdomain, isTrue);
      });

      test('subdomain starting with number', () {
        expect('123company'.isValidSubdomain, isTrue);
      });

      test('subdomain with mixed case', () {
        expect('AcmeCorp'.isValidSubdomain, isTrue);
      });

      test('two-character subdomain', () {
        expect('ab'.isValidSubdomain, isTrue);
      });

      test('maximum length subdomain (63 chars)', () {
        final maxLength = 'a' * 63;
        expect(maxLength.isValidSubdomain, isTrue);
      });

      test('subdomain with numbers and hyphens', () {
        expect('test-123-env'.isValidSubdomain, isTrue);
      });

      test('all-numeric subdomain', () {
        expect('12345'.isValidSubdomain, isTrue);
      });

      test('uppercase subdomain', () {
        expect('ACME'.isValidSubdomain, isTrue);
      });
    });

    group('invalid subdomains', () {
      test('empty string', () {
        expect(''.isValidSubdomain, isFalse);
      });

      test('exceeds 63 characters', () {
        final tooLong = 'a' * 64;
        expect(tooLong.isValidSubdomain, isFalse);
      });

      test('starts with hyphen', () {
        expect('-acme'.isValidSubdomain, isFalse);
      });

      test('ends with hyphen', () {
        expect('acme-'.isValidSubdomain, isFalse);
      });

      test('starts and ends with hyphens', () {
        expect('-acme-'.isValidSubdomain, isFalse);
      });

      test('only a hyphen', () {
        expect('-'.isValidSubdomain, isFalse);
      });

      test('contains protocol prefix http://', () {
        expect('http://acme'.isValidSubdomain, isFalse);
      });

      test('contains protocol prefix https://', () {
        expect('https://acme'.isValidSubdomain, isFalse);
      });

      test('contains custom protocol prefix', () {
        expect('ftp://acme'.isValidSubdomain, isFalse);
      });

      test('contains dots', () {
        expect('acme.corp'.isValidSubdomain, isFalse);
      });

      test('contains spaces', () {
        expect('acme corp'.isValidSubdomain, isFalse);
      });

      test('contains underscores', () {
        expect('acme_corp'.isValidSubdomain, isFalse);
      });

      test('contains special characters', () {
        expect('acme@corp'.isValidSubdomain, isFalse);
      });

      test('contains exclamation mark', () {
        expect('acme!'.isValidSubdomain, isFalse);
      });

      test('contains hash', () {
        expect('acme#1'.isValidSubdomain, isFalse);
      });

      test('full URL', () {
        expect('https://acme.api.kandji.io'.isValidSubdomain, isFalse);
      });

      test('contains slash', () {
        expect('acme/test'.isValidSubdomain, isFalse);
      });

      test('contains unicode', () {
        expect('acm\u00e9'.isValidSubdomain, isFalse);
      });

      test('only whitespace', () {
        expect('   '.isValidSubdomain, isFalse);
      });

      test('contains tab character', () {
        expect('acme\tcorp'.isValidSubdomain, isFalse);
      });

      test('contains newline', () {
        expect('acme\ncorp'.isValidSubdomain, isFalse);
      });
    });

    group('boundary cases', () {
      test('exactly 63 characters is valid', () {
        // 63 chars: starts and ends with alphanumeric
        final exact63 = 'a${'b' * 61}c';
        expect(exact63.length, 63);
        expect(exact63.isValidSubdomain, isTrue);
      });

      test('exactly 64 characters is invalid', () {
        final exact64 = 'a' * 64;
        expect(exact64.length, 64);
        expect(exact64.isValidSubdomain, isFalse);
      });

      test('two-character hyphenated is invalid (starts with hyphen)', () {
        expect('-a'.isValidSubdomain, isFalse);
      });

      test('two-character ending with hyphen is invalid', () {
        expect('a-'.isValidSubdomain, isFalse);
      });

      test('single hyphen only is invalid', () {
        expect('-'.isValidSubdomain, isFalse);
      });
    });
  });
}
