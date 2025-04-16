abstract class NotificationSender {
  void send({
    required String message,
  });
}

class EmailSender implements NotificationSender {
  @override
  void send({
    required String message,
  }) {
    return print('Sending Email: $message');
  }
}

class SmsSender implements NotificationSender {
  @override
  void send({
    required String message,
  }) {
    return print('Sending SMS: $message');
  }
}

class UserNotifier {
  final NotificationSender sender;

  UserNotifier(
    this.sender,
  );

  void notify(
    String s, {
    required String message,
  }) {
    sender.send(
      message: message,
    );
  }
}
