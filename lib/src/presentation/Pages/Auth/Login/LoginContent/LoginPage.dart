import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/presentation/Pages/Auth/Login/bloc/LoginBloc.dart';
import 'package:flutter_application_1/src/presentation/Pages/Auth/Login/bloc/LoginState.dart';
import 'package:flutter_application_1/src/presentation/Pages/auth/login/LoginContent/LoginContent.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  LoginBloc? _bloc;
  @override
  Widget build(BuildContext context) {
    _bloc = BlocProvider.of<LoginBloc>(context);
    return Scaffold(
        //backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        body: BlocBuilder<LoginBloc, Loginstate>(
      builder: (context, state) {
        return LoginContent(_bloc);
      },
    ));
  }
}
