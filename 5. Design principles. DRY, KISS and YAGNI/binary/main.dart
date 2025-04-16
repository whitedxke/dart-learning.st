import '../library/DRY/dry.dart';
import '../library/KISS/kiss.dart';
import '../library/YAGNI/yagni.dart';

void main() {
  final user = User();
  final admin = Admin();

  print('User Email Valid: ${user.validateEmail(email: "ivanov@example.com")}');
  print('Admin Password Valid: ${admin.validatePassword(password: "admin")}');

  final discountedPrice = calculateDiscount(
    price: 120.0,
    quantity: 12,
    isPremiumCustomer: true,
  );
  print('Discounted Price: \$${discountedPrice.toStringAsFixed(2)}');

  final application = Application();
  application.run();
}
