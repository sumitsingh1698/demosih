import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TextTitleCustom extends StatelessWidget {
  
  final String type;
  final String text;
  TextTitleCustom({@required this.type, this.text});

  @override
  Widget build(BuildContext context) {
    if (type == "heading")
      return Container(
         margin: EdgeInsets.all(10),
         padding: EdgeInsets.symmetric(vertical:20.0,horizontal:5.0),
         decoration: BoxDecoration(color: Colors.lightGreen),
          child: Text(
        text,
        style: TextStyle(fontSize: 24,backgroundColor: Colors.lightGreen,fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ));
    if( type == "list")
      return Container(
         margin: EdgeInsets.all(20),
         decoration: BoxDecoration(),
          child: Text(
        text,
        style: TextStyle(fontSize: 20,color: Colors.red,fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,

      ));
      return null;
  }
}
