/*Write a function that takes two numbers and an operator (+, -, *, /) as input and returns the result.
Handle cases where division by zero might occur. */

import 'dart:io';

void main() {
  print('enter first number');
  var number1 =int.parse(stdin.readLineSync()!);
  print('enter second number');
  var number2 = int.parse(stdin.readLineSync()!);
  print(' sum is: ${sum(number1, number2)}');
  print('subtraction is : ${subtraction(number1, number2)}');
  print('multiplication is : ${multiplication(number1, number2)}');
  print('division is : ${division(number1, number2)}');
}

int sum(int number1, int number2) {
  int sum = number1 + number2;
  return sum;
}

int subtraction(int number1, int number2) {
  int result = number1 - number2;
  return result;
}

int multiplication(int number1, int number2) {
  int result = number1 * number2;
  return result;
}

dynamic division(dynamic number1, dynamic number2) {
  dynamic result = number1 / number2;
  if (number2 == 0) {
    print('Cannot divide by zero');
  }
  return result;
}
