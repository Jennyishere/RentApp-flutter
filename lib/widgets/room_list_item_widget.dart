import 'package:flutter/material.dart';
import 'package:rentapp/pages/home/tab_search/dataList.dart';
import 'package:rentapp/widgets/common_image.dart';
import 'package:rentapp/widgets/common_tag.dart';

class RoomListWidget extends StatelessWidget {
  final RoomListItem data;

  const RoomListWidget(this.data, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10.0),
      child: Row(
        children: <Widget>[
          CommonImage(
            data.imageUri,
            width: 132.0,
            height: 100.0,
          ),
          Padding(padding: EdgeInsets.only(right: 10.0)),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(data.title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500,
                  )),
              Text(data.subTitle),
              Wrap(
                children: data.tags.map((item) => CommonTag(item)).toList(),
              ),
              Text('${data.price} 元/月',
                  style: TextStyle(
                    color: Colors.orange,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w700,
                  )),
            ],
          ))
        ],
      ),
    );
  }
}
