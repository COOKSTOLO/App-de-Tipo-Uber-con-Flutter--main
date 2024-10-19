abstract class Loginevent {}

class LoginInitEvent extends Loginevent {}

class EmailChanged extends Loginevent {
  final String email;
  EmailChanged({ required this.email});
}

class PasswordChanged extends Loginevent {
  final String password;
  PasswordChanged({ required this.password});
}

class FormSubmit extends Loginevent{}

