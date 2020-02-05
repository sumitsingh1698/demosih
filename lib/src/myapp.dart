
import 'package:demosih/src/page/index.dart';
import 'package:demosih/src/routing/application.dart';
import 'package:demosih/src/routing/routers.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {

  MyApp(){
    
    final router = Router();
    Routes.configureRouter(router);
    Application.router = router;

   
  }

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
       title: "DemoApp",
       theme: ThemeData(accentColor: Colors.green,primaryColor: Colors.lightGreen),
      home: Index(),
    );
  }
}