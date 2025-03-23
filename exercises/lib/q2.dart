/*Write a function that converts temperature from Celsius to Fahrenheit and vice versa.
Accept temperature value and unit ('C' for Celsius, 'F' for Fahrenheit) as inputs.
Convert accordingly and return the result. */
//import 'dart:io';

void main() {
  /* print('enter temperature');

  var temp = int.parse(stdin.readLineSync()!);

   print(fahrenheit(temp));
  print(celsius(temp));
}

dynamic fahrenheit(dynamic c) {
  dynamic f = 0;
  f = (c * 9 / 5) + 32;
  return f;
}

dynamic celsius(dynamic f) {
  dynamic c = 0;
  c = (f - 32) / 1.8;
  return c;*/
//__________________________________________________________________________________

  print('fahrenheit is : ${convertstemperature(25, 'C')}');
  print('celsius is : ${convertstemperature(77, 'F')}');
}

double convertstemperature(double temp, String unit) {
  if (unit == 'C') {
    return (temp * 9 / 5) + 32;
  } else if (unit == 'F') {
    return (temp - 32) * 5 / 9;
  } else {
    print('innvalid unit');
  }
  return 0;
}
