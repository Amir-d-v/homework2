/*4. Maps, Functions & User Input
 Create a Dart program that:- Declares a `Map<String, int>` where keys are fruit names and values are their
 prices.- Implements a function `getPrice(String fruitName)` that returns the price of a
 given fruit.- If the fruit is not found, return -1.
 Call the function inside `main()` and print the result*/

void main() {
  Map<String, int> fruits = {
    "apple": 10,
    "banana": 5,
    "orange": 7,
    "mango": 15,
    "grapes": 20
  };

  print(getPrice("apple", fruits));
  print(getPrice("kiwi", fruits));
}

getPrice(String fruitName, Map<String, int> fruits) {
  if (fruits.containsKey(fruitName)) {
    return fruits[fruitName] ?? false;
  }
}
