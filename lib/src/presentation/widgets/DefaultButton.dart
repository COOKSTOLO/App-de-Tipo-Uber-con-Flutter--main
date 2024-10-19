import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {

   String text;
   Color color;
   Color textColor;
   EdgeInsetsGeometry ButtomMargin;
    

  DefaultButton({
    required this.text,
    this.color = const Color.fromARGB(255, 29, 13, 171),
    this.textColor = Colors.white,
    this.ButtomMargin = const EdgeInsets.only(left: 40, right: 40),
  });

  @override
  Widget build(BuildContext context) {
   return Container(
      height: 35, 
      width: MediaQuery.of(context).size.width,

    
      margin: EdgeInsets.only(top: 150,right: 30,left: 30),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
        backgroundColor:color
        ),
        
        child: Text(
        
        text,
        style: TextStyle(
          color: textColor,
          fontWeight: FontWeight.bold
          
        ),
        ),
      ),
    );
  }
}