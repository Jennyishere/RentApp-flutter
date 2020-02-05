import 'package:flutter/material.dart';
import 'package:rentapp/widgets/common_image.dart';

import 'index_recommond_data.dart';

class IndexRecommondWidget extends StatelessWidget {
  final IndexRecommendItem data;

  const IndexRecommondWidget(this.data, {Key key }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // 点击跳转数据中的url
      Navigator.of(context).pushNamed(data.navigationUrl);
      },
      child: Container(
                  color: Colors.green,
                  width: (MediaQuery.of(context).size.width-10.0*3)/2,
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(data.title,
                          style: TextStyle(color:Colors.white),),
                          Text(data.subTitle,
                          style: TextStyle(color:Colors.white),
                          )
                        ],
                      ),
                      CommonImage(data.imageUrl,width: 60.0,)
                    ],
                  ),
                ),
    );
  }
}