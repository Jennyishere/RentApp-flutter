import 'package:flutter/material.dart';
import 'package:rentapp/pages/home/info/data.dart';
import 'package:rentapp/pages/home/info/item_widget.dart';

class Info extends StatelessWidget {
  final bool showTitle;
  final List<InfoItem> dataList;

  const Info({Key key, this.showTitle = false, this.dataList = InfoItemList})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          if(showTitle) Container(
            padding: EdgeInsets.all(10.0),
            alignment: Alignment.centerLeft,
            child: Text('最新资讯', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600)),
          ),
          Column(
            children: dataList
                .map((item) => ItemWidge(item))
                .toList(),
          )
        ],
      ),
    );
  }
}
