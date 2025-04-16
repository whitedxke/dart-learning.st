abstract class Discount {
  double apply({
    required double price,
 });
}

class PercentageDiscount implements Discount {
  final double percent;

  PercentageDiscount(
    this.percent,
  );

  @override
  double apply({
    required double price,
  }) {
    return price * (1 - percent / 100);
  }
}

class FixedDiscount implements Discount {
  final double amount;

  FixedDiscount(
    this.amount,
  );

  @override
  double apply({
    required double price,
  }) {
    return price - amount;
  }
}

class PromoCodeDiscount implements Discount {
  final String code;

  PromoCodeDiscount(
    this.code,
  );

  @override
  double apply({
    required double price,
  }) {
    if (code == "SPRING10") return price - 10;
    return price;
  }
}

class Order {
  final double basePrice;
  final Discount discount;

  Order(
    this.basePrice,
    this.discount,
  );

  double get total {
    return discount.apply(
      price: basePrice,
    );
  }
}
