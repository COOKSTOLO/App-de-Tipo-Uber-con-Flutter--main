import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/presentation/Pages/Auth/register/Bloc/RegisterBloc.dart';
import 'package:flutter_application_1/src/presentation/Pages/Auth/register/Bloc/RegisterState.dart';
import 'package:flutter_application_1/src/presentation/Pages/Auth/register/RegisterContent.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Registerpage extends StatefulWidget {
  const Registerpage({super.key});

  @override
  State<Registerpage> createState() => _RegisterpageState();
}

class _RegisterpageState extends State<Registerpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<RegisterBloc, RegisterState>(
        builder: (context, state) {
          return RegisterContent(state);
        },
      ),
    );
  }
}
