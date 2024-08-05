// lib/src/linear_search.dart

import 'package:linear_search_uzimizniki/linar_search_uzimizniki.dart';

/// Provides a utility for linear search operations.
class LinearSearch {
  /// Performs a linear search on a list to find the target value.
  ///
  /// Returns a [LinearSearchResult] containing the index of the target value
  /// if found, or -1 if not found, and the time taken for the search.
  static LinearSearchResult search(List<int> list, int target) {
    final startTime = DateTime.now();

    for (int i = 0; i < list.length; i++) {
      if (list[i] == target) {
        final endTime = DateTime.now();
        return LinearSearchResult(
          index: i,
          timeTaken: endTime.difference(startTime),
        );
      }
    }

    final endTime = DateTime.now();
    return LinearSearchResult(
      index: -1,
      timeTaken: endTime.difference(startTime),
    );
  }
}
