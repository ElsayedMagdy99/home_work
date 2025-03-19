/*Create a Dart program that:
- Declares a `Map<String, int>` where keys are fruit names and values are their
prices.
- Implements a function `getPrice(String fruitName)` that returns the price of a
given fruit.
- If the fruit is not found, return -1.
Call the function inside `main()` and print the result */



void main() {
  Map<String, int> fruitPrices = {
    'Apple': 2,
    'Banana': 1,
    'Orange': 3,
  };
  print(getPrice(fruitPrices, 'Apple'));
  print(getPrice(fruitPrices, 'mango'));
}

int getPrice(Map<String, int> prices, String fruitName) {
  if (prices.containsKey(fruitName)) {
    return prices[fruitName]!;
  } else {
    return -1;
  }
}
