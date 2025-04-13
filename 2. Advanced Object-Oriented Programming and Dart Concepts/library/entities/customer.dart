import '../interfaces/orderable.dart';
import '../models/food.dart';
import '../models/user.dart';

class Customer extends User implements Orderable {
  final String _address;

  Customer({
    required String address,
    required String name,
    required String mail,
  }) : _address = address,
       super(
         name: name,
         mail: mail,
       );
  
  String get address => _address;

  @override
  void showRole() {
    print('Customer. Name: $name, e-mail: $mail. Address: $address');
  }

  @override
  void placeOrder({
    required Food food,
  }) {
    print('Customer. $name ordered: ${food.name}, Price: ${food.price} BYN');
  }
}
