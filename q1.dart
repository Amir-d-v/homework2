/*1. Basic Calculator:
 Create a Dart program that takes two numbers as input and performs addition, subtraction,
 multiplication, and division using variables, arithmetic operators, and functions. Also, include
 optional parameters for different operations (e.g., addition of multiple numbers).*/

import 'dart:io';

void main() {
  print("please enter number 1");
  int number1 = int.parse(stdin.readLineSync()!);
  print("please enter number 2");
  int number2 = int.parse(stdin.readLineSync()!);

  print("please enter operation");
  String operation = stdin.readLineSync()!;

  switch (operation) {
    case "+":
      print("addition of two numbers is ${number1 + number2}");
      break;
    case "-":
      print("addition of two numbers is ${number1 - number2}");
      break;
    case "*":
      print("addition of two numbers is ${number1 * number2}");
      break;
    case "/":
      print("addition of two numbers is ${number1 / number2}");
      break;
    default:
      print("invalid operation");
  }
}
