/* Abstract Class: Vehicle
 Create an abstract class Vehicle with the following properties and methods:
    - String model
    - String brand
    - double rentalPricePerDay
    - bool isAvailable (default should be true)
    - Method: void displayDetails() (abstract method*/


abstract class Vehicle {
  String model;
  String brand;
  double rentalPricePerDay;
  bool isAvailable = true;

  Vehicle(this.model, this.brand, this.rentalPricePerDay);

  void displayDetails();
}

class Car extends
    Vehicle {
  Car(String model, String brand, double rentalPricePerDay)
      : super(model, brand, rentalPricePerDay);

  @override
  void displayDetails() {
    print('Car Details:');
    print('Model: $model');
    print('Brand: $brand');
    print('Rental Price Per Day: $rentalPricePerDay');
    print('Is Available: $isAvailable');
  }
}

class Bike extends Vehicle {
  Bike(String model, String brand, double rentalPricePerDay)
      : super(model, brand, rentalPricePerDay);

  @override
  void displayDetails() {
    print('Bike Details:');
    print('Model: $model');
    print('Brand: $brand');
    print('Rental Price Per Day: $rentalPricePerDay');
    print('Is Available: $isAvailable');
  }
}

void main() {
  Car car = Car('Civic', 'Honda', 100);
  Bike bike = Bike('CD70', 'Honda', 50);

  car.displayDetails();
  bike.displayDetails();
}

