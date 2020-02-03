import 'package:flutter/material.dart';

class ContentPage extends StatelessWidget {
  // 编写无状态组件
  final String name;

  const ContentPage({Key key, this.name}) : super(key: key);
  @override
  Widget build(BuildContext context) {
       return Container(
      child: Column(
       children: <Widget>[
         Center(
           child: Text('当前： $name'),
         )
       ], 
      ),
    );
  }
}