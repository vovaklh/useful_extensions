part of useful_extensions;

extension ValidString on String {
  bool isEmailValid({String? regex}) {
    final defaultRegex =
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";
    return RegExp(regex ?? defaultRegex).hasMatch(this);
  }

  bool isPasswordLongerThan({int length = 8}) => this.length >= length;
}
