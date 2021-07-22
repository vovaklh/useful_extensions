part of useful_extensions;

extension IterableMethods<T> on Iterable<T> {
  /// Gets an element at specific index or returns `null`
  T? elementAtOrNull(int index) {
    if (index < length) {
      return elementAt(index);
    } else {
      return null;
    }
  }

  /// Returns the first element matching the given [predicate], or `null`
  T? find(bool predicate(T e)) {
    for (final element in this) {
      if (predicate(element)) {
        return element;
      }
    }
    return null;
  }

  /// Returns the element at random index
  T getRandom() => toList()[Random().nextInt(length)];

  /// Creates new collection of pairs from two collections
  Iterable<Pair<T, R>> zip<R>(Iterable<R> other) {
    return length == other.length
        ? mapIndexed((index, item) => Pair(item, other.elementAt(index)))
        : [];
  }

  /// Gives possibility to use index in `map` function
  Iterable<R> mapIndexed<R>(R Function(int index, T item) fun) {
    var i = 0;
    return map((e) => fun(i++, e));
  }

  /// Returns a list containing only elements matching the given [predicate]
  Iterable<T> filter(bool fun(T e)) {
    final result = <T>[];
    forEach((element) {
      if (fun(element)) result.add(element);
    });
    return result;
  }

  /// Returns a list containing all elements not matching the given [predicate]
  Iterable<T> filterNot(bool fun(T element)) {
    final result = <T>[];
    forEach((element) {
      if (!fun(element)) result.add(element);
    });
    return result;
  }

  /// Returns a list without `null` values
  Iterable<T> filterNotNull() => filter((element) => element != null);

  /// Gives possibility to use index in `forEach` function
  forEachIndexed(void Function(int index, T item) f) {
    var i = 0;
    forEach((e) => f(i++, e));
  }
}
