part of useful_extensions;

extension ScopeFunction<T> on T {
  R let<R>(R Function(T it) op) => op(this);

  T also(void Function(T it) op) {
    op(this);
    return this;
  }
}
