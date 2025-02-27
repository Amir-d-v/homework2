/* Create a class Car with the following properties:- make (String)- model (String)- year (int)
 Add a method displayInfo() that prints all the car's details. Instantiate a Car object and call its
 displayInfo() method*/


class Car {
  String? make;
  String? model;
  int? year;


  void displayInfo() {
    print('Make: $make');
    print('Model: $model');
    print('Year: $year');
  }
}


void main() {
  Car car = Car();
  car.make = 'Toyota';
  car.model = 'Corolla';
  car.year = 2020;
  car.displayInfo();
}

