/* RentalService Class
 Create a RentalService class to manage vehicle rentals with the following features:
    - Store a list of vehicles.
    - Implement:
        - void addVehicle(Vehicle vehicle): Adds a vehicle to the system.
        - void rentVehicle(String model): Marks a vehicle as rented if available.
        - void returnVehicle(String model): Marks a vehicle as available when returned.
        - void listAvailableVehicles(): Displays all available vehicles.
    - Ensure a vehicle cannot be rented if it's already rented.
    - Ensure a vehicle cannot be returned if it was not rented.
    - Use polymorphism to display details of vehicles*/

import 'Rental_System.dart';

void main() {
  Car car = Car('Civic', 'Honda', 100, 4);
  Bike bike = Bike('CD70', 'Honda', 50, false);

  RentalService rentalService = RentalService();
  rentalService.addVehicle(car);
  rentalService.addVehicle(bike);

  rentalService.rentVehicle('Civic');
  rentalService.listAvailableVehicles();
  rentalService.returnVehicle('Civic');
  rentalService.listAvailableVehicles();
}
