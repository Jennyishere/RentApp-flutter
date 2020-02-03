import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

// 准备图片数据
const List<String> defaultImages = [
  'http://ww3.sinaimg.cn/large/006y8mN6ly1g6e2tdgve1j30ku0bsn75.jpg',
  'http://ww3.sinaimg.cn/large/006y8mN6ly1g6e2whp87sj30ku0bstec.jpg',
  'http://ww3.sinaimg.cn/large/006y8mN6ly1g6e2tl1v3bj30ku0bs77z.jpg',
];
// 图片宽750px，高424px；
var imgWidth = 750.0;
var imgHeight = 424.0;
class CommonSwiper extends StatelessWidget {
  final List<String> images;

  const CommonSwiper({Key key, this.images = defaultImages}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.width/imgWidth*imgHeight;
    return Container(
      // 需要设置盒子的高度 但不能写死，所以要定义一个变量
      height: height,
      child: new Swiper(
        autoplay: true,
        itemBuilder: (BuildContext context, int index) {
          return new Image.network(
            images[index], //图片
            fit: BoxFit.fill,
          );
        },
        itemCount: images.length, //长度
        pagination: new SwiperPagination(),
        // control: new SwiperControl(), 左右箭头
      ),
    );
  }
}
