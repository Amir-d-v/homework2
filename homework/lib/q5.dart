/*Class Creation and Dot Operator Usage:
 Create a class with a few properties and methods. Instantiate the class and use the dot operator to
 access and print its properties and methods.*/

import 'dart:io';

class Student {
  String? name;
  int? age;
}

void main() {
  Student student = Student();
  print("Enter your name");
  student.name = stdin.readLineSync();
  print("Enter your age");
  student.age = int.parse(stdin.readLineSync()!);
  print("Student name is ${student.name} and age is ${student.age}");
}
