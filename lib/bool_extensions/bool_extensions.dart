part of useful_extensions;

extension BoolExtensions on bool {
  bool not() => !this;

  bool and(bool other) => this && other;

  bool or(bool other) => this || other;
}
