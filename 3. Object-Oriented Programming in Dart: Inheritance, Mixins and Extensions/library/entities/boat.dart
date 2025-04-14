import '../mixins/swimmable.dart';
import '../models/transport.dart';

class Boat extends Transport with Swimmable {
  final String captain;

  Boat({
    required String name,
    required this.captain,
  }) : super(name: name);

  @override
  void move() {
    print("$name is sailing with $captain as the captain!");
  }

  @override
  void swim() {
    print("$name is floating on the water!");
  }
}
