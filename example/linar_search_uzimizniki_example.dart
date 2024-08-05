import 'package:linear_search_uzimizniki/linear_search_uzimizniki.dart';

void main() {
  // Define a list of integers to search within
  List<int> list = [1, 3, 5, 7, 9, 11, 13, 15, 17, 19, 21];

  // Specify the target value that you want to search for in the list
  int targetValue = 11;

  // Perform a linear search on the list to find the target value
  // The search function returns a LinearSearchResult object
  var result = LinearSearch.search(list, targetValue);

  // Check if the target value was found in the list
  if (result.index != -1) {
    // If the target value is found, print its index
    print('Value found at index: ${result.index}');
  } else {
    // If the target value is not found, print a message indicating this
    print('Value not found.');
  }

  // Print the time taken to perform the search in milliseconds
  print('Time taken: ${result.timeTaken.inMilliseconds} milliseconds');
}
