import 'package:crypto_api/src/core/extensions/string_extension.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('isNullOrEmpty', () {
    Map.of({
      'string': false,
      '': true,
      null: true,
    }).forEach((input, expected) {
      test('should be $expected for $input', () {
        expect(input.isNullOrEmpty, expected);
      });
    });
  });

  group('orEmpty', () {
    Map.of({
      'string': 'string',
      '': '',
      null: '',
    }).forEach((input, expected) {
      test('should be $expected for $input', () {
        expect(input.orEmpty, expected);
      });
    });
  });

  group('isTrue', () {
    Map.of({
      'true': true,
      'false': false,
      null: false,
      '1': true,
      '0': false,
      'true1': false,
      'false0': false,
    }).forEach((input, expected) {
      test('should be $expected for $input', () {
        expect(input.isTrue, expected);
      });
    });
  });

  group('isFalse', () {
    Map.of({
      'true': false,
      'false': true,
      null: false,
      '1': false,
      '0': true,
      'true1': false,
      'false0': false,
    }).forEach((input, expected) {
      test('should be $expected for $input', () {
        expect(input.isFalse, expected);
      });
    });
  });
}
