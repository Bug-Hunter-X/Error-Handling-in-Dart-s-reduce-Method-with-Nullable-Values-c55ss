```dart
List<int?> nullableNumbers = [1, 2, null, 4, 5];
int sum = nullableNumbers.fold<int>(0, (previousValue, element) => previousValue + (element ?? 0));
print(sum); // Output: 12
```