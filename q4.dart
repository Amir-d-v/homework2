/*Weather Report:
 Use Map and List to create a program that stores weather data for different cities (temperature,
 humidity, etc.). Write a function that can retrieve and print weather details using a city name*/

import 'dart:io';
void main(){
  List<Map<String, dynamic>> weatherData = [];
  print("Enter the number of cities you want to add");
  int? NumberOfCities = int.parse(stdin.readLineSync()!);
  for (int i = 1; i <= NumberOfCities; i++) {
    print("enter your city $i  :      ");
    String? city = stdin.readLineSync()!;
    print("enter temperature of city $i  :      ");
    int? temperature = int.parse(stdin.readLineSync()!);
    print("enter humidity of city $i  :      ");
    int? humidity = int.parse(stdin.readLineSync()!);
    AddWeatherData(weatherData, city, temperature, humidity);
  }
  print("do you need Display own items click y/n ");
  String? checkDisplay = stdin.readLineSync()!;
  if (checkDisplay == 'y') {
    print("enter city name to display weather data");
    String? city = stdin.readLineSync()!;
    DisplayWeatherData(weatherData, city);
  } else {
    print(" have a nice day ");
  }
}

void AddWeatherData(List<Map<String, dynamic>> weatherData, String city, int temperature, int humidity) {
  weatherData.add({"city": city, "temperature": temperature, "humidity": humidity});
}

void DisplayWeatherData(List<Map<String, dynamic>> weatherData, String city) {
  print("list items ");
  for (Map<String, dynamic> item in weatherData) {
      print(item);
    }
  }



