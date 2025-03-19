/*Create a list of 5 words.
- Iterate through the list using a for-each loop.
- Convert each word to uppercase.
- Print each word in uppercase. */

void main() {
  List<String> names = ['ali', 'ahmed', 'mohamed', 'mahmoud', 'reda'];
  names.forEach((item) {
    print(item);
   
    print(item.toUpperCase());
  });
}
