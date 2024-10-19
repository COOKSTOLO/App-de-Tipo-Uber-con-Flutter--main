import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class Loginstate extends Equatable {

  final GlobalKey<FormState>? formKey;
  final String email;
  final String password;

  const Loginstate({
    this.email = '',
    this.password = '',
    this.formKey
  });

  Loginstate copyWith({
     GlobalKey<FormState>? formKey,
     String? email,
     String? password
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