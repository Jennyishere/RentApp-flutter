import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rentapp/pages/home/content_page.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('首页')
      ),
      body: ContentPage(),
    );
  }
}