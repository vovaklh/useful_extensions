import 'package:flutter_test/flutter_test.dart';

import 'package:useful_extensions/useful_extensions.dart';

void main() {
  group('scope functions', () {
    test('let', () {
      final String nonNullableString = '2';
      final String? nullableString = null;

      expect(nonNullableString.let((it) => it.toInt()), 2);
      expect(nullableString?.let((it) => it.toInt()), null);
    });

    test('also', () {
      final List<int> list = [1, 2, 3];
      list.also((self) => print('List length ${self.length}'));
    });
  });
}
