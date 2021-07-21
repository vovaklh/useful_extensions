part of useful_extensions;

extension IterableMethods<T> on Iterable<T> {
  T? elementAtOrNull(int index) {
    if (index < length) {
      return elementAt(index);
    } else {
      return null;
    }
  }

  T? find(bool predicate(T e)) {
    for (final element in this) {
      if (predicate(element)) {
        return element;
      }
    }
    return null;
  }

  T getRandom() => toList()[Random().nextInt(length)];

  Iterable<Pair<T, R>> zip<R>(Iterable<R> other) {
    return length == other.length
        ? mapIndexed((index, item) => Pair(item, other.elementAt(index)))
        : [];
  }

  Iterable<R> mapIndexed<R>(R Function(int index, T item) fun) {
    var i = 0;
    return map((e) => fun(i++, e));
  }

  Iterable<T> filter(bool fun(T e)) {
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

  forEachIndexed(void Function(int index, T item) f) {
    var i = 0;
    forEach((e) => f(i++, e));
  }
}
