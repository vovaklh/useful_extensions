part of useful_extensions;

extension ScopeFunction<T> on T {
  /// Calls the specified function block with this value as its argument and returns its result
  R let<R>(R Function(T it) op) => op(this);

  /// Calls the specified function block with this value as its argument and returns this value
  T also(void Function(T it) op) {
    op(this);
    return this;
  }
}
