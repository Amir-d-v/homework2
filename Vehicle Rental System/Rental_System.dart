
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

class RentalService {
  List<Vehicle> vehicles = [];

  void addVehicle(Vehicle vehicle) {
    vehicles.add(vehicle);
  }

  void rentVehicle(String model) {
    Vehicle vehicle = vehicles.firstWhere((element) => element.model == model);
    if (vehicle.isAvailable) {
      vehicle.isAvailable = false;
      print('Vehicle $model has been rented.');
    } else {
      print('Vehicle $model is not available for rent.');
    }
  }

  void returnVehicle(String model) {
    Vehicle vehicle = vehicles.firstWhere((element) => element.model == model);
    if (!vehicle.isAvailable) {
      vehicle.isAvailable = true;
      print('Vehicle $model has been returned.');
    } else {
      print('Vehicle $model was not rented.');
    }
  }

  void listAvailableVehicles() {
    print('Available Vehicles:');
    vehicles.forEach((vehicle) {
      if (vehicle.isAvailable) {
        vehicle.displayDetails();
      }
    });
  }
}

