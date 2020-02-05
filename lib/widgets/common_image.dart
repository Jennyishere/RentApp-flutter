import 'package:flutter/material.dart';
import 'package:flutter_advanced_networkimage/provider.dart';

// 定义正则 判断图片是网络图还是本地图片
final networkUrlReg = RegExp('^http');
final localUrlReg = RegExp('^static');

class CommonImage extends StatelessWidget {
  // 定义几个参数
  final String src;
  final double height;
  final double width;
  final BoxFit fit;
// this.src是必填参数 放在对象外面
  const CommonImage(this.src, {Key key, this.height, this.width, this.fit})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 如果是网络图 网络图主要是可以使用延迟
    if (networkUrlReg.hasMatch(src)) {
      return Image(
          width: width,
          height: height,
          fit: fit,
          image: AdvancedNetworkImage(src,
              useDiskCache: true,
              cacheRule: CacheRule(maxAge: Duration(days: 7)),
              timeoutDuration: Duration(seconds: 20)));
    }
    // 如果是本地图
    if (localUrlReg.hasMatch(src)) {
      return Image.asset(
        src,
        width: width,
        height: height,
        fit: fit,
      );
    }
    assert(false, '图片地址 src 不合法！');
    return Container();
  }
}
