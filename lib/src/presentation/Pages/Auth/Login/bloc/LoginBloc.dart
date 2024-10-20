import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/presentation/Pages/Auth/Login/bloc/LoginEvent.dart';
import 'package:flutter_application_1/src/presentation/Pages/Auth/Login/bloc/LoginState.dart';
import 'package:flutter_application_1/src/presentation/Utils/BlocFormItem.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginBloc extends Bloc<Loginevent, Loginstate> {

  final formKey = GlobalKey<FormState>();

  LoginBloc(): super(Loginstate()) {

    on<LoginInitEvent>((event, emit)  {
      emit(state.copyWith(formKey: formKey));
    });

    on<EmailChanged>((event, emit) {
      emit(
        state.copyWith(
          email: BlocFormItem(
            Value: event.email.Value,
            Error: event.email.Value.isEmpty ? 'Ingresa el Email' : null
          ),
          formKey: formKey
        )
      );
    });
    on<PasswordChanged>((event, emit) {
      emit(
        state.copyWith(
          password: BlocFormItem(
            Value: event.password.Value,
            Error: event.password.Value.isEmpty 
            ? 'Ingresa una contraseña'
            :  event.password.Value.length < 6 
             ? 'Minimo 6 Caracteress'
             : null
          ),
          formKey: formKey
        )
      );
    });

    on<FormSubmit>((event, emit) {
      print('Email: ${state.email }');
      print('Password: ${state.password }');
    });
  }
}