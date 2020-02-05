import 'package:demosih/src/routing/application.dart';
import 'package:flutter/material.dart';

class Index extends StatefulWidget {
  @override
  _IndexState createState() => _IndexState();
}

class _IndexState extends State<Index> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("STET"))),
      body: SafeArea(
        child: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                    margin: EdgeInsets.all(30),
                    child: Text(
                      "Don't have ID for login start with new form",
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.redAccent,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    )),
                RaisedButton(
                  child: Text("New User"),
                  onPressed: () {
                    Application.router
                        .navigateTo(context, "/userdetailedit", replace: true);
                  },
                  color: Colors.lightGreen,
                ),
                SizedBox(
                  height: 100,
                ),
                Container(
                  margin: EdgeInsets.all(30),
                  child: Text(
                    " have ID and Password for Login",
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.redAccent,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
                RaisedButton(
                  child: Text("Login"),
                  onPressed: () {
                    Application.router
                        .navigateTo(context, "/login", replace: true);
                  },
                  color: Colors.lightGreen,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
