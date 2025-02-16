/* Range Checker Program:
 Write a Dart program that checks if a number is within a specified range using logical operators and
 prints the result*/

import 'dart:io';

void main() {
  print("please enter number");
  int number = int.parse(stdin.readLineSync()!);

  if (number >= 1 && number <= 100) {
    print("number is within range");
  } else {
    print("number is out of range");
  }
}