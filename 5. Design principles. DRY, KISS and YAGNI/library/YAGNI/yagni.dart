class Logger {
  void log({
    required String message,
  }) {
    print("Log: $message");
  }
}

class Application {
  final Logger logger = Logger();

  void run() {
    logger.log(
      message: "Application started",
    );
  }
}
