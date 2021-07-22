part of useful_extensions;

extension DateTransformation on DateTime {
  /// Returns only year, month and day
  DateTime get date => DateTime(year, month, day);

  DateTime copyWith({
    int? year,
    int? month,
    int? day,
    int? hour,
    int? minute,
    int? second,
    int? millisecond,
    int? microsecond,
  }) {
    return DateTime(
      year ?? this.year,
      month ?? this.month,
      day ?? this.day,
      hour ?? this.hour,
      minute ?? this.minute,
      second ?? this.second,
      millisecond ?? this.millisecond,
      microsecond ?? this.microsecond,
    );
  }

  /// Returns the earliest date
  DateTime min(DateTime other) {
    return (millisecondsSinceEpoch < other.millisecondsSinceEpoch)
        ? this
        : other;
  }

  /// Returns a later date
  DateTime max(DateTime other) {
    return (millisecondsSinceEpoch > other.millisecondsSinceEpoch)
        ? this
        : other;
  }

  /// Returns difference between two dates in days
  int differenceInDays(DateTime other) {
    return DateTime(year, month, day)
        .difference(DateTime(other.year, other.month, other.day))
        .inDays;
  }

  /// Returns difference between two dates in hours
  int differenceInHours(DateTime other) {
    return DateTime(year, month, day)
        .difference(DateTime(other.year, other.month, other.day))
        .inHours;
  }

  /// Returns difference between two dates in minutes
  int differenceInMinutes(DateTime other) {
    return DateTime(year, month, day)
        .difference(DateTime(other.year, other.month, other.day))
        .inMinutes;
  }

  /// Returns difference between two dates in seconds
  int differenceInSeconds(DateTime other) {
    return DateTime(year, month, day)
        .difference(DateTime(other.year, other.month, other.day))
        .inSeconds;
  }
}
