/* Write a Dart program that checks if a number is within a specified range using logical operators and
 prints the result */
import 'dart:io';

void main() {
  print('enter number');
  int number = int.parse(stdin.readLineSync()!);

  if (number >= 1 && number <= 50) {
    print('right number');
  } else {
    print('wrong number');
  }
}
