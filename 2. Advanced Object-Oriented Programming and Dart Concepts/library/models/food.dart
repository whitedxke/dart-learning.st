class Food {
  final String _name;
  final double _price;

  Food({
    required String name,
    double price = 10,
  }) : _name = name,
       _price = price;

  String get name => _name;

  double get price => _price;

  set price(value) => value < 0 ? -1 : value;

  @override
  String toString() {
    return 'Food. Name: $name, price: $price';
  }
}
