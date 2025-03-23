import 'dart:io';

void main() {
  print('enter text');
  String input = stdin.readLineSync()!;
  String reversd = reverseString(input);
  print("reversd string is : $reversd");
}

String reverseString(String input) {
  return input.split('').reversed.join('');
}
