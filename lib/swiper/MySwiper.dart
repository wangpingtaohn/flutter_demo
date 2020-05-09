import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class MySwiper extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return _MySwiperState();
  }
}

class _MySwiperState extends State<MySwiper>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('轮播图'),
      ),
      body: new Swiper(
          itemCount: 3,
        itemBuilder: (BuildContext context,int index){
            return Image.network(
              'https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=2628977794,1833531909&fm=26&gp=0.jpg',
              fit: BoxFit.contain,);//scaleDown:当图片比Image大时，
          // 相当于contain模式，会等比例缩小图片。 当图片比Image小时，相当于none模式，不会对原图做任何操作。
          // contain:图片会被等比缩放到能够填充控件大小，并居中展示.
        },
        pagination: SwiperPagination(),//指示器(点下。。。)
        control: SwiperControl(),//配置左右箭头
      ),
    );
  }
}