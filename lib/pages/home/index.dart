import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rentapp/pages/home/tab_index/index.dart';
import 'package:rentapp/widgets/content_page.dart';

// 1. 需要准备 4 个 tab 内容区（tabView）
List<Widget> tabViewList = [
  TabIndex(),
  ContentPage(name: '搜索'),
  ContentPage(name: '资讯'),
  ContentPage(name: '我的')
];
// 2. 需要准备 4 个 BottomNavigationBarItem
List<BottomNavigationBarItem> barItemList = [
  BottomNavigationBarItem(
    title: Text('首页'),
    icon: Icon(Icons.home),
  ),
   BottomNavigationBarItem(
    title: Text('搜索'),
    icon: Icon(Icons.search),
  ),
   BottomNavigationBarItem(
    title: Text('资讯'),
    icon: Icon(Icons.info),
  ),
   BottomNavigationBarItem(
    title: Text('我的'),
    icon: Icon(Icons.account_box),
  ),
];

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key}) : super(key:key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
  setState(() {
    _selectedIndex = index;
  });
}
  @override
Widget build(BuildContext context) {
  return Scaffold(
    body: tabViewList[_selectedIndex],
    bottomNavigationBar: BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: barItemList,
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.green,
      onTap: _onItemTapped,
    ),
  );
}
}