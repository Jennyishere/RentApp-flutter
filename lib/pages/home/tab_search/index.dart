import 'package:flutter/material.dart';
import 'package:rentapp/pages/home/tab_search/dataList.dart';
import 'package:rentapp/widgets/room_list_item_widget.dart';

class TabSearch extends StatefulWidget {

  const TabSearch({Key key}) : super(key: key);
  @override
  _TabSearchState createState() => _TabSearchState();
}

class _TabSearchState extends State<TabSearch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       title: Text('搜索tab')
     ), 
     body: Column(
       children: <Widget>[
         Container(
           height:50.0,
           child: Text('filter bar')
         ),
         Expanded(child: ListView(
           children: roomListItemData.map((item)=>RoomListWidget(item)).toList(),
         ))
       ],
     ),
    );
  }
}