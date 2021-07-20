import 'package:useful_extensions/useful_extensions.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('or', () {
    expect(true.or(true), true);
    expect(true.or(false), true);
    expect(false.or(false), false);
  });

  test('and', () {
    expect(true.and(true), true);
    expect(true.and(false), false);
    expect(false.and(false), false);
  });

  test('not', () {
    expect(true.not(), false);
    expect(false.not(), true);
  });
}
