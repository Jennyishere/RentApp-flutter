import 'package:flutter/material.dart';
import 'package:rentapp/widgets/common_swipper.dart';

class TabIndex extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('首页tab')
      ),
      body: ListView(
        children: <Widget>[
          CommonSwiper(),
          Text('这里是内容')
        ],
      ),
    );
  }
}