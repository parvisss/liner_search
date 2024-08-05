// lib/src/linear_search_result.dart

/// Represents the result of a linear search operation.
class LinearSearchResult {
  /// The index of the target value in the list, or -1 if not found.
  final int index;

  /// The duration taken to perform the search operation.
  final Duration timeTaken;

  /// Creates a [LinearSearchResult] instance.
  LinearSearchResult({
    required this.index,
    required this.timeTaken,
  });
}
