import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:rentapp/pages/home/index.dart';
import 'package:rentapp/pages/user/login.dart';
import 'package:rentapp/routes.dart';

class Application extends StatefulWidget {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
  // This widget is the root of your application.
  @override
  _ApplicationState createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  
  @override
  Widget build(BuildContext context) {
    // 配置路由
    Router router = Router();
    Routes.configureRoutes(router);
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
     
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
      onGenerateRoute: router.generator,
    );
  }
}


