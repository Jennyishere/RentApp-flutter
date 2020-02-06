import 'package:flutter/material.dart';

class CommonTag extends StatelessWidget {
  final String title;
  final Color color;
  final Color backgroundColor;

  const CommonTag.origin(this.title,
      {Key key, this.color = Colors.black, this.backgroundColor = Colors.grey})
      : super(key: key);

  factory CommonTag(String title) {
    // 需要返回构造的
    switch (title) {
      case '近地铁':
        return CommonTag.origin(title,
            color: Colors.red, backgroundColor: Colors.red[50]);
      case '集中供暖':
        return CommonTag.origin(title,
            color: Colors.orange, backgroundColor: Colors.orange[50]);
            case '随时看房':
        return CommonTag.origin(title,
            color: Colors.green, backgroundColor: Colors.green[50]);
            case '新上':
        return CommonTag.origin(title,
            color: Colors.red, backgroundColor: Colors.red[50]);
      default:
        return CommonTag.origin(title);
    }
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2.0),
      margin: EdgeInsets.only(right: 4.0),
      decoration: BoxDecoration(
          color: backgroundColor, borderRadius: BorderRadius.circular(8.0)),
      child: Text(
        title,
        style: TextStyle(fontSize: 12.0,color: color),
      ),
    );
  }
}
