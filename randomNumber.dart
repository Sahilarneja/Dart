import 'dart:io';
import 'dart:math';

void main(){
  int secretNumber=Random().nextInt(100);

  print("Guess the number between 1 and 100: ");

  while(true){
    int userGuess=int.parse(stdin.readLineSync()!);

    if(userGuess==secretNumber){
      print("Congratulations! You guessed the number.");
      break;

    }else if(userGuess < secretNumber){
      print("Too low. try again");
    }else{
      print("Too high. try again");
    }
  }
}