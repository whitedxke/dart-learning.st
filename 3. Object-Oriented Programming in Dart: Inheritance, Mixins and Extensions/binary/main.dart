import '../library/entities/airplane.dart';
import '../library/entities/boat.dart';
import '../library/extensions/transport_extension.dart';

void main() {
  final Airplane airplane = Airplane(
    name: "Boeing",
    driver: "Ivan Petrov",
  );
  final Boat boat = Boat(
    name: "Titanic",
    captain: "Ivan Ivanov",
  );

  print(
    airplane.describe(),
  );
  airplane.move();
  airplane.fly();

  print(
    boat.describe(),
  );
  boat.move();
  boat.swim();  
}
