import 'dart:io';

List<int> reverseList(List<int> inputList) {
  return inputList.reversed.toList();
}
void main() {
  // Task 1
  List<int> originalList = [123, 456, 789, 321, 654, 987];
  List<int> reversedList = reverseList(originalList);

  print("Original List: $originalList");
  print("Reversed List: $reversedList");

  // Task 2
  List<int> numbersList = [1, 2, 3, 4, 5];
  print("\nList Functions on numbersList:");
  print("First: ${numbersList.first}");
  print("isEmpty: ${numbersList.isEmpty}");
  print("isNotEmpty: ${numbersList.isNotEmpty}");
  print("Length: ${numbersList.length}");
  print("Last: ${numbersList.last}");
  print("Reverse: ${numbersList.reversed.toList()}");

  numbersList.add(6);
  print("After adding 6: $numbersList");

  numbersList.addAll([7, 8, 9]);
  print("After adding multiple elements: $numbersList");

  numbersList.insert(3, 10);
  print("After inserting 10 at index 3: $numbersList");

  numbersList.insertAll(2, [11, 12, 13]);
  print("After inserting multiple elements at index 2: $numbersList");

  numbersList.replaceRange(1, 4, [20, 30]);
  print("After replacing range from index 1 to 4: $numbersList");

  numbersList.remove(10);
  print("After removing 10: $numbersList");

  numbersList.removeAt(2);
  print("After removing element at index 2: $numbersList");

  numbersList.removeLast();
  print("After removing last element: $numbersList");

  numbersList.removeRange(0, 2);
  print("After removing range from index 0 to 2: $numbersList");

  // Task 3
  Set<int> a = {10, 11, 12, 13, 14, 15};
  Set<int> b = {12, 18, 29, 43};
  Set<int> c = {2, 5, 10, 11, 32};

  print("\nSet Operations:");
  print("Union of a, b, and c: ${a.union(b).union(c)}");
  print("Intersection of a and b: ${a.intersection(b)}");
  print("Difference of b and c: ${b.difference(c)}");
}


