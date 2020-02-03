import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key key}) : super(key: key);
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool showPassword = false;
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
            obscureText: showPassword,
            decoration: InputDecoration(
              labelText: '密码', 
              hintText: '请输入密码',
              suffixIcon: IconButton(icon: Icon(showPassword?Icons.visibility_off:Icons.visibility), onPressed: () {
                setState(() {
                  showPassword = !showPassword;
                });
              })
              ),
          ),
          RaisedButton(child: Text('登录'), onPressed: () {
            print('登录');
          }),
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
