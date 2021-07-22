part of useful_extensions;

extension ListOperators<T extends num> on List<T> {
  /// Multiplies by number each element in the list and returns new list
  List<T> multiply(T n) => map((item) => (item * n) as T).toList();

  /// Divides by number each element in the list and returns new list
  List<T> divide(T n) => map((item) => (item / n) as T).toList();

  /// Addes the number to each element to list and returns new list
  List<T> plus(T n) => map((item) => (item + n) as T).toList();

  /// Subtracts the number to each element to list and returns new list
  List<T> minus(T n) => map((item) => (item - n) as T).toList();
}
