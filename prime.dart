import 'dart:io';

void main(){
  print("Enter the value: ");
  String value=stdin.readLineSync()!;
  int num=int.parse(value);

  if(num%2==0){
    print("It is a prime number");
  }else{
    print("It is not a prime number");
  }
}