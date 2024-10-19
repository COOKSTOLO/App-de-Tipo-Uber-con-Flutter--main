import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/presentation/Pages/Auth/Login/bloc/LoginEvent.dart';
import 'package:flutter_application_1/src/presentation/widgets/DefaultButton.dart';
import 'package:flutter_application_1/src/presentation/widgets/DefaultTextField.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Registercontent extends StatelessWidget {
  const Registercontent({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          // con este se aplica un ligero margen en el lado derecho 
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end:Alignment.bottomRight,
              colors: [
                const Color.fromARGB(255, 0, 0, 0),
                const Color.fromARGB(255, 5, 5, 46),
                const Color.fromARGB(255, 0, 2, 24)
              ]
            )
          ),
          // Aqui tenemos las columnas de login verticales de login y register
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _textLoginRotated(context),
              SizedBox(height: 50),
              _textRegisterRotated(),
              SizedBox(height: 90),
            ],
          ),
        ),

        Container(
          margin: EdgeInsets.only(left: 60, ),
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end:Alignment.bottomRight,
              colors: [
                Color.fromARGB(255, 4, 20, 78),
                Color.fromARGB(255, 13, 50, 198),
                Color.fromARGB(255, 32, 109, 198)
              ]
            )
          ),
          child: Stack(
            children: [
              _ImageBackground(context),
              Column(
                children: [
                  _imageBanner(),
                  DefaultTextField(
                    text: 'Name',
                    icon: Icons.person,
                    Margin: EdgeInsets.only(top:35,left: 20,right: 50)
                    ),
                    SizedBox(height: 5),
              
                    DefaultTextField(
                    text: 'Email',
                    icon: Icons.email_rounded,
                    Margin: EdgeInsets.only(left: 20,right: 50)
                    ),
                    SizedBox(height: 5),
              
                    DefaultTextField(
                    text: 'Number',
                    icon: Icons.phone,
                    Margin: EdgeInsets.only(left: 20,right: 50)
                  
                    ),
                    SizedBox(height: 5),
              
                    DefaultTextField(
                    text: 'Password',
                    icon: Icons.lock,
                    Margin: EdgeInsets.only(left: 20,right: 50)
                    
                    ),
                    SizedBox(height: 5),
              
                    DefaultTextField(
                    text: 'Confirm Password',
                    icon: Icons.person,
                    Margin: EdgeInsets.only(left: 20,right: 50)
                    ),
              
                    DefaultButton(
                      text: "Create User",
                      ButtomMargin: EdgeInsets.only(top: 20),
                      onPressed: () {
                        Bloc?.add(FormSubmit());
                      },  
                    ),
                      SizedBox(height: 15),
                      _AlreadyHaveAccount(context),
                    
                ],
              
              ),
            ],
          ),
        ),
      ],
    );
  }
  
  Widget _ImageBackground(BuildContext context){
    return Container(
      alignment: Alignment.center,
      child: Image.asset(
        'assets/img/destination.png',
        width: MediaQuery.of(context).size.width * 0.6,
        height: MediaQuery.of(context).size.height * 0.6,
        opacity: AlwaysStoppedAnimation(0.6),
      ),
    );
  }

  Widget _AlreadyHaveAccount(BuildContext context){
    return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                  Text("Already Have Account ? ",
                  style: TextStyle(
                    color: Colors.black
                   ),
                  ),
                  SizedBox
                  (width: 7),
                  
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, 'Login');
                    },
                    child: Text("Log In",
                    style: TextStyle(
                      color : Colors.black,
                      fontWeight: FontWeight.bold
                    ),
                    ),
                  )
                  
                ],
                );
  }

  Widget _imageBanner () { 
    return Container(
      margin: EdgeInsets.only(top: 60),
      alignment: Alignment.center,
      child: Image.asset(
        'assets/img/delivery.png',
        width: 200,
        height: 200,
        ),
    );
  }

  Widget _textRegisterRotated() {
    return const RotatedBox(
      quarterTurns: 1,
      child: Text(
        "Register",
        style: TextStyle(
          fontSize: 25,
          color: Colors.white,
          fontWeight: FontWeight.bold
        ),
      ),
    );
  }

  Widget _textLoginRotated(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, 'Login');
      },
      child: const RotatedBox(
        quarterTurns: 1,
        child: Text(
          "Login",
          style: TextStyle(
            fontSize: 24,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}