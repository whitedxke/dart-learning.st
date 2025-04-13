import '../models/food.dart';
import '../interfaces/orderable.dart';
import '../models/user.dart';

class Customer extends User implements Orderable {
  final String address;

  Customer({
    required String name,
    required String mail,
    required this.address,
  }) : super(
         name: name,
         mail: mail,
       );

  @override
  void showRole() {
    print('Customer. Name: $name, E-mail: $mail, Address: $address');
  }

  @override
  void placeOrder({
    required Food food,
  }) {
    print('Customer. $name ordered: ${food.name}, Price: ${food.price} BYN');
  }
}
