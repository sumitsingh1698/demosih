import 'package:demosih/src/routing/application.dart';
import 'package:demosih/src/widgets/text_field_form.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final GlobalKey<FormState> _formkey = new GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    Map<String, String> data = new Map<String, String>();
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.navigate_next),
        onPressed: () {
          if (_formkey.currentState.validate()) {
            _formkey.currentState.save();
            data.forEach((String s, String a) => print("$s   s:  $a \n"));
            showDialog(context: context,
             builder: (BuildContext context){
               bool isChecked = false; 
               return  AlertDialog(
                title: Text("Fill Form"),
                content: Container(
                  child: Text("Are you ready to Register "),
                ),
                actions: <Widget>[
                  Switch(value:  isChecked,onChanged: (value){
                    setState(() {
                       isChecked = value;   
                    });
                  },),
                  FlatButton(
                    child: Text("Accept and Continoue"),onPressed: (){
                       if(isChecked)
                        Application.router.navigateTo(context, "/userdetailedit");
                      
                   },
                )
                ],
              );
             },
                      
            );
           
          }
        },
      ),
      appBar: AppBar(
        title: Text("Register"),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Form(
            key: _formkey,
            child: Column(
              children: <Widget>[
                TextFormFieldCustom(
                  data: data,
                  type: "Email",
                ),
                TextFormFieldCustom(
                  data: data,
                  type: "MobileNo",
                ),
                TextFormFieldCustom(
                  data: data,
                  type: "Password",
                ),
                TextFormFieldCustom(
                  data: data,
                  type: "Password",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
