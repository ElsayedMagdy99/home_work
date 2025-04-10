void main() {
  print(isPalindrome("A man, a plan, a canal: Panama"));
  print(isPalindrome("race a car"));
}

bool isPalindrome(String input) {
  String lower = input.toLowerCase();

  String cleaned = lower.replaceAll(RegExp(r'[^a-z0-9]'), '');

  String reversed = cleaned.split('').reversed.join();

  return cleaned == reversed;
}
