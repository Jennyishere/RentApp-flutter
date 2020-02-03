import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import 'package:rentapp/pages/home/index.dart';
import 'package:rentapp/pages/user/login.dart';

class Routes {

//   定义路由名称
static String home = '/';
static String login = '/login';

// 定义路由处理函数
static Handler _homeHandler = Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
  return MyHomePage();
});

static Handler _loginHandler = Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
  return LoginPage();
});


// 编写函数
  static void configureRoutes(Router router) {
    router.notFoundHandler = Handler(
        handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      print("ROUTE WAS NOT FOUND !!!");
    });
    router.define(home, handler: _homeHandler);
    router.define(login, handler: _loginHandler);
}

}