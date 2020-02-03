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
      body: SafeArea(
        minimum: EdgeInsets.all(30.0),
              child: ListView(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: '用户名', hintText: '请输入用户名'),
            ), 
            Padding(padding: EdgeInsets.all(10.0),),
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
           Padding(padding: EdgeInsets.all(10.0),),
            RaisedButton(
              child: Text('登录'), 
              color: Colors.green,
              textColor: Colors.white,
            onPressed: () {
              print('登录');
            }),
            Padding(padding: EdgeInsets.all(10.0),),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('还没账号？'),
                FlatButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, 'register');
                  },
                  child: Text('去注册~'),
                  textColor: Colors.green,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
