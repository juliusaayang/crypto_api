import 'package:crypto_api/src/core/utils/either_extension.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('EitherExtension', () {
    test('should return null for leftOrNull when Left is present', () {
      const leftValue = Left<String, String>('Error');
      expect(leftValue.leftOrNull, equals('Error'));
    });

    test('should return value for rightOrNull when Right is present', () {
      const rightValue = Right<String, String>('Success');
      expect(rightValue.rightOrNull, equals('Success'));
    });

    test('should return null for rightOrNull when Left is present', () {
      const leftValue = Left<String, String>('Error');
      expect(leftValue.rightOrNull, isNull);
    });

    test('should return null for leftOrNull when Right is present', () {
      const rightValue = Right<String, String>('Success');
      expect(rightValue.leftOrNull, isNull);
    });
  });
}
