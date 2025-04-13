class Food {
  final String _name;
  final double _price;

  Food({
    required String name,
    required double price,
  }) : _name = name,
       _price = price;

  String get name => _name;

  double get price => _price;

  void describe() {
    print('Food. Name: $name, Price: $price');
  }
}
