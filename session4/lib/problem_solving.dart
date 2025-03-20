/*Given an integer array nums, return true if any value appears at least twice in the array, and return false if every element is distinct */
void main() {
  List<int> nums = [1, 2, 3, 4];

  print(containsDuplicate(nums));

  List<int> numbers = [1, 2, 3,4,3];
  print(containsDuplicate(numbers));
}

bool containsDuplicate(List<int> nums) {
  Set<int> check = Set<int>();
  for (int num in nums) {
    if (check.contains(num)) {
      return true;
    }
    check.add(num);
  }
  return false;
}
