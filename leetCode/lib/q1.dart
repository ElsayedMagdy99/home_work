void main() {
  List<int> nums = [5, 8, 2, 7];
  int target = 9;
  List<int> numbers = twoSum(nums, target);

  print(numbers);
}

List<int> twoSum(List<int> nums, int target) {
  Map<int, int> numMap = {};

  for (int i = 0; i < nums.length; i++) {
    int num = nums[i];
    int tar = target - num;

    
    if (numMap.containsKey(tar)) {
      return [numMap[tar]!, i];
    }

   
    numMap[num] = i;
  }

  
  return [];
}


