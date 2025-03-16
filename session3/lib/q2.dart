/*Implement a program that uses a List to store grocery items. It should allow adding, removing, and
displaying items. Use functions with return types and optional/named parameters. Make sure to
handle possible null values.
 */

void main()
{
    List<String> items = ['rice', 'egg', 'milk'];
  print(addItem('oil', items));
  print(removeItem('milk', items));
}

List<String>? addItem([String? item, List<String>? items]) {
  if (item != null) {
    items!.add(item);
  }
  return items;
}

List<String>? removeItem([String? item, List<String>? items]) {
  if (item != null) {
    items!.remove(item);
  }
  return items;
}
  