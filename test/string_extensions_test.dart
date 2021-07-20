import 'package:useful_extensions/useful_extensions.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('string checks', () {
    test('isNullOrEmpty', () {
      expect(''.isNullOrEmpty, true);
      expect(null.isNullOrEmpty, true);
      expect('string'.isNullOrEmpty, false);
      expect(' '.isNullOrEmpty, false);
    });

    test('isNotBlank', () {
      expect(''.isNotBlank, false);
      expect(null.isNotBlank, false);
      expect(' '.isNotBlank, false);
      expect('string'.isNotBlank, true);
    });

    test('isAlphabetOnly', () {
      expect(null.isAlphabetOnly(), false);
      expect(''.isAlphabetOnly(), false);
      expect('ab123'.isAlphabetOnly(), false);
      expect('abcd'.isAlphabetOnly(), true);
    });

    test('isEmailValid', () {
      expect(null.isEmailValid(), false);
      expect(''.isEmailValid(), false);
      expect('vivo123@gmail.'.isEmailValid(), false);
      expect('vivo123@gmail.com'.isEmailValid(), true);
    });

    test('isPasswordLengthLonger', () {
      expect(null.isPasswordLengthLonger(), false);
      expect(''.isPasswordLengthLonger(), false);
      expect('          '.isPasswordLengthLonger(), false);
      expect('1234'.isPasswordLengthLonger(), false);
      expect('12345678'.isPasswordLengthLonger(), true);
    });
  });

  group('string transformation', () {
    test('last', () {
      expect(''.last, '');
      expect('a'.last, 'a');
      expect('abcd'.last, 'd');
    });

    test('toInt', () {
      expect(() => ''.toInt(), throwsA(isA<FormatException>()));
      expect(() => 'abc'.toInt(), throwsA(isA<FormatException>()));
      expect(() => '123.3'.toInt(), throwsA(isA<FormatException>()));
      expect('123'.toInt(), 123);
    });

    test('toIntOrNull', () {
      expect(''.toIntOrNull(), null);
      expect('abc'.toIntOrNull(), null);
      expect('123.3'.toIntOrNull(), null);
      expect('123'.toIntOrNull(), 123);
    });

    test('toDouble', () {
      expect(() => ''.toDouble(), throwsA(isA<FormatException>()));
      expect(() => 'abc'.toDouble(), throwsA(isA<FormatException>()));
      expect('123'.toDouble(), 123.0);
      expect('123.3'.toDouble(), 123.3);
    });

    test('toDoubleOrNull', () {
      expect(''.toDoubleOrNull(), null);
      expect('abc'.toDoubleOrNull(), null);
      expect('123.3'.toDoubleOrNull(), 123.3);
      expect('123'.toDoubleOrNull(), 123.0);
    });

    test('capitalizeFirst', () {
      expect(''.capitalizeFirst(), '');
      expect('1'.capitalizeFirst(), '1');
      expect('a'.capitalizeFirst(), 'A');
      expect('A'.capitalizeFirst(), 'A');
      expect('abc'.capitalizeFirst(), 'Abc');
    });

    test('removeAllWhiteSpaces', () {
      expect(''.removeAllWhiteSpace(), '');
      expect('abc'.removeAllWhiteSpace(), 'abc');
      expect(' a b c'.removeAllWhiteSpace(), 'abc');
    });

    test('reversed', () {
      expect(''.reversed(), '');
      expect('a'.reversed(), 'a');
      expect('ab'.reversed(), 'ba');
      expect('12'.reversed(), '21');
    });

    test('replaceAfter', () {
      expect(''.replaceAfter(',', 'abc'), '');
      expect(','.replaceAfter(',', 'abc'), ',abc');
      expect('abc,bcd'.replaceAfter(',', 'abc'), 'abc,abc');
    });

    test('replaceBefore', () {
      expect(''.replaceBefore(',', 'abc'), '');
      expect(','.replaceBefore(',', 'abc'), 'abc,');
      expect('abc,bcd'.replaceBefore(',', 'bcd'), 'bcd,bcd');
    });
  });
}
