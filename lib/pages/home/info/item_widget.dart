import 'package:flutter/material.dart';
import 'package:rentapp/pages/home/info/data.dart';
import 'package:rentapp/widgets/common_image.dart';

class ItemWidge extends StatelessWidget {
  final InfoItem data;

  const ItemWidge(this.data, {Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10.0, bottom: 10.0, right: 10.0),
      height: 90.0,
      child: Row(
        children: <Widget>[
          CommonImage(
            data.imageUri,
            width: 120.0,
            height: 90.0,
          ),
          Padding(padding: EdgeInsets.only(left:10.0)),
          Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(data.title,
              style: TextStyle(color:Colors.black,fontWeight: FontWeight.w600)
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[Text(data.source), Text(data.time)],
              )
            ],
          ))
        ],
      ),
    );
  }
}
