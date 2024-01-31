import 'dart:io';

void main() {
  print("Enter the number of Fibonacci numbers to generate:");
  String userInput = stdin.readLineSync()!;
  
  try {
    int n = int.parse(userInput);

    if (n <= 0) {
      print("Please enter a positive integer.");
      return;
    }

    List<int> fibonacciSequence = generateFibonacci(n);
    
    print("Fibonacci sequence of $n numbers: $fibonacciSequence");
  } catch (FormatException) {
    print("Invalid input. Please enter a valid positive integer.");
  }
}

List<int> generateFibonacci(int n) {
  List<int> fibonacciSequence = [0, 1];

  for (int i = 2; i < n; i++) {
    int nextNumber = fibonacciSequence[i - 1] + fibonacciSequence[i - 2];
    fibonacciSequence.add(nextNumber);
  }

  return fibonacciSequence;
}
