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
         margin: EdgeInsets.all(20),
        
         decoration: BoxDecoration(border: Border.all(width:5.0),borderRadius: BorderRadius.all(Radius.circular(5.0)),color: Colors.amber),
          child: Text(
        text,
        style: TextStyle(fontSize: 30,backgroundColor: Colors.green),
        textAlign: TextAlign.center,
      ));
      return Text("fddf");
  }
}
