part of useful_extensions;

extension DateTransformation on DateTime {
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

  DateTime operator +(DateTime time) {
    return add(Duration(
      days: time.day,
      hours: time.hour,
      minutes: time.minute,
      seconds: time.second,
      milliseconds: time.millisecond,
    ));
  }

  DateTime operator -(DateTime time) {
    return subtract(Duration(
        days: time.day,
        hours: time.hour,
        minutes: time.minute,
        seconds: time.second,
        milliseconds: time.millisecond));
  }

  DateTime min(DateTime other) {
    return (millisecondsSinceEpoch < other.millisecondsSinceEpoch)
        ? this
        : other;
  }

  DateTime max(DateTime other) {
    return (millisecondsSinceEpoch > other.millisecondsSinceEpoch)
        ? this
        : other;
  }

  int differenceInDays(DateTime other) {
    return DateTime(year, month, day)
        .difference(DateTime(other.year, other.month, other.day))
        .inDays;
  }

  int differenceInHours(DateTime other) {
    return DateTime(year, month, day)
        .difference(DateTime(other.year, other.month, other.day))
        .inHours;
  }

  int differenceInMinutes(DateTime other) {
    return DateTime(year, month, day)
        .difference(DateTime(other.year, other.month, other.day))
        .inMinutes;
  }

  int differenceInSeconds(DateTime other) {
    return DateTime(year, month, day)
        .difference(DateTime(other.year, other.month, other.day))
        .inSeconds;
  }
}
