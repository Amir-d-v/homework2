/* Null Safety, Encapsulation & Classes
Create a class `Person` with the following attributes:- `String name`- `int? age` (nullable)- `bool isStudent` (default is false)
 Implement:- A constructor that initializes `name` and `age`.- A method `displayInfo()` that prints the person's details.
 In `main()`, create an instance of `Person` and call `displayInfo()`*/


class Person {
  String name;
  int? age;
  bool isStudent;

  Person(this.name, this.age) : isStudent = false;

  void displayInfo() {
    print("Name: $name, Age: $age, Student: $isStudent");
  }
}


void main() {
  Person person = Person("Sara", 20);
  person.displayInfo();
}

