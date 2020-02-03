import 'package:flutter/material.dart';
import 'package:rentapp/pages/home/tab_index/index_navigator_item.dart';

class IndexNavigator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top:10.0, bottom: 10.0),
      // 结构 一行四列
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: indexNavigatorItemList
            .map((item) => InkWell(
              // InkWell水波纹点击效果 与button相似
                  onTap: () {
                    item.onTap(context);
                  },
                  child: Column(
                    children: <Widget>[
                      Image.asset(item.imgUrl,width: 40.0,),
                      Text(item.title,style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w500,
                      ),)
                    ],
                  ),
                ))
            .toList(),
      ),
    );
  }
}
