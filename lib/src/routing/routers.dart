import 'package:fluro/fluro.dart';

import 'routehandler.dart';

class Routes{
  static const main = "/";
  static const userdetailedit = "/userdetailedit";
  static const login = "/login";
  static const admitcard = "/admitcard";
  static const uploadpage = "/uploadpage";
  static const profile = "/profile/:sendData";
  
  static void configureRouter(Router router){
    router.define(main,handler: indexHandler);
    router.define(userdetailedit,handler: userdetaileditHandler);
    router.define(profile,handler: profileHandler);
    router.define(login,handler: loginHandler);
    router.define(admitcard,handler: admitcardHandler);
    router.define(uploadpage,handler: uploadHandler);
  }
}