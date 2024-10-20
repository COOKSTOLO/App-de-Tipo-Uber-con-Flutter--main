import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/presentation/Utils/BlocFormItem.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Loginstate extends Equatable {

  final BlocFormItem email;
  final BlocFormItem password;
  final GlobalKey<FormState>? formKey;

  const Loginstate({
    this.email = const BlocFormItem(Error: 'Email Invalido'),
    this.password = const BlocFormItem(Error: 'Ingresa Contraseña Valida'),
    this.formKey
  });

  Loginstate copyWith({
     GlobalKey<FormState>? formKey,
     BlocFormItem? email,
     BlocFormItem? password,
  }){
    return Loginstate(
      email: email ?? this.email,
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
  List<Object?> get props => [email,password];
}