import 'package:flutter/material.dart';
import 'package:rentapp/pages/home/info/index.dart';

class TabInfo extends StatefulWidget {
  @override
  _TabInfoState createState() => _TabInfoState();
}

class _TabInfoState extends State<TabInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('资讯tab')),
        body: ListView(
          padding: EdgeInsets.all(10.0),
          children: <Widget>[
            Info(),
            Info(),
            Info(),
          ],
        ));
  }
}
