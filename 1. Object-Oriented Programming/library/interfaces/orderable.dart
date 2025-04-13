import '../models/food.dart';

abstract class Orderable {
  void placeOrder({
    required Food food,
  });
}
