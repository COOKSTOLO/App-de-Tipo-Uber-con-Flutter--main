import 'package:flutter_application_1/src/presentation/Utils/BlocFormItem.dart';

abstract class RegisterEvent {}

class RegisterInitEvent extends RegisterEvent {}

class NameChanged extends RegisterInitEvent {
  final BlocFormItem Name;
  NameChanged({ required this.Name});
}

class EmailChanged extends RegisterInitEvent {
  final BlocFormItem Email;
  EmailChanged({ required this.Email});
}

class NumberChanged extends RegisterInitEvent {
  final BlocFormItem Number;
  NumberChanged({ required this.Number});
}

class PasswordChanged extends RegisterInitEvent {
  final BlocFormItem password;
  PasswordChanged({ required this.password});
}

class WhenConfirmPasswordChanged extends RegisterInitEvent {
  final BlocFormItem confirmpassword;
  WhenConfirmPasswordChanged({ required this.confirmpassword});
}

class FormSubmit extends RegisterInitEvent {}
class FormReset extends RegisterInitEvent {}


