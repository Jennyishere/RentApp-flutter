import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('登录'),
      ),
      body: Column(
        children: <Widget>[
          TextField(
            decoration: InputDecoration(labelText: '用户名', hintText: '请输入用户名'),
          ),
          TextField(
            decoration: InputDecoration(labelText: '密码', hintText: '请输入密码'),
          ),
          RaisedButton(child: Text('登录'), onPressed: () {}),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('还没账号？'),
              FlatButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'register');
                },
                child: Text('去注册~'),
                textColor: Colors.blue,
              )
            ],
          )
        ],
      ),
    );
  }
}
