/*To-Do List App:
 Create a to-do list program using a List where each item has a description, due date, and
 completion status (as bool). Implement methods to add, remove, and update tasks, including the
 use of for-each loops*/

import 'dart:io';

void main(){
  List<Map<String, dynamic>> toDoList = [];
  print("Enter the number of items you want to add");
  int? NumberOfItems = int.parse(stdin.readLineSync()!);
  for (int i = 1; i <= NumberOfItems; i++) {
    print("enter your item $i  :      ");
    String? item = stdin.readLineSync()!;
    AddToDoItems(toDoList, item);
  }
  print("you need Remove any items y/n");
  String? check = stdin.readLineSync()!;
  while (check == 'y') {
    print("enter item do you Removed :  ");
    String? item = stdin.readLineSync()!;
    RemoveToDoItems(toDoList, item);
    print("do you need  Remove another item y / n");
    String? check2 = stdin.readLineSync()!;
    if (check2 == 'n') {
      check = 'n';
    }
    
  }

  print("do you need Update any items y/n");
  String? checkUpdate = stdin.readLineSync()!;
  if (checkUpdate == 'y') {
    print("enter item do you Update :  ");
    String? item = stdin.readLineSync()!;
    UpdateToDoItems(toDoList, item);
  } else {
    print(" have a nice day ");
  }

  print("do you need Display own items click y/n ");
  String? checkDisplay = stdin.readLineSync()!;
  if (checkDisplay == 'y') {
    String? item = stdin.readLineSync()!;
    DisplayToDoItems(toDoList, item);
  } else {
    print(" have a nice day ");
  }
}

void AddToDoItems(List<Map<String, dynamic>> toDoList, String item) {
  toDoList.add({"description": item, "dueDate": "2022-12-12", "completionStatus": false});
}

void RemoveToDoItems(List<Map<String, dynamic>> toDoList, String item) {
  toDoList.removeWhere((element) => element["description"] == item);
}

void DisplayToDoItems(List<Map<String, dynamic>> toDoList, String item) {
  print("list items ");
  for (Map<String, dynamic> item in toDoList) {
    print(item);
  }
}

void UpdateToDoItems(List<Map<String, dynamic>> toDoList, String item) {
  toDoList.forEach((element) {
    if (element["description"] == item) {
      element["completionStatus"] = true;
    }
  });
}