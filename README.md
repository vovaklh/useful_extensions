# About this package

This package contains extensions that you may find useful in your projects. Developers familiar with the **Kotlin** language will find many familiar things for themselves, since the package contains many methods from this language and not only😊 Flutter extensions will be added in next versions.

# Contributing

Please, consider contributing👍
- Add new feature
- Fix a bug
- Participate in discussions
- Provide documentation
- Create pull request

# Dart

## Custom classes

### Pair

```dart
final Pair<int, int> x = Pair(2, 2);
```

## Bool extensions

### .not()

```dart
if(email.isEmpty.not()){
  checkEmailIsValid(email);
}
```

### .and()

```dart
if(isEmailValid.and(isPasswordValid)){
  register(email, password);
}
```

### .or()

```dart
if(hasGoodMarks.or(hasBenefits)){
  // Action()
}
```

## Object extensions

### Logging

Just use indside your custom class methods

```dart
logInfo(String message, [dynamic error]);
// or
logError(String message, [dynamic error]);
// or
logDebug(String message, [dynamic error]);
// or
logWarning(String message, [dynamic error]);
// or
logWtf(String message, [dynamic error]);
```

### Scope functions

```dart
final String? nullableString = null;

nullableString?.let((it) {
    // Do something if string isn't null
});
```

```dart
final List<int> list = [1, 2, 3];

list.also((self) => print('List length ${self.length}'));
```

## Iterable extensions

### .elementAtOrNull()

```dart
final List<int> numbers = [1, 2, 3, 4, 5];

numbers.elementAtOrNull(numbers.length) // null
```

### .find()

```dart
final List<int> numbers = [1, 2, 3, 4, 5];

numbers.find((e) => e >= 3) // 3
```

### .getRandom()

```dart
final List<int> numbers = [1, 2, 3, 4, 5];

numbers.getRandom() // returns number from 1 to 5 
```

### .zip()

```dart
final List<int> firstList = [1, 2, 3];
final List<double> secondList = [1.0, 2.0, 3.0];

final List<Pair<int, double>> zipRes = firstList.zip(secondList).toList(); 
```

### .mapIndexed()

```dart
final List<int> firstList = [1, 2, 3, 4, 5];
final List<int> secondList = [1, 2, 3, 4, 5];

firstList.mapIndexed((index, item) => item + secondList[index]);
```

### .filter()

```dart
final List<Person> people = [Person('John', 14), Person('Max', 22)];

people.filter((e) => e.age > 18); // [Person('Max', 22)]
```

### .filterNot()

```dart
final List<Person> people = [Person('John', 14), Person('Max', 22)];

people.filterNot((e) => e.age > 18); // [Person('John', 14)]
```

### .filterNotNull()

```dart
final List<Person?> people = [Person('John', 14), null, Person('Max', 22)];

people.filterNotNull(); // [Person('John', 14), Person('Max', 22)]
```

### .forEachIndexed()

```dart
final List<int> numbers = [1, 2, 3, 4, 5];

numbers.forEachIndexed((index, item) => print(index)});
```

## List extensions

### .plus()

```dart
final List<int> numbers = [1, 2, 3];

numbers.plus(1); // [2, 3, 4]
```

### .minus()

```dart
final List<int> numbers = [1, 2, 3];

numbers.minus(1); // [0, 1, 2]
```

### .multiply()

```dart
final List<int> numbers = [1, 2, 3];

numbers.multiply(2); // [2, 4, 6]
```

### .divide()

Only available for list of doubles

```dart
final List<double> numbers = [2.0, 4.0, 3.0];

numbers.divide(2); // [1.0, 2.0, 1.5]
```

# Full list of extensions

## Custom classes
- `Pair`

## Bool extensions
- `.not()`
- `.and(other)`
- `.or(other)`

## Object extensions

### Logging
- `logInfo(message, [error])`
- `logError(message, [error])`
- `logDebug(message, [error])`
- `logWarning(message, [error])`
- `logWtf(message, [error])`

### Scope functions
- `.let()`
- `.also()`

## Iterable extensions
- `.elementAtOrNull(index)`
- `.find(predicate)`
- `.getRandom()`
- `.zip(collection)`
- `.mapIndexed()`
- `.forEachIndexed()`
- `.filter(predicate)`
- `.filterNot(predicate)`
- `.filterNotNull()`

## List extensions
- `.plus(number)`
- `.minus(number)`
- `.multiply(number)`
- `.divide(number)`


## String extensions
- `.isNullOrEmpty`
- `.isNotBlank`
- `.last`
- `.isAlphabetOnly()`
- `.isEmailValid([pattern])`
- `.isPasswordLengthLonger()`
- `.anyChar(predicate)`
- `.toInt()`
- `.toIntOrNull()`
- `.toDouble()`
- `.toDoubleOrNull() `
- `.capitalizeFirst()`
- `.removeAllWhiteSpace() `
- `.reversed()`
- `.replaceAfter(delimiter, replacement, [defaultValue])`
- `.replaceBefore(delimiter, replacement, [defaultValue])`

## DateTime extensions
- `.isToday`
- `.isYesterday`
- `.isTomorrow`
- `.date`
- `.isSameDay(dateTime)`
- `.isAtSameYearAs(dateTime)`
- `.isAtSameMonthAs(dateTime)`
- `.isAtSameDayAs(dateTime)`
- `.isAtSameHourAs(dateTime)`
- `.isAtSameMinuteAs(dateTime)`
- `.isAtSameSecondAs(dateTime)`
- `.copyWith(year, month, day, hour, minute, second, millisecond, microsecond)`
- `.min(dateTime)`
- `.max(dateTime)`
- `.differenceInDays(dateTime)`
- `.differenceInHours(dateTime)`
- `.differenceInMinutes(dateTime)`
- `.differenceInSeconds(dateTime)`