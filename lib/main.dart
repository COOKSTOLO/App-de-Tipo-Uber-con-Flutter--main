import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/presentation/Pages/Auth/register/RegisterPage.dart';
import 'package:flutter_application_1/src/presentation/Pages/auth/login/LoginPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Empezando papu',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 0, 0, 0)),
        useMaterial3: true,
      ),
      initialRoute: 'Login',
      routes: {
        'Login': (BuildContext context ) => LoginPage(),
        'Register': (BuildContext context ) => Registerpage(),
      },
    );
  }
}

