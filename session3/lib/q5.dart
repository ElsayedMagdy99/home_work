/*Create a class with a few properties and methods. Instantiate the class and use the dot operator to
 access and print its properties and methods */

void main() {
  Car myCar = Car('Toyota', 'Camry', 2023);
  print('make: ${myCar.make}');
  print('model: ${myCar.model}');
  print('year: ${myCar.year}');
}

class Car {
  String? make;
  String? model;
  int? year;
  Car(this.make, this.model, this.year);
}
