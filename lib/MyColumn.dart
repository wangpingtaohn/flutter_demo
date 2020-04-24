import 'package:flutter/material.dart';

class MyColumn extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 300,
      color: Colors.red,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,//主轴(垂直)排列方式
        children: <Widget>[
          Image.network(
            'http://staticcdntest.fantuan.cn/uimage/9b/50/07/75/9b5007750a9761115376e22b2b296812.jpg?x-oss-process=image/resize,m_lfit,h_600,w_600/quality,Q_70/interlace,1/format,jpg',
            fit: BoxFit.cover,
            width: 50,
            height: 50,),
          Image.network(
            'http://staticcdntest.fantuan.cn/uimage/9b/50/07/75/9b5007750a9761115376e22b2b296812.jpg?x-oss-process=image/resize,m_lfit,h_600,w_600/quality,Q_70/interlace,1/format,jpg',
            fit: BoxFit.cover,
            width: 50,
            height: 50,),
          Image.network(
            'http://staticcdntest.fantuan.cn/uimage/9b/50/07/75/9b5007750a9761115376e22b2b296812.jpg?x-oss-process=image/resize,m_lfit,h_600,w_600/quality,Q_70/interlace,1/format,jpg',
            fit: BoxFit.cover,
            width: 50,
            height: 50,),
          Image.network(
            'http://staticcdntest.fantuan.cn/uimage/9b/50/07/75/9b5007750a9761115376e22b2b296812.jpg?x-oss-process=image/resize,m_lfit,h_600,w_600/quality,Q_70/interlace,1/format,jpg',
            fit: BoxFit.cover,
            width: 50,
            height: 50,)
        ],
      ),
    );
  }
}