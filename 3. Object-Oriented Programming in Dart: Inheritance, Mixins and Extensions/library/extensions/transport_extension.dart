import '../mixins/flyable.dart';
import '../mixins/swimmable.dart';
import '../models/transport.dart';

extension TransportExtension on Transport {
  String describe() {
    if (this is Flyable) {
      return "Transport: $name, can fly!";
    } else if (this is Swimmable) {
      return "Transport: $name, can swim!";
    } else {
      return "Sorry, it's error!";
    }
  }
}
