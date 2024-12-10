# Error Handling in Dart's reduce Method with Nullable Values

This example demonstrates a common error encountered when using the `reduce` method in Dart with lists containing nullable values. The `reduce` method requires a non-null value to start the reduction process, and it will throw an error if a null value is encountered. The solution involves using the `fold` method and providing a default initial value.

## Code Example

The `bug.dart` file demonstrates the error:

```dart
List<int?> nullableNumbers = [1, 2, null, 4, 5];
int? nullableSum = nullableNumbers.reduce((a, b) => a! + b!); //Error
print(nullableSum);
```

The solution is presented in `bugSolution.dart`:

```dart
List<int?> nullableNumbers = [1, 2, null, 4, 5];
int sum = nullableNumbers.fold<int>(0, (previousValue, element) => previousValue + (element ?? 0));
print(sum); // Output: 12
```