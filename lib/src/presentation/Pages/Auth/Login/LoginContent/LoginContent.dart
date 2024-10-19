import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/presentation/Pages/Auth/register/RegisterPage.dart';
import 'package:flutter_application_1/src/presentation/widgets/DefaultTextField.dart';


class LoginContent extends StatelessWidget {
  const LoginContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
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
              begin: Alignment.bottomCenter,
              end:Alignment.topCenter,
              colors: [
                const Color.fromARGB(255, 1, 21, 36),
                const Color.fromARGB(255, 12, 2, 34),
                const Color.fromARGB(255, 0, 2, 24)
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
                  text: 'Email', 
                  icon: Icons.email
                  ),

                DefaultTextField(
                  text: 'Email', 
                  icon: Icons.lock
                  ),
                
                Container(
         height: 40,
         width: MediaQuery.of(context).size.width,

  
      margin: EdgeInsets.only(top: 250,bottom: 15),
      child: ElevatedButton(
        onPressed: () {},
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
          
          