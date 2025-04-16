abstract class Shape {
  double calculateArea();
}

class Rectangle implements Shape {
  double width;
  double height;

  Rectangle(
    this.width,
    this.height,
  );

  @override
  double calculateArea() {
    return width * height;
  }
}

class Square implements Shape {
  double side;

  Square(
    this.side,
  );

  @override
  double calculateArea() {
    return side * side;
  }
}
