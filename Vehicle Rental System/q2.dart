/*Concrete Classes: Car and Motorcycle- Car should have an additional property: int numberOfSeats.
    - Motorcycle should have an additional property: bool hasSidecar.
    - Override the displayDetails() method to print specific details of each vehicle.*/


import 'Vehical_Cars.dart';

void main() {
  Car car = Car('Civic', 'Honda', 100, 4);
  Bike bike = Bike('CD70', 'Honda', 50, false);

  car.displayDetails();
  bike.displayDetails();
}

