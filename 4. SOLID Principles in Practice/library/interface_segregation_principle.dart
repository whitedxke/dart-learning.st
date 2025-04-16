abstract class Printer {
  void printDocument({
    required String content,
  });
}

abstract class Scanner {
  void scanDocument();
}

abstract class Fax {
  void sendFax({
    required String number,
  });
}

class MultiFunctionDevice implements Printer, Scanner, Fax {
  @override
  void printDocument({
    required String content,
  }) {
    return print('Printing: $content');
  }

  @override
  void scanDocument() {
    return print('Scanning document');
  }

  @override
  void sendFax({
    required String number,
  }) {
    return print('Sending fax to $number');
  }
}

class SimplePrinter implements Printer {
  @override
  void printDocument({
    required String content,
  }) {
    return print('Printing: $content');
  }
}
