import '../mixins/flyable.dart';
import '../models/transport.dart';

class Airplane extends Transport with Flyable {
  final String driver;

  Airplane({
    required String name,
    required this.driver,
  }) : super(
         name: name,
       );

  
  @override
  void move() {
    print("$name is flying with $driver at the helm!");
  }

  @override
  void fly() {
    print("$name is soaring in the sky!");
  }
}
