import 'dart:io';

void main(){

  print("Enter marks: ");
  String input=stdin.readLineSync()!;

  int marks=int.parse(input);

  if(marks>=90){
    print("Grade: A");
  }else if(marks>=70){
    print("Grade: B");
  }else if(marks>=50){
    print("Grade: C");
  }else{
    print("Failed...");
  }
}