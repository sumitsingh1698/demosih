import 'package:demosih/src/page/admitcard.dart';
import 'package:demosih/src/page/index.dart';
import 'package:demosih/src/page/login.dart';
import 'package:demosih/src/page/profile.dart';
import 'package:demosih/src/page/uploadpage.dart';
import 'package:demosih/src/page/userdetailedit.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/widgets.dart';

var indexHandler = Handler(handlerFunc: (BuildContext context,Map<String,dynamic> params){
  return Index();
});
var userdetaileditHandler = Handler(handlerFunc: (BuildContext context,Map<String,dynamic> params){
  return UserDetailEdit();
});
var profileHandler = Handler(handlerFunc: (BuildContext context,Map<String,dynamic> params){
  
  return Profile(params['sendData'][0]);
});
var loginHandler = Handler(handlerFunc: (BuildContext context,Map<String,dynamic> params){
  return Login();
});
var admitcardHandler = Handler(handlerFunc: (BuildContext context,Map<String,dynamic> params){
  return AdmitCard();
});
var uploadHandler = Handler(handlerFunc: (BuildContext context,Map<String,dynamic> params){
  return UploadPage();
});