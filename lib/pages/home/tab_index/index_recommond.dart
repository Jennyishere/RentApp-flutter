import 'package:flutter/material.dart';
import 'package:rentapp/pages/home/tab_index/index_recommond_item_widget.dart';
import 'index_recommond_data.dart';

class IndexRecommond extends StatelessWidget {
  final List<IndexRecommendItem> dataList;

  const IndexRecommond({Key key, this.dataList = indexRecommendItemList})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[Text('房屋推荐'), Text('更多')],
          ),
          Padding(padding: EdgeInsets.only(bottom: 10.0)),
          Wrap(
              spacing: 10.0,
              runSpacing: 10.0,
              children: dataList
                  .map((item) => IndexRecommondWidget(item))
                  .toList()),
        ],
      ),
    );
  }
}
