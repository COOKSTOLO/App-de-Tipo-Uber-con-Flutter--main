import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/presentation/Pages/auth/login/LoginContent/LoginContent.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override


  Widget build(BuildContext context) {
    return Scaffold( 
      //backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      body: LoginContent()
    );
  }
}