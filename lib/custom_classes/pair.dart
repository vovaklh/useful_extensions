part of useful_extensions;

class Pair<T, U> {
  final T? first;
  final U? second;

  Pair(this.first, this.second);

  Pair<T, U> copyWith({
    T? first,
    U? second,
  }) {
    return Pair<T, U>(
      first ?? this.first,
      second ?? this.second,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Pair<T, U> &&
        other.first == first &&
        other.second == second;
  }

  @override
  int get hashCode => first.hashCode ^ second.hashCode;
}
