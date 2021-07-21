part of useful_extensions;

extension ListOperators<T extends num> on List<T> {
  List<T> multiply(T n) => map((item) => (item * n) as T).toList();

  List<T> divide(T n) => map((item) => (item / n) as T).toList();

  List<T> plus(T n) => map((item) => (item + n) as T).toList();

  List<T> minus(T n) => map((item) => (item - n) as T).toList();
}
