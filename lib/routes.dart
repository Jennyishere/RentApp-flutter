import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import 'package:rentapp/not_found_page.dart';
import 'package:rentapp/pages/home/index.dart';
import 'package:rentapp/pages/user/login.dart';
import 'package:rentapp/pages/user/register.dart';

class Routes {

//   定义路由名称
static String home = '/';
static String login = '/login';
static String register = '/register';

// 定义路由处理函数
static Handler _homeHandler = Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
  return MyHomePage();
});

static Handler _loginHandler = Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
  return LoginPage();
});

static Handler _registerPage = Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
  return RegisterPage();
});


// 编写函数
  static void configureRoutes(Router router) {
    router.notFoundHandler = Handler(
        handlerFunc: (BuildContext context, Map<String, List<String>> params) {
     return NotFoundPage();
    });
    router.define(home, handler: _homeHandler);
    router.define(login, handler: _loginHandler);
    router.define(register, handler: _registerPage);
}

}