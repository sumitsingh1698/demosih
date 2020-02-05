import 'package:demosih/src/routing/application.dart';
import 'package:demosih/src/widgets/text_field_form.dart';
import "package:flutter/material.dart";

class Login extends StatefulWidget {
  Login({Key key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  Map<String, String> data = Map<String, String>();
  // String notification_text ="";
  @override
  Widget build(BuildContext context) {
 
    return Scaffold(
          appBar: AppBar(title: Center(child: Text("Login"),),),
          body: SingleChildScrollView(
        child: Form(
          child: Column(
            children: <Widget>[
              TextFormFieldCustom(type: "applicationno", data:  data, label: "Application NO:"),
              TextFormFieldCustom(type: "password", data: data, label: "Password :"),
              // Text(notification_text),
              RaisedButton(onPressed: (){
                Application.router.navigateTo(context,"/profile/$data",replace: false);
              },child:Text("Login"))
            ],
          ),
        ),
      ),
    );
  }
}
