import '../library/entities/courier.dart';
import '../library/entities/customer.dart';
import '../library/models/food.dart';
import '../library/models/user.dart';

final Customer _customer = Customer(
  name: 'Ivan',
  mail: 'ivanov@gmail.com',
  address: 'Belarus, Minsk',
);

void main() {
  _showAllRoles();
  _placeOrder();
}

void _showAllRoles() {
  final Courier courier = Courier(
    name: 'Petr',
    mail: 'petrov@gmail.com',
    vehicleType: 'Scooter',
  );
  final List<User> users = [
    _customer, courier,
  ];

  for (var user in users) {
    user.showRole();
  }
}

void _placeOrder() {
  final Food food = Food(
    name: 'Pizza',
    price: 50.0,
  );

  _customer.placeOrder(
    food: food,
  );
}
