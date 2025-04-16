import '../library/dependency_inversion_principle.dart';
import '../library/interface_segregation_principle.dart';
import '../library/liskov_substitution_principle.dart';
import '../library/open_and_closed_principle.dart';
import '../library/single_responsibility_principle.dart';

void main() {
  // SRP Demo.
  print('--- SRP: Task Manager ---');
  final manager = TaskManager();
  final storage = FileStorage();

  manager.addTask(
    title: 'Buy milk and bread',
  );
  manager.addTask(
    title: 'Write a task on algorithms',
  );
  manager.toggleTask(
    index: 0,
  );

  manager.tasks.forEach(print);

  final saved = storage.save(
    tasks: manager.tasks,
  );
  print('\nSaved:\n$saved');

  final restoredTasks = storage.load(
    data: saved,
  );
  print('\nLoaded:');

  restoredTasks.forEach(print);

  // OCP Demo.
  print('\n--- OCP: Discounts ---');
  final order1 = Order(
    100,
    PercentageDiscount(10),
  );
  final order2 = Order(
    100,
    FixedDiscount(15),
  );
  final order3 = Order(
    100,
    PromoCodeDiscount("SPRING10"),
  );

  print('Order with percentage discount: \$${order1.total}');
  print('Order with fixed discount: \$${order2.total}');
  print('Order with promo code: \$${order3.total}');

  // LSP Demo.
  print('\n--- LSP: Shapes ---');
  Shape shape1 = Rectangle(4, 5);
  Shape shape2 = Square(4);
  print('Rectangle area: ${shape1.calculateArea()}');
  print('Square area: ${shape2.calculateArea()}');

  // ISP Demo.
  print('\n--- ISP: Devices ---');
  Printer simplePrinter = SimplePrinter();
  simplePrinter.printDocument(
    content: 'Document for printing',
  );

  MultiFunctionDevice mfd = MultiFunctionDevice();
  mfd.printDocument(
    content: 'Сложный документ',
  );
  mfd.scanDocument();
  mfd.sendFax(
    number: '123-456',
  );

  // DIP Demo.
  print('\n--- DIP: Notification ---');
  final notifier1 = UserNotifier(EmailSender());
  final notifier2 = UserNotifier(SmsSender());

  notifier1.notify(
    'e-mail',
    message: 'Hello by e-mail!',
  );
  notifier2.notify(
    'sms',
    message: 'Hello by SMS!',
  );
}
