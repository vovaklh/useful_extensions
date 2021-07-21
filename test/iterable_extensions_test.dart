import 'package:useful_extensions/useful_extensions.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('iterable operators', () {
    test('plus', () {
      expect(<int>[].plus(1), []);
      expect(<int>[1].plus(3), [4]);
      expect(<double>[].plus(1.0), []);
      expect(<double>[1.0].plus(1.0), [2.0]);
    });

    test('minus', () {
      expect(<int>[].minus(1), []);
      expect(<int>[3].minus(1), [2]);
      expect(<double>[].minus(1.0), []);
      expect(<double>[3.0].minus(1.0), [2.0]);
    });

    test('multiply', () {
      expect(<int>[].multiply(1), []);
      expect(<int>[2].multiply(2), [4]);
      expect(<double>[].multiply(1.0), []);
      expect(<double>[2.0].multiply(2.0), [4.0]);
    });

    test('divide', () {
      expect(<int>[].divide(1), []);
      expect(<double>[].divide(1.0), []);
      expect(<double>[2.0].divide(2.0), [1.0]);
    });
  });

  group('iterable methods', () {
    test('elementAtOrNull', () {
      expect(<int>[].elementAtOrNull(0), null);
      expect(<int>[1, 2].elementAtOrNull(2), null);
      expect(<int>[1, 2].elementAtOrNull(1), 2);
    });

    test('find', () {
      expect(<int>[].find((e) => e % 2 == 0), null);
      expect(<int>[1, 3].find((e) => e % 2 == 0), null);
      expect(<int>[1, 8, 6].find((e) => e % 2 == 0), 8);
    });

    test('filterNotNull', () {
      expect(<int?>[].filterNotNull(), []);
      expect(<int?>[null, null].filterNotNull(), []);
      expect(<int?>[1, null, null, 2].filterNotNull(), [1, 2]);
    });

    test('filter', () {
      expect(<int>[].filter((e) => e > 5), []);
      expect(<int>[1, 2, 3].filter((e) => e > 5), []);
      expect(<int>[1, 2, 3, 8, 9].filter((e) => e > 5), [8, 9]);
    });

    test('filterNot', () {
      expect(<int>[].filterNot((e) => e > 5), []);
      expect(<int>[8, 9].filterNot((e) => e > 5), []);
      expect(<int>[1, 2, 3, 8, 9].filterNot((e) => e > 5), [1, 2, 3]);
    });

    test('forEachIndexed', () {
      var sum = 0;
      final List<int> list = [1, 2, 3, 4, 5];
      list.forEachIndexed((index, item) => sum += list[index]);
      expect(sum.toDouble(), (list.first + list.last) * list.length / 2);
    });

    test('mapIndexed', () {
      final List<int> list = [1, 2, 3, 4, 5];
      final actual = list.mapIndexed((index, item) => index);
      final expected = List<int>.generate(list.length, (i) => i + 1).minus(1);
      expect(actual, expected);
    });

    test('zip', () {
      final List<int> firstList = [1, 2, 3];
      final List<int> secondList = [1, 2, 3];
      final actual = firstList.zip(secondList);
      final List<Pair<int, int>> expected = [
        Pair(1, 1),
        Pair(2, 2),
        Pair(3, 3)
      ];
      expect(actual, expected);
    });
  });
}
