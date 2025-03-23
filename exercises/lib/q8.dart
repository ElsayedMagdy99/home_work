void main() {
  List<int> numbers = [1, 2, 3, 4, 5];

  int sum = 0;

  for (int i = 0; i <= numbers.length; i++) {
    sum += i;
  }
  print(sum);
}
