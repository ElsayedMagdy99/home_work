/*Create a class `Rectangle` with:
- Private attributes `_width` and `_height`.
- A constructor that initializes the values.
- A getter `area` that calculates and returns the area.
In `main()`, create a `Rectangle` object and print its area. */
class Rectangle {
  double _width;
  double _height;

  Rectangle(this._height, this._width);

  double get area => _height * _width;
}
