/*Working with Maps - Student Details:- Task 1: Create a map representing a student with keys for name, age, and grade. Add, update,
 and remove entries from the map, printing the map after each operation.- Task 2: Iterate over the map and print each key-value pair*/

import 'dart:io';

void main() {
  Map<String, dynamic> student = {
    "name": "Ali",
    "age": 20,
    "grade": "A"
  };
  print("Student details: $student");

  print("Do you want to add more details? y/n");
  String? check = stdin.readLineSync();
  if (check == 'y') {
    print("Enter the key you want to add: ");
    String? key = stdin.readLineSync();
    print("Enter the value you want to add: ");
    dynamic value = stdin.readLineSync();
    AddStudentDetails(student, key!, value);
    print("Student details: $student");
  }

  print("Do you want to update any details? y/n");
  String? checkUpdate = stdin.readLineSync();
  if (checkUpdate == 'y') {
    print("Enter the key you want to update: ");
    String? key = stdin.readLineSync();
    print("Enter the value you want to update: ");
    dynamic value = stdin.readLineSync();
    UpdateStudentDetails(student, key!, value);
    print("Student details: $student");
  }

  print("Do you want to remove any details? y/n");
  String? checkRemove = stdin.readLineSync();
  if (checkRemove == 'y') {
    print("Enter the key you want to remove: ");
    String? key = stdin.readLineSync();
    RemoveStudentDetails(student, key!);
    print("Student details: $student");
  }

  print("Iterating over the map: ");
  student.forEach((key, value) {
    print("$key: $value");
  });
}

void AddStudentDetails(Map<String, dynamic> student, String key, dynamic value) {
  student[key] = value;
}

void UpdateStudentDetails(Map<String, dynamic> student, String key, dynamic value) {
  student[key] = value;
}

void RemoveStudentDetails(Map<String, dynamic> student, String key) {
  student.remove(key);
}

