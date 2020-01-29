import 'package:fluro/fluro.dart';

import 'routehandler.dart';

class Routes{
  static const main = "/";
  static const register = "/register";
  static const userdetailedit = "/userdetailedit";
  static const profile = "/profile/:sendData";
  
  static void configureRouter(Router router){
    router.define(register,handler: registerHandler);
    router.define(main,handler: indexHandler);
    router.define(userdetailedit,handler: userdetaileditHandler);
    router.define(profile,handler: profileHandler);
  }
}