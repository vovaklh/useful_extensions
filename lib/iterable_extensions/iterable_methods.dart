part of useful_extensions;

extension IterableMethods<T> on Iterable<T> {
  bool any(bool predicate(T element)) {
    for (final item in this) {
      if (predicate(item)) return true;
    }
    return false;
  }

  bool all(bool predicate(T element)) {
    for (final item in this) {
      if (!predicate(item)) return false;
    }
    return true;
  }

  T? elementAtOrNull(int index) {
    if (index < length) {
      return elementAt(index);
    } else {
      return null;
    }
  }

  T? find(bool predicate(T selector)) {
    for (final element in this) {
      if (predicate(element)) {
        return element;
      }
    }
    return null;
  }

  Iterable<Pair<T, R>> zip<R>(Iterable<R> other) {
    return mapIndexed((index, item) => Pair(item, other.elementAt(index)));
  }

  Iterable<R> mapIndexed<R>(R Function(int index, T item) fun) {
    var i = 0;
    return map((e) => fun(i++, e));
  }

  Iterable<T> filter(bool fun(T element)) {
    final result = <T>[];
    forEach((element) {
      if (fun(element)) result.add(element);
    });
    return result;
  }

  Iterable<T> filterNot(bool fun(T element)) {
    final result = <T>[];
    forEach((element) {
      if (!fun(element)) result.add(element);
    });
    return result;
  }

  Iterable<T> filterNotNull() {
    return filter((element) => element != null);
  }

  Map<K, List<T>> groupBy<T, K>(K key(T e)) {
    var map = <K, List<T>>{};

    for (final element in this) {
      var list = map.putIfAbsent(key(element as T), () => []);
      list.add(element);
    }
    return map;
  }

  Set<T> intersect(Iterable<T> other) {
    return toSet()..addAll(other);
  }

  forEachIndexed(void Function(int index, T item) f) {
    var i = 0;
    forEach((e) => f(i++, e));
  }
}
