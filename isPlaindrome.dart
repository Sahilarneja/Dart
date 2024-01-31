import 'dart:io';

void main(){
  print("Enter a string: ");
  String userString = stdin.readLineSync()!;

  if(isPalindrome(userString)){
    print("The entered string is a palindrome.");
  }else{
    print("The entered string is not a palindrome.");
  }
}

bool isPalindrome(String s){
  String cleanedString=s.replaceAll(' ', '').toLowerCase();

  return cleanedString==cleanedString.split('').reversed.join('');
}