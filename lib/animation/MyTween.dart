import 'package:flutter/material.dart';
import 'package:first_flutter_app/dialog/ToastUtils.dart';

class MyTween extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _MyTweenState();
  }
}

class _MyTweenState  extends State<MyTween> with SingleTickerProviderStateMixin{

  Animation<double> animation;
  AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(duration: const Duration(milliseconds: 2000),vsync: this);
    animation = (Tween(begin: 0.0,end: 240.0).animate(controller)//要使用Tween对象，请调用其animate()方法，传入一个控制器对象
    ..addListener((){ //..(两个点表示，使用animate()的返回值调用)
      setState(() {
        print("value=${animation.value}");//动画播放过程中，value一直跟着变化
      });
    }));
    animation.addStatusListener((state){
      ToastUtils.showToast("$state");
      print("value=$state");
      if (state == AnimationStatus.completed) {
        controller.reverse();//反置播放
      } else if (state == AnimationStatus.dismissed) {
        controller.forward();
      }
    });
    controller.forward();//开始动画
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tween动画'),
      ),
      body: Center(
        child: Container(
          color: Colors.yellow,
          height: animation.value,
          width: animation.value,
          child: new FlutterLogo(),
        ),
      ),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}