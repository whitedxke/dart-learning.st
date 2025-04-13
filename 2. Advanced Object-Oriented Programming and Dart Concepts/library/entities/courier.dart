import '../mixins/trackable.dart';
import '../models/user.dart';

class Courier extends User with Trackable {
  final String _vehicleType;

  Courier({
    required String vehicleType,
    required String name,
    required String mail,
  }) : _vehicleType = vehicleType,
       super(
        name: name,
        mail: mail,
       );
  
  String get vehicleType => _vehicleType;

  @override
  void showRole() {
    print("Courier. Name: $name, e-mail: $mail. Vehicle type: $vehicleType");
  }
}
