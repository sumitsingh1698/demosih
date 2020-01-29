import 'package:demosih/src/page/index.dart';
import 'package:demosih/src/page/profile.dart';
import 'package:demosih/src/page/register.dart';
import 'package:demosih/src/page/userdetailedit.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/widgets.dart';

var registerHandler = Handler(handlerFunc: (BuildContext context,Map<String,dynamic> params){
  return Register();
});
var indexHandler = Handler(handlerFunc: (BuildContext context,Map<String,dynamic> params){
  return Index();
});
var userdetaileditHandler = Handler(handlerFunc: (BuildContext context,Map<String,dynamic> params){
  return UserDetailEdit();
});
var profileHandler = Handler(handlerFunc: (BuildContext context,Map<String,dynamic> params){
  
  return Profile(params['sendData'][0]);
});