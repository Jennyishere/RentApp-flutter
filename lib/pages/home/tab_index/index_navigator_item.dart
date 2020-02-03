import 'package:flutter/material.dart';

// 数据准备
class IndexNavigatorItem {
  //定义三个变量 定义一个类
  final String title;
  final String imgUrl;
  final Function(BuildContext context) onTap;

  IndexNavigatorItem(this.title, this.imgUrl, this.onTap);
}

List<IndexNavigatorItem> indexNavigatorItemList = [
  IndexNavigatorItem('整租', 'static/images/home_index_navigator_total.png',
      (BuildContext context) {
    Navigator.of(context).pushReplacementNamed('login');
    // Navigator.pushReplacement(context, newRoute) 与上面的是一样的 
  }),
  IndexNavigatorItem('合租', 'static/images/home_index_navigator_share.png',
      (BuildContext context) {
    Navigator.of(context).pushReplacementNamed('login');
  }),
   IndexNavigatorItem('地图找房', 'static/images/home_index_navigator_map.png',
      (BuildContext context) {
    Navigator.of(context).pushReplacementNamed('login');
  }),
   IndexNavigatorItem('去出租', 'static/images/home_index_navigator_rent.png',
      (BuildContext context) {
    Navigator.of(context).pushReplacementNamed('login');
  })
];
