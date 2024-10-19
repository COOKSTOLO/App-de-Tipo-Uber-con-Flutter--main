import 'package:flutter/material.dart';


class DefaultTextField extends StatelessWidget{

    String text;
    IconData icon;
    EdgeInsetsGeometry Margin;
    
    DefaultTextField({
      required this.text,
      required this.icon,
      this.Margin = const EdgeInsets.only(left: 20, right: 20),
      
    });

    @override
    Widget build(BuildContext context){
        return Container(
                  margin: Margin,
                  child: TextFormField(
                    decoration: InputDecoration(  
                      label: Text(text,
                      style:TextStyle(
                        color: Colors.white
                      )
                      ),
                       icon: Icon(
                        icon
                      ),
                    ),
                  ),
                );
    }
}