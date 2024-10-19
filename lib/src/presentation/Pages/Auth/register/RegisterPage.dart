import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/presentation/Pages/Auth/register/RegisterContent.dart';

class Registerpage extends StatefulWidget {
  const Registerpage({super.key});

  @override
  State<Registerpage> createState() => _RegisterpageState();
}

class _RegisterpageState extends State<Registerpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Registercontent(),
    );
  }
}