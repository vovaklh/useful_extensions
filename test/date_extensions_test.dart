import 'package:useful_extensions/useful_extensions.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final today = DateTime.now();
  final yesterday = DateTime.now().subtract(Duration(days: 1));
  final tomorrow = DateTime.now().add(Duration(days: 1));

  group('date checks', () {
    test('isToday', () {
      expect(yesterday.isToday, false);
      expect(tomorrow.isToday, false);
      expect(today.isToday, true);
    });

    test('isYesterday', () {
      expect(today.isYesterday, false);
      expect(tomorrow.isYesterday, false);
      expect(yesterday.isYesterday, true);
    });

    test('isTomorrow', () {
      expect(yesterday.isTomorrow, false);
      expect(today.isTomorrow, false);
      expect(tomorrow.isTomorrow, true);
    });

    test('isSameDay', () {
      expect(today.isSameDay(yesterday), false);
      expect(today.isSameDay(today), true);
    });

    test('isAtSameYearAs', () {
      expect(
        DateTime(2015, 1, 5).isAtSameYearAs(DateTime(2020, 10, 10)),
        false,
      );
      expect(
        DateTime(2021, 8, 19).isAtSameYearAs(DateTime(2021, 07, 14)),
        true,
      );
    });

    test('isAtSameMonthAs', () {
      expect(
        DateTime(2021, 09, 11).isAtSameMonthAs(DateTime(2021, 10, 11)),
        false,
      );
      expect(
        DateTime(2021, 10, 11).isAtSameMonthAs(DateTime(2021, 10, 12)),
        true,
      );
    });

    test('isAtSameDayAs', () {
      expect(
        DateTime(2021, 05, 09).isAtSameDayAs(DateTime(2021, 05, 06)),
        false,
      );
      expect(
        DateTime(2021, 11, 06).isAtSameDayAs(DateTime(2021, 11, 06)),
        true,
      );
    });

    test('isAtSameHourAs', () {
      expect(
        DateTime(2021, 11, 07, 10).isAtSameHourAs(
          DateTime(2021, 11, 07, 11),
        ),
        false,
      );
      expect(
        DateTime(2021, 11, 07, 09).isAtSameHourAs(
          DateTime(2021, 11, 07, 09),
        ),
        true,
      );
    });

    test('isAtSameMinuteAs', () {
      expect(
        DateTime(2021, 11, 07, 12, 15).isAtSameMinuteAs(
          DateTime(2021, 11, 07, 12, 12),
        ),
        false,
      );
      expect(
        DateTime(2021, 11, 07, 12, 15).isAtSameMinuteAs(
          DateTime(2021, 11, 07, 12, 15),
        ),
        true,
      );
    });

    test('isAtSameSecondAs', () {
      expect(
        DateTime(2021, 11, 07, 12, 15, 58).isAtSameMinuteAs(
          DateTime(2021, 11, 07, 12, 12, 59),
        ),
        false,
      );
      expect(
        DateTime(2021, 11, 07, 12, 15, 13).isAtSameMinuteAs(
          DateTime(2021, 11, 07, 12, 15, 13),
        ),
        true,
      );
    });
  });

  group('date transformation', () {
    test('copyWith', () {
      expect(DateTime(2021, 05, 05).copyWith(day: 06), DateTime(2021, 05, 06));
    });

    test('max', () {
      expect(today.max(yesterday), today);
      expect(yesterday.max(today), today);
    });

    test('min', () {
      expect(today.min(yesterday), yesterday);
      expect(yesterday.min(today), yesterday);
    });

    test('differenceInDays', () {
      expect(today.differenceInDays(yesterday), 1);
    });

    test('differenceInHours', () {
      expect(today.differenceInHours(yesterday), 24);
    });

    test('differenceInMinutes', () {
      expect(today.differenceInMinutes(yesterday), 1440);
    });

    test('differenceInSeconds', () {
      expect(today.differenceInSeconds(yesterday), 86400);
    });
  });
}
