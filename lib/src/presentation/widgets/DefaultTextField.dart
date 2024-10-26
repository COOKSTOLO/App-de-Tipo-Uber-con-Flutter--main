import 'package:flutter/material.dart';



class DefaultTextField extends StatelessWidget{

    String text;
    Function(String text) onChanged;
    IconData icon;
    Color color;
    EdgeInsetsGeometry Margin;
    String? Function(String?)? Validator;
    
    
    DefaultTextField({
      required this.text,
      required this.icon,
      required this.onChanged,
      this.color = Colors.white,
      this.Margin = const EdgeInsets.only(left: 20, right: 20),
      this.Validator
      
    });

    @override
    Widget build(BuildContext context){
        return Container(
                  margin: Margin,
                  child: TextFormField(
                    validator: Validator,
                    onChanged: (text){
                      onChanged(text);
                    },
                    decoration: InputDecoration(  
                      label: Text(text,
                      style:TextStyle(
                        color: color,
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