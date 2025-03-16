/*Create a Dart program that takes two numbers as input and performs addition, subtraction,
multiplication, and division using variables, arithmetic operators, and functions. Also, include
optional parameters for different operations (e.g., addition of multiple numbers). */
import 'dart:io';

void main() {
  print('Enter 2 numbers');

  int number1 = int.parse(stdin.readLineSync()!);
  int number2 = int.parse(stdin.readLineSync()!);

  print(sumNumbers(number1, number2));
  print(subtraction(number1, number2));
  print(multiplication(number1, number2));
  print(division(number1, number2));
}

int sumNumbers([var number1, var number2]) {
  int result = number1 + number2;

  return result;
}

int subtraction([number1, number2]) {
  int result = number1 - number2;
  return result;
}

int multiplication([number1, number2]) {
  int result = number1 * number2;
  return result;
}

double division([number1, number2]) {
 double result = number1 / number2;
  return result;
}
