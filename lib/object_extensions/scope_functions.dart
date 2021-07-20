part of useful_extensions;

extension ScopeFunction<T> on T {
  R let<R>(R Function(T it) op) => op(this);

  T also(void Function(T self) op) {
    op(this);
    return this;
  }

  T apply(void Function() func) {
    func();
    return this;
  }

  R run<R>(R Function() func) {
    return func();
  }
}
