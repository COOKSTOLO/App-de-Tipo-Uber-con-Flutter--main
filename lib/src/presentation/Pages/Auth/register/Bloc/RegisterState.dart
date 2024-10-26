import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/presentation/Utils/BlocFormItem.dart';

class RegisterState extends Equatable {

  final BlocFormItem Name;
  final BlocFormItem email;
  final BlocFormItem phone;
  final BlocFormItem password;
  final BlocFormItem confirmpassword;
  final GlobalKey<FormState>? formKey;


  const RegisterState({
     this.Name = const BlocFormItem(Error: 'ingresa el nombre'),
     this.email = const BlocFormItem(Error: 'ingresa un email valido'),
     this.phone = const BlocFormItem(Error: 'Ingresa un numero valido'),
     this.password = const BlocFormItem(Error: 'Ingresa un contraseña Valida'),
     this.confirmpassword = const BlocFormItem(Error: 'Contraseña invalida'),  
     this.formKey,  
  });


   RegisterState copyWith({
   BlocFormItem? Name,
   BlocFormItem? email,
   BlocFormItem? phone,
   BlocFormItem? password,
   BlocFormItem? confirmpassword,
   GlobalKey<FormState>? formKey
  }){
    return RegisterState(
      Name: Name ?? this.Name,
      email: email ?? this.email,
      phone: phone ?? this.phone,
      password: password ?? this.password,
      confirmpassword: confirmpassword ?? this.confirmpassword,
      formKey: formKey
    );
  }

  @override
  List<Object?> get props => [Name , email , phone , password , confirmpassword];
}