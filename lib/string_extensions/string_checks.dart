part of useful_extensions;

extension StringChecks on String? {
  /// Returns `true` if string is null or empty
  bool get isNullOrEmpty => this == null || this!.isEmpty;

  /// Returns `true` if string isn't blank
  bool get isNotBlank => this != null && this!.trim().isNotEmpty;

  /// Returns `true` if string contains only alphabet symbols
  bool isAlphabetOnly() {
    return isNullOrEmpty.not() ? RegExp(r'^[a-zA-Z]+$').hasMatch(this!) : false;
  }

  /// Returns `true` if email matches the pattern
  bool isEmailValid({String? regex}) {
    final defaultRegex =
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";
    return isNullOrEmpty.not()
        ? RegExp(regex ?? defaultRegex).hasMatch(this!)
        : false;
  }

  /// Returns `true` if password is longer than specified length
  bool isPasswordLengthLonger({int length = 8}) {
    return isNotBlank ? this!.length >= length : false;
  }

  /// Returns the `true` if any symbol matching the given [predicate]
  bool anyChar(bool predicate(String element)) {
    return isNullOrEmpty.not()
        ? this!.split('').any((s) => predicate(s))
        : false;
  }
}
