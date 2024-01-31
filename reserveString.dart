import 'dart:io';

void main() {
  print("Enter a long string containing multiple words:");
  String userInput = stdin.readLineSync()!;

  String reversedString = reverseWords(userInput);

  print("String with words in reverse order: $reversedString");
}

String reverseWords(String input) {
  List<String> words = input.split(' ');
  List<String> reversedWords = words.reversed.toList();
  return reversedWords.join(' ');
}

