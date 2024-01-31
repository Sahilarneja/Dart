import 'dart:io';

void main(){

  print("Enter num1: ");
  double num1=double.parse(stdin.readLineSync()!);

  print("Enter num2: ");
  double num2=double.parse(stdin.readLineSync()!);

  print("Enter the operator you want to use: ");
  String operator=stdin.readLineSync()!;

  double result=0;

  switch(operator){
    case '+':
    result=num1+num2;
    break;

    case '-':
    result=num1-num2;
    break;

    case '*':
    result=num1*num2;
    break;

    case '/':
    result=num1/num2;
    break;

    case '%':
    result=num1%num2;
    break;

    default:
    print("invalid operator");
    return;
  }

  print ("Result is: $result");
  
}