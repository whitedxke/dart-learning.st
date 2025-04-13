import '../models/user.dart';

class Courier extends User {
  final String vehicleType;

  Courier({
    required String name,
    required String mail,
    required this.vehicleType,
  }) : super(
         name: name,
         mail: mail,
       );

  @override
  void showRole() {
    print('Courier. Name: $name, E-mail: $mail, Vehicle Type: $vehicleType');
  }
}
