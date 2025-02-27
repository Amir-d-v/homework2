/* Add private properties _make and _model to the Car class created in Exercise 6. Add getters and
 setters for these properties. Modify the class to demonstrate encapsulation*/



class Car {
  String? _make;
  String? _model;
  int? year;

  String? get make => _make;
  set make(String? make) => _make = make;

  String? get model => _model;
  set model(String? model) => _model = model;

  void displayInfo() {
    print('Make: $_make');
    print('Model: $_model');
    print('Year: $year');
  }
}