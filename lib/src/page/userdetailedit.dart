import 'dart:convert';

import 'package:demosih/src/routing/application.dart';
import 'package:demosih/src/widgets/text_field_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class UserDetailEdit extends StatefulWidget {
  @override
  _UserDetailEditState createState() => _UserDetailEditState();
}

class _UserDetailEditState extends State<UserDetailEdit> {

  Map<String, String> data = Map<String, String>();
  DateTime selectedDate = DateTime.now();


  @override
  Widget build(BuildContext context) {
    int page = 0;
    GlobalKey<FormState> _formkey = GlobalKey<FormState>();
    final controller = PageController(
      initialPage: 0,
    );
    final pageView = PageView.builder(
      reverse: false,
      itemCount: 5,
      onPageChanged: (int pageno){
        page = pageno;
        },
      controller: controller,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, count) {
         
          return pageCreater(count);            
      },
    );

    return Scaffold(
      appBar: AppBar(
        title: Text("Detail"),
      ),
      floatingActionButton: Container(
        height: 70,
        width: 80,
        child: FloatingActionButton(
          onPressed: () {
              if(_formkey.currentState.validate()){
                _formkey.currentState.save();
                if (page == 4){
                String sendData = jsonEncode(data);
                Application.router.navigateTo(context, "/profile/$sendData");
              } 
                
                 controller.nextPage(duration: Duration(seconds: 1),curve: Curves.linear);

              
              }
              
          },
          child: Icon(Icons.done,size: 50,),
        ),
      ),
      body: Form(key: _formkey, child: pageView),
    );
  }
  
  Widget pageCreater(int i) {
    if (i == 0)
      return SingleChildScrollView(
        child: Container(
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
                type: "Again Password",
              ),
            ],
          ),
        ),
      );
    if (i == 1)
      return SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              Text("Personal Detail"),
              TextFormFieldCustom(
                data: data,
                type: "Adhaar No.",
              ),
              TextFormFieldCustom(
                data: data,
                type: "First Name",
              ),
              TextFormFieldCustom(
                data: data,
                type: "Last Name",
              ),
              TextFormFieldCustom(
                data: data,
                type: "Father Name",
              ),
              TextFormFieldCustom(
                data: data,
                type: "Mother Name",
              ),
              TextFormFieldCustom(
                data: data,
                type: "House No",
              ),
              TextFormFieldCustom(
                data: data,
                type: "Street No",
              ),
              TextFormFieldCustom(
                data: data,
                type: "Area",
              ),
              TextFormFieldCustom(
                data: data,
                type: "City or village",
              ),
              TextFormFieldCustom(
                data: data,
                type: "State",
              ),
              TextFormFieldCustom(
                data: data,
                type: "Pincode",
              )
            ],
          ),
        ),
      );
    if (i == 2)
      return Container(
        child: Column(
          children: <Widget>[
            Text("Education Detail"),
            TextFormFieldCustom(
              data: data,
              type: "Education detail",
            ),
            TextFormFieldCustom(
              data: data,
              type: "College Name",
            ),
            TextFormFieldCustom(
              data: data,
              type: "status",
            ),
            TextFormFieldCustom(
              data: data,
              type: "year of passing",
            ),
            TextFormFieldCustom(
              data: data,
              type: "college code",
            ),
            TextFormFieldCustom(
              data: data,
              type: "Degree",
            )
          ],
        ),
      );
    if (i == 3)
      return Container(
        child: Column(
          children: <Widget>[
            Text("Center Preference"),
            TextFormFieldCustom(
              data: data,
              type: "College name",
            ),
            TextFormFieldCustom(
              data: data,
              type: "Area",
            ),
          ],
        ),
      );
    if (i == 4)
      return Container(
        child: Column(
          children: <Widget> [
             Text("Upload Files")
          ]
          
        ),
      );
    else
      return Container(
        child: Center(
          child: Text("Page not found $i"),
        ),
      );
  }
}
