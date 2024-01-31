import 'dart:io';

void main(){
  print("Enter number you want to calculate the factorial for: ");
  String value=stdin.readLineSync()!;
  int number=int.parse(value);

  int result=1;
  for(int i=2;i<=number;i++){
    result*=i;
  }

  print("Factorial of number $number is: $result");
}