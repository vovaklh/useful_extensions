part of useful_extensions;

extension IterableOperations on Iterable<num> {
  Iterable<num> multiply(num n) => map((item) => item * n).toList();

  Iterable<num> divide(num n) => map((item) => item / n).toList();

  Iterable<num> plus(num n) => map((item) => item + n).toList();

  Iterable<num> minus(num n) => map((item) => item - n).toList();
}
