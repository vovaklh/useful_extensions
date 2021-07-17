part of useful_extensions;

extension StringTransformation on String {
  String get last => this[length - 1];

  int toInt() => int.parse(this);

  int? toIntOrNull() => int.tryParse(this);

  double toDouble() => double.parse(this);

  double? toDoubleOrNull() => double.tryParse(this);

  String capitalizeFirst() {
    return isNotEmpty ? '${this[0].toUpperCase()}${substring(1)}' : this;
  }

  String? removeAllWhiteSpace() => replaceAll(RegExp(r'\s+\b|\b\s'), '');

  String reversed() {
    var res = '';
    for (int i = length; i >= 0; --i) {
      res = this[i];
    }
    return res;
  }

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

  String replaceBefore(
    String delimiter,
    String replacement, [
    String? defaultValue,
  ]) {
    final index = indexOf(delimiter);
    return (index == -1)
        ? defaultValue!.isNullOrEmpty
            ? this
            : defaultValue
        : replaceRange(0, index, replacement);
  }
}
