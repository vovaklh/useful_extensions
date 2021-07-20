part of useful_extensions;

extension StringChecks on String? {
  bool get isNullOrEmpty => this == null || this!.isEmpty;

  bool get isNotBlank => this != null && this!.trim().isNotEmpty;

  bool isAlphabetOnly() {
    return isNullOrEmpty.not() ? RegExp(r'^[a-zA-Z]+$').hasMatch(this!) : false;
  }

  bool isEmailValid({String? regex}) {
    final defaultRegex =
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";
    return isNullOrEmpty.not()
        ? RegExp(regex ?? defaultRegex).hasMatch(this!)
        : false;
  }

  bool isPasswordLengthLonger({int length = 8}) {
    return isNotBlank ? this!.length >= length : false;
  }

  bool anyChar(bool predicate(String element)) {
    return isNullOrEmpty.not()
        ? this!.split('').any((s) => predicate(s))
        : false;
  }
}
