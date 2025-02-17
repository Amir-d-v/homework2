/* Topic: Lists, Sets, Maps
 Exercise:- Create a list of numbers, add a few elements, remove one, and display the final list.- Create a set with some duplicate elements and print the set to show that duplicates are removed.- Create a map with keys as student names and values as grades. Print a student's grade by accessing their name in
 the map.*/

void main() {
  List<int> numbers = [1, 2, 3, 4, 5];
  numbers.add(6);
  numbers.add(7);
  numbers.remove(3);
  print(numbers);

  Set<int> numbersSet = {1, 2, 3, 4, 5, 6, 5, 5};
  print(numbersSet);

  Map<String, int> studentGrades = {
    'Amir': 90,
    'Ali': 80,
    'Ahmed': 70,
    'Omar': 60,
  };
  print(studentGrades['Amir']);
}