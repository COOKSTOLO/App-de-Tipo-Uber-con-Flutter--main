import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/presentation/Pages/Auth/Login/bloc/LoginEvent.dart';
import 'package:flutter_application_1/src/presentation/Pages/Auth/Login/bloc/LoginState.dart';
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
          email: event.email
        )
      );
    });
    on<PasswordChanged>((event, emit) {
      emit(
        state.copyWith(
          password: event.password
        )
      );
    });

    on<FormSubmit>((event, emit) {
      print('Email: ${state.email }');
      print('Password: ${state.password }');
    });
  }
}