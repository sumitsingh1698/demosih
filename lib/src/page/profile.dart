import 'dart:convert';

import 'package:demosih/src/routing/application.dart';
import 'package:demosih/src/widgets/text_title_custom.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  final String userData;
  Profile(this.userData);
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool uploadimage = false;
  bool finalsubmit = false;
  bool admitGenerated = true;
  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> data = jsonDecode(widget.userData);
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Center(child: Text("Sikhim Teacher Eligibility Test ",style: TextStyle(fontSize:20),)),
              decoration: BoxDecoration(color: Colors.lightGreen),
            ),
            ListTile(
              title: TextTitleCustom(type: "list", text: "Upload Images"),
              onTap: () {
                showDialog(
                    context: context,
                    child: AlertDialog(
                      actions: <Widget>[
                        RaisedButton(
                          onPressed: () {
                            Application.router.pop(context);
                          },
                          child: Text("Back"),
                        ),
                        RaisedButton(
                          onPressed: () {
                            Application.router
                                .navigateTo(context, "/uploadpage");
                          },
                          child: Text("Continoue"),
                        ),
                      ],
                      content: Text(
                          "You need one photo passport size under 100 kb and a Signature photo under 100 kb"),
                    ));
              },
            ),
            ListTile(
              title: TextTitleCustom(type: "list", text: "Downlaod AdmitCard"),
              onTap: () {
                Application.router.navigateTo(context, "/admitcard");
              },
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              TextTitleCustom(
                text:
                    "Application no : ${data['applicationno'] == null ? "2020091000001" : data['applicationno']}",
                type: "heading",
              ),
              TextTitleCustom(
                text:
                    "Name : ${data['first_name'] == null ? "Sumit Singh" : data['first_name']}",
                type: "list",
              ),
              TextTitleCustom(
                text:
                    "Email : ${data['email'] == null ? "sumitsingh1698@gmail.com" : data['email']}",
                type: "list",
              ),
              TextTitleCustom(
                text:
                    "Mobile No: ${data['mobileno'] == null ? "8285828488" : data['mobileno']}",
                type: "list",
              ),
              RaisedButton(
                color: finalsubmit == false? Colors.red:Colors.lightGreen,
                child: Text("Final Submit"),
                onPressed: () {
                  showDialog(
                      context: context,
                      child: AlertDialog(
                        content: Text(
                            "After final submit you can't change edit the form \n To Do final Submit press continoue"),
                        actions: <Widget>[
                          RaisedButton(
                            onPressed: () {
                              Application.router.pop(context);
                            },
                            child: Text("back"),
                          ),
                          RaisedButton(
                            onPressed: () {
                              Application.router.pop(context);
                              showDialog(
                                  context: context,
                                  child: AlertDialog(
                                    actions: <Widget>[
                                      RaisedButton(
                                        onPressed: () {
                                          finalsubmit = true;
                                          setState(() {});
                                          Application.router.pop(context);
                                        },
                                        child: Text("Continoue"),
                                      ),
                                    ],
                                    content: Text("You Successfully Submited"),
                                  ));
                            },
                            child: Text("Submit"),
                          )
                        ],
                      ));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
