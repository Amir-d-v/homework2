/*Number Check Program:
 Create a program that asks the user to input a number and checks if it's positive, negative, or zero
 using if-else statements.*/

import 'dart:io';

void main() {
  print("please enter number");
  int number = int.parse(stdin.readLineSync()!);

  if (number > 0) {
    print("number is positive");
  } else if (number < 0) {
    print("number is negative");
  } else {
    print("number is zero");
  }
}
