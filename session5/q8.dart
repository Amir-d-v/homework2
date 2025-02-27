/*Create a class ElectricCar that inherits from the Car class. Add a new property batteryCapacity (int)
 and a method displayBatteryStatus() that prints the battery capacity. Override the displayInfo()
 method to include battery details*/

import 'q6.dart';

class ElectricCar extends Car {
  int? batteryCapacity;

  ElectricCar({String? make, String? model, int? year, this.batteryCapacity}) {
    this.make = make;
    this.model = model;
    this.year = year;
  }
  void displayBatteryStatus() {
    print('Battery Capacity: ${batteryCapacity ?? "Unknown"} kwh');
  }

  @override
  void displayInfo() {
    super.displayInfo();
    print("Battery Capacity : ${batteryCapacity ?? "Unknown"} kwh");
  }
}

void main() {
  ElectricCar tesla = ElectricCar(
      make: 'tesla', model: "model 2025", year: 2025, batteryCapacity: 100);

  tesla.displayInfo();
  tesla.displayBatteryStatus();
}
