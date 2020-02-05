import 'dart:convert';

import 'package:demosih/src/routing/application.dart';
import 'package:demosih/src/widgets/text_field_form.dart';
import 'package:demosih/src/widgets/text_title_custom.dart';
import 'package:flutter/material.dart';

class UserDetailEdit extends StatefulWidget {
  @override
  _UserDetailEditState createState() => _UserDetailEditState();
}

class _UserDetailEditState extends State<UserDetailEdit> {
  Map<String, String> data = Map<String, String>();
  int step = 0;
  bool checkbox = false;
  @override
  Widget build(BuildContext context) {
    var floatingIcon = step == 3 ? Icons.done : Icons.arrow_downward;
    GlobalKey<FormState> _formkey = GlobalKey<FormState>();

    return Scaffold(
      appBar: AppBar(
        title: Text("Details"),
      ),
      floatingActionButton: Container(
        height: 70,
        width: 80,
        child: FloatingActionButton(
          onPressed: () {
            
            print(step);
            if(step >= 4){
              String alldata = json.encode(data);
              Application.router.navigateTo(context, "/profile/$alldata");
            }
            if(_formkey.currentState.validate()){
               _formkey.currentState.save();
               setState(() {}); 
            }
            
          },
          child: Icon(
            floatingIcon,
            size: 50,
          ),
        ),
      ),
      body: Form(
          key: _formkey,
          child: SafeArea(
            child: SingleChildScrollView(
              child: _sendWidget(step++),
            ),
          )),
    );
  }

  Widget _sendWidget(int step) {
    if (step == 0) {
      return Column(
        children: <Widget>[
          TextTitleCustom(
            type: "heading",
            text: "Register Details",
          ),
          TextFormFieldCustom(
              type: 'email', label: "Email :", data: data),
          TextFormFieldCustom(
              type: 'mobile_no', label: "Mobile No :", data: data),
          TextFormFieldCustom(
              type: 'password', label: "Password :", data: data),
          TextFormFieldCustom(
              type: 'confirm_password',
              label: "Confirm Password :",
              data: data),
        ],
      );
    } else if (step == 1) {
      return Column(
        children: <Widget>[
           TextTitleCustom(
            type: "heading",
            text: "Personal Detail",
          ),
          TextFormFieldCustom(
              type: "first_name", label: "First Name :", data: data),
          TextFormFieldCustom(
              type: 'last_name', label: "Last Name :", data: data),
          TextFormFieldCustom(
              type: 'father_name', label: "Father's Name :", data: data),
          TextFormFieldCustom(
              type: 'mother_name', label: "Mother's Name :", data: data),
          TextFormFieldCustom(
              type: 'dob', label: "Date of Birth :", data: data),
          TextFormFieldCustom(
              type: 'adhar_no', label: "Addhar No :", data: data),
        ],
      );
    } else if (step == 2) {
      return Column(
        children: <Widget>[
           TextTitleCustom(
            type: "heading",
            text: "Contact Detail",
          ),
          TextFormFieldCustom(
              type: 'Address', label: "Address :", data: data),
          TextFormFieldCustom(
              type: 'country', label: "Country :", data: data),
          TextFormFieldCustom(
              type: 'city', label: "City :", data: data),
          TextFormFieldCustom(
              type: 'district',
              label: "District :",
              data: data),
          TextFormFieldCustom(
          type: 'pincode', label: "PIN code :", data: data),
        ],
      );
    }
      return Center(
        child: Column(children: <Widget>[
          TextTitleCustom(
            type: "heading",
            text: "STET Registration",
          ),
          Text("Confirm And Continoue "),
          Checkbox(value: checkbox,onChanged: (value){
              checkbox = value;
              setState((){});
          },),
        ],),
      );
  }
}
