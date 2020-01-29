import 'dart:convert';

import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  final String userData;
  Profile(this.userData);
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  
  @override
  Widget build(BuildContext context) {
    Map<String,dynamic> data = jsonDecode(widget.userData);  
    return Scaffold(
      appBar: AppBar(title: Text("Profile"),),
      body: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              Text("Name : ${data['First Name']}"),
              Text("email : ${data['Email']}"),
              Text("mobile : ${data['MobileNo']}"),
              Text("Submi : process"),
            ],
          ),
        ),
      ),
    );
  }
}