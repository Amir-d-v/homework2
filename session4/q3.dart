/*Topic: Arithmetic operators
 Exercise: Build a program that takes two numbers as input and performs addition, subtraction, multiplication, and
 division. Display each result to the console.*/

import 'dart:io';

void main() {
  print("Enter first number");
  double? num1 = double.parse(stdin.readLineSync()!);
  print("Enter second number");
  double? num2 = double.parse(stdin.readLineSync()!);

  double sum = num1 + num2;
  double sub = num1 - num2;
  double mul = num1 * num2;
  double div = num1 / num2;

  print('Sum of two numbers: $sum');
  print('Subtraction of two numbers: $sub');
  print('Multiplication of two numbers: $mul');
  print('Division of two numbers: $div');
}