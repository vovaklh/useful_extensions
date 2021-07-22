part of useful_extensions;

extension StringTransformation on String {
  /// Returns the last symbol in string
  String get last => isEmpty.not() ? this[length - 1] : this;

  /// Converts string to `int` or throws `FormatException`
  int toInt() => int.parse(this);

  /// Converts string to `int` or returns `null`
  int? toIntOrNull() => int.tryParse(this);

  /// Converts string to `double` or throws `FormatException`
  double toDouble() => double.parse(this);

  /// Converts string to `double` or returns `null`
  double? toDoubleOrNull() => double.tryParse(this);

  /// Capitalizes first symbol of string
  String capitalizeFirst() {
    return isNotEmpty ? '${this[0].toUpperCase()}${substring(1)}' : this;
  }

  /// Removes all whitespaces from string
  String? removeAllWhiteSpace() => replaceAll(RegExp(r'\s+\b|\b\s'), '');

  /// Returns the reversed string
  String reversed() {
    return isEmpty.not() ? String.fromCharCodes(codeUnits.reversed) : this;
  }

  ///  Replaces part of string after the first occurrence of given delimiter with the [replacement] string.
  ///  If the string does not contain the delimiter, returns [defaultValue] which defaults to the original string.
  String? replaceAfter(
    String delimiter,
    String replacement, [
    String? defaultValue,
  ]) {
    final index = indexOf(delimiter);
    return (index == -1)
        ? defaultValue.isNullOrEmpty
            ? this
            : defaultValue
        : replaceRange(index + 1, length, replacement);
  }

  /// Replaces part of string before the first occurrence of given delimiter with the [replacement] string.
  ///  If the string does not contain the delimiter, returns [missingDelimiterValue] which defaults to the original string.
  String? replaceBefore(
    String delimiter,
    String replacement, [
    String? defaultValue,
  ]) {
    final index = indexOf(delimiter);
    return (index == -1)
        ? defaultValue.isNullOrEmpty
            ? this
            : defaultValue
        : replaceRange(0, index, replacement);
  }
}
