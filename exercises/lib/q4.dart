/*Write a function that takes two numbers (start, end) and returns a list of all prime numbers between
them.
Ensure that the function correctly identifies prime numbers and handles edge cases where start is
greater than end.
 */

void main() {
  List<int> primeNumbers = [];
  for (int i = 0; i <= 10; i++) {
    if (isPrime(i)) {
      primeNumbers.add(i);
    }
  }
  print(primeNumbers);
}

bool isPrime(number) {
  if (number <= 1) {
    return false;
  }
  for (int i = 2; i <= number / 2; i++) {
    if (number % i == 0) {
      return false;
    }
  }
  return true;
}
