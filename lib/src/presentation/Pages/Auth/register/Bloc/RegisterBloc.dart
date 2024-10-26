import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/presentation/Pages/Auth/register/Bloc/RegisterEvent.dart';
import 'package:flutter_application_1/src/presentation/Pages/Auth/register/Bloc/RegisterState.dart';
import 'package:flutter_application_1/src/presentation/Utils/BlocFormItem.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> { 

  final formKey = GlobalKey<FormState>();

  RegisterBloc() : super(RegisterState()) {
    on<RegisterInitEvent>((event, emit) {
      emit(state.copyWith( formKey: formKey ));
    });

    on<NameChanged>((event, emit){
      emit(
        state.copyWith(
          Name: BlocFormItem(
            Value: event.Name.Value,
            Error: event.Name.Value.isEmpty ? 'Ingresa el nombre' : null
          ),
          formKey: formKey
        )
      );
    });

    on<EmailChanged>((event, emit){
      emit(
        state.copyWith(
          email: BlocFormItem(
            Value: event.email.Value,
            Error: event.email.Value.isEmpty ? 'Ingresa un correcto correcto' : null
          ),
          formKey: formKey
        )
      );
    });

    on<NumberChanged>((event, emit){
      emit(
        state.copyWith(
          phone: BlocFormItem(
            Value: event.Number.Value,
            Error: event.Number.Value.isEmpty ? 'Ingresa un numero correcto' : null
          ),
          formKey: formKey
        )
      );
    });

    on<PasswordChanged>((event, emit){
      emit(
        state.copyWith(
          password: BlocFormItem(
            Value: event.password.Value,
            Error: event.password.Value.isEmpty ? 'Ingresa una contraseña correcta' 
            : event.password.Value.length < 6 
              ? 'Mas de 6 Caracteres'
              : null
            
          ),
          formKey: formKey
        )
      );
    });

    on<WhenConfirmPasswordChanged>((event, emit){
      emit(
        state.copyWith(
          confirmpassword: BlocFormItem(
            Value: event.confirmpassword.Value,
            Error: event.confirmpassword.Value.isEmpty 
            ? 'Ingresa una contraseña correcta' 
            : event.confirmpassword.Value.length < 6 
              ? 'Mas de 6 Caracteres'
              :event.confirmpassword.Value != state.password.Value 
               ? 'Las Contraseñas No Coinciden'
               :
               null
          ),
          formKey: formKey
        )
      );
    });

    on<FormSubmit>((event, emit) {
      print('Name ${state.Name.Value}');
      print('Email ${state.email.Value}');
      print('Number ${state.phone.Value}');
      print('Password ${state.password.Value}');
      print('ConfirmPassword ${state.confirmpassword.Value}');
    });
    on<FormReset>((event, emit){
      state.formKey?.currentState?.reset();
    });
  }
}