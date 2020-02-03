import 'package:flutter/material.dart';

class ContentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
       children: <Widget>[
         RaisedButton(child: Text('登录'),onPressed: (){
           Navigator.pushNamed(context, 'login');
         },)
       ], 
      ),
    );
  }
}