part of useful_extensions;

extension DateChecks on DateTime {
  bool get isToday {
    final nowDate = DateTime.now();
    return year == nowDate.year && month == nowDate.month && day == nowDate.day;
  }

  bool get isYesterday {
    final nowDate = DateTime.now();
    return year == nowDate.year &&
        month == nowDate.month &&
        day == nowDate.day - 1;
  }

  bool get isTomorrow {
    final nowDate = DateTime.now();
    return year == nowDate.year &&
        month == nowDate.month &&
        day == nowDate.day + 1;
  }

  bool isSameDay(DateTime other) {
    return year == other.year && month == month && day == other.day;
  }

  bool isAtSameYearAs(DateTime other) => year == other.year;

  bool isAtSameMonthAs(DateTime other) {
    return isAtSameYearAs(other) && month == other.month;
  }

  bool isAtSameDayAs(DateTime other) {
    return isAtSameMonthAs(other) && day == other.day;
  }

  bool isAtSameHourAs(DateTime other) {
    return isAtSameDayAs(other) && hour == other.hour;
  }

  bool isAtSameMinuteAs(DateTime other) {
    return isAtSameHourAs(other) && minute == other.minute;
  }

  bool isAtSameSecondAs(DateTime other) {
    return isAtSameMinuteAs(other) && second == other.second;
  }
}
