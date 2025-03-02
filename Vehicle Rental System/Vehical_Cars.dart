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
  int numberOfSeats;

  Car(String model, String brand, double rentalPricePerDay, this.numberOfSeats)
      : super(model, brand, rentalPricePerDay);

  @override
  void displayDetails() {
    print('Car Details:');
    print('Model: $model');
    print('Brand: $brand');
    print('Rental Price Per Day: $rentalPricePerDay');
    print('Number of Seats: $numberOfSeats');
    print('Is Available: $isAvailable');
  }
}

class Bike extends Vehicle {
  bool hasSidecar;

  Bike(String model, String brand, double rentalPricePerDay, this.hasSidecar)
      : super(model, brand, rentalPricePerDay);

  @override
  void displayDetails() {
    print('Bike Details:');
    print('Model: $model');
    print('Brand: $brand');
    print('Rental Price Per Day: $rentalPricePerDay');
    print('Has Sidecar: $hasSidecar');
    print('Is Available: $isAvailable');
  }
}
