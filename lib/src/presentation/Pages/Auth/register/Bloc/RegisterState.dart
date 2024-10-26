import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/presentation/Utils/BlocFormItem.dart';

class Registerstate extends Equatable {

  final BlocFormItem Name;
  final BlocFormItem email;
  final BlocFormItem phone;
  final BlocFormItem password;
  final BlocFormItem confirmpassword;
  final GlobalKey<FormState>? formKey;


  const Registerstate({
     this.Name = const BlocFormItem(Error: 'ingresa el nombre'),
     this.email = const BlocFormItem(Error: 'ingresa un email valido'),
     this.phone = const BlocFormItem(Error: 'Ingresa un numero valido'),
     this.password = const BlocFormItem(Error: 'Ingresa un contraseña Valida'),
     this.confirmpassword = const BlocFormItem(Error: 'Contraseña invalida'),  
     this.formKey,  
  });


   Registerstate copyWith({
   BlocFormItem? Name,
   BlocFormItem? email,
   BlocFormItem? phone,
   BlocFormItem? password,
   BlocFormItem? confirmpassword,
   GlobalKey<FormState>? formKey
  }){
    return Registerstate(
      Name: Name ?? this.Name,
    );
  }
}