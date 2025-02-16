import 'dart:io';

void main() {
  List<String> groceryList = [];
  print("Enter the number of items you want to add");
  int? NumberOfItems = int.parse(stdin.readLineSync()!);
  for (int i = 1; i <= NumberOfItems; i++) {
    print("enter your item $i  :      ");
    String? item = stdin.readLineSync()!;
    AddGroceryItems(groceryList, item);
  }
  print("you need Remove any items y/n");
  String? check = stdin.readLineSync()!;
  while (check == 'y') {
    print("enter item do you Removed :  ");
    String? item = stdin.readLineSync()!;
    RemoveGroceryItems(groceryList, item);
    print("do you need  Remove another item y / n");
    String? check2 = stdin.readLineSync()!;
    if (check2 == 'n') {
      check = 'n';
    }
  }

  print("do you need Display own items click y/n ");
  String? checkDisplay = stdin.readLineSync()!;
  if (checkDisplay == 'y') {
    String? item = stdin.readLineSync()!;
    DisplayGroceryItems(groceryList, item);
  } else {
    print(" have a nice day ");
  }
}

void AddGroceryItems(List<String> groceryList, String item) {
  groceryList.add(item);
}

void RemoveGroceryItems(List<String> groceryList, String item) {
  groceryList.remove(item);
}

void DisplayGroceryItems(List<String> groceryList, String item) {
  print("list items ");
  for (String item in groceryList) {
  print(item);
  }
}
