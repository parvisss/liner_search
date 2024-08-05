import 'package:linear_search_uzimizniki/linar_search_uzimizniki.dart';
import 'package:test/test.dart';

void main() {
  group('Linear Search Tests', () {
    test('Find value in the list', () {
      // Define a list of integers to search within
      List<int> list = [1, 3, 5, 7, 9, 11, 13, 15, 17, 19, 21];

      // Specify the target value to search for
      int targetValue = 11;

      // Perform linear search
      var result = LinearSearch.search(list, targetValue);

      // Check that the target value is found at the correct index
      expect(result.index, equals(5));
      expect(result.timeTaken.inMilliseconds, lessThan(1000)); // Ensure the search is quick
    });

    test('Value not found in the list', () {
      // Define a list of integers to search within
      List<int> list = [1, 3, 5, 7, 9, 11, 13, 15, 17, 19, 21];

      // Specify a target value not in the list
      int targetValue = 25;

      // Perform linear search
      var result = LinearSearch.search(list, targetValue);

      // Check that the target value is not found
      expect(result.index, equals(-1));
      expect(result.timeTaken.inMilliseconds, lessThan(1000)); // Ensure the search is quick
    });
  });
}
