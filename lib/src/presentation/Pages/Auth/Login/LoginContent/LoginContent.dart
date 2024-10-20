import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/presentation/Pages/Auth/Login/bloc/LoginBloc.dart';
import 'package:flutter_application_1/src/presentation/Pages/Auth/Login/bloc/LoginEvent.dart';
import 'package:flutter_application_1/src/presentation/Pages/Auth/Login/bloc/LoginState.dart';
import 'package:flutter_application_1/src/presentation/Utils/BlocFormItem.dart';
import 'package:flutter_application_1/src/presentation/widgets/DefaultTextField.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class LoginContent extends StatelessWidget {

  Loginstate? state;

  LoginContent(this.state);

  @override
  Widget build(BuildContext context) {
    return Form(
      key: state.formKey,
      child: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end:Alignment.bottomRight,
                colors: [
                  const Color.fromARGB(255, 0, 0, 0),
                  const Color.fromARGB(255, 5, 5, 46),
                  const Color.fromARGB(255, 0, 2, 24)
                ]
              ),
          
              
            ),
            
            child: Column(
      
              
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _textLoginRotated(),
                SizedBox(height: 50),
                GestureDetector(
                  onTap: () {
                    // metodo para cambiar de ventana  
                    Navigator.pushNamed(context, 'Register');
                  },
                  child: _textRegisterRotated()
                ),
                SizedBox(height: 95),
              ]
            ),
          ),
          Container(
             margin: EdgeInsets.only(left: 50, bottom: 0),
             decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end:Alignment.bottomRight,
                colors: [
                  Color.fromARGB(255, 4, 20, 78),
                  Color.fromARGB(255, 3, 37, 172),
                  Color.fromARGB(255, 32, 109, 198)
                ]
              ),
              
             ),
            child: Container(
              margin: EdgeInsets.only(left: 35, right: 35),
              child: Column(  
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 50,),
                  const Text("Welcome",
                  style: TextStyle(
                    fontSize: 35,
                    color: Colors.white
                  ),
                ),
                  const Text(
                    "back....",
                  style: TextStyle(
                    fontSize: 35,
                     color: Colors.white
                  ),
                  
                 ),
                 //Foto de Imagen en forma de Widget
                 _imageCar(),
      
                  Container(
                    margin: const EdgeInsets.only(bottom: 25.0),  
                    child: const Text(
                      "Log in",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                    ),
                                  ),
                  ),
                  // TextField de Email
                  DefaultTextField(
                    onChanged: (text) {
                      state?.add(EmailChanged(email: BlocFormItem(Value: text));
                    },
                    Validator: (value) { 
                      return bloc?.state.email.Error;
                    },
                    text: 'Email', 
                    icon: Icons.email,
                    color: Colors.white,
                    ),
                   //TextField y Formulario de Password
                  DefaultTextField(
                    onChanged: (text) {
                      bloc?.add(PasswordChanged(password: BlocFormItem(Value: text)));
                    },
                    text: 'Password', 
                    icon: Icons.lock,
                    color: Colors.white,
                    ),
                  
                  Container(
           height: 40,
           width: MediaQuery.of(context).size.width,
      
        
        margin: EdgeInsets.only(top: 250,bottom: 15),
        child: ElevatedButton(
          onPressed: () {
            bloc?.add(FormSubmit());
          },
          style: ElevatedButton.styleFrom(
          backgroundColor:Colors.white
          ),
          
          child: Text(
          'Log in',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            
            ),
            ),
        ),
      ),
                  _DontHaveAccount(context),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _DontHaveAccount(BuildContext context){
    return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                  Text("Dont Have Account ? ",
                  style: TextStyle(
                    color: Colors.white
                   ),
                  ),
                  SizedBox
                  (width: 7),
                  
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, 'Register');
                    },
                    child: Text("Register",
                    style: TextStyle(
                      color : Colors.white,
                      fontWeight: FontWeight.bold
                    ),
                    ),
                  )
                  
                ],
                );
  }

  Widget _imageCar() {
     return Container(
                alignment: Alignment.centerRight,
                child: 
                Image.asset(
                  "assets/img/car.png",
                  width: 150,
                  height: 150,
                  ),
                );
       }
  
  Widget _textRegisterRotated () {
    return RotatedBox(
      quarterTurns: 1,
      child: Text("Register",
      style: TextStyle(
        color: Colors.white,
        fontSize: 22,
      ),
      ),
    );
  }


  Widget _textLoginRotated () {
    return RotatedBox(
      quarterTurns: 1,
      child: Text("Login",
      style: TextStyle(
        color: Colors.white,
        fontSize: 25,
        fontWeight: FontWeight.bold
      ),
      ),
    );
  }

}
          
          