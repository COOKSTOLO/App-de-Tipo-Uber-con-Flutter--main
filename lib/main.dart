import 'package:flutter/material.dart';
import 'package:flutter_application_1/BlocProviders.dart';
import 'package:flutter_application_1/src/presentation/Pages/Auth/Login/bloc/LoginBloc.dart';
import 'package:flutter_application_1/src/presentation/Pages/Auth/Login/bloc/LoginEvent.dart';
import 'package:flutter_application_1/src/presentation/Pages/Auth/register/RegisterPage.dart';
import 'package:flutter_application_1/src/presentation/Pages/auth/login/LoginContent/LoginPage.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      //Inicializa un formulario de parte de logininitevent
      providers: BlocProviders,
      child: MaterialApp(
        title: 'Empezando papu',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
              seedColor: const Color.fromARGB(255, 0, 0, 0)),
          useMaterial3: true,
        ),
        initialRoute: 'Login',
        routes: {
          'Login': (BuildContext context) => LoginPage(),
          'Register': (BuildContext context) => Registerpage(),
        },
      ),
    );
  }
}
