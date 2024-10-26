import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/presentation/Utils/BlocFormItem.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Loginstate extends Equatable {

  final BlocFormItem Email;
  final BlocFormItem password;
  final GlobalKey<FormState>? formKey;

  const Loginstate({
    this.Email = const BlocFormItem(Error: 'Email Invalido'),
    this.password = const BlocFormItem(Error: 'Contraseña Invalida'),
    this.formKey
  });

  Loginstate copyWith({
     GlobalKey<FormState>? formKey,
     BlocFormItem? Email,
     BlocFormItem? password,
  }){
    return Loginstate(
      Email: Email ?? this.Email,
      password:password ?? this.password,
      formKey: formKey

     /*
     esta es a misma funcion del codigo de arriba que con los signos de pregunta se refiere
     a usar el dato que predefinimos para el email y password
     if (email != null) {
      email = this.email;
     }
      */ 
    );
  }

  @override
  // TODO: implement props
  List<Object?> get props => [Email,password];
}