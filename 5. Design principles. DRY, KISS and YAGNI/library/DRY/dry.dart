class Validator {
  bool isValidEmail({
    required String email,
  }) {
    return email.contains('@') && email.contains('.');
  }

  bool isValidPassword({
    required String password,
  }) {
    return password.length >= 8;
  }
}

class User {
  final Validator _validator = Validator();

  bool validateEmail({
    required String email,
  }) {
    return _validator.isValidEmail(
      email: email,
    );
  }

  bool validatePassword({
    required String password,
  }) {
    return _validator.isValidPassword(
      password: password,
    );
  }
}

class Admin {
  final Validator _validator = Validator();

  bool validateEmail({
    required String email,
  }) {
    return _validator.isValidEmail(
      email: email,
    );
  }

  bool validatePassword({
    required String password,
  }) {
    return _validator.isValidPassword(
      password: password,
    );
  }
}
