import 'package:flutter/material.dart';
import 'package:first_flutter_app/dialog/ToastUtils.dart';

class MyRotationTransition extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _MyRotationTransitionState();
  }
}

class _MyRotationTransitionState  extends State<MyRotationTransition> with SingleTickerProviderStateMixin{

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
    animation.addStatusListener((status){
//      ToastUtils.showToast("$status");
      if (status == AnimationStatus.completed) {
        //动画从 controller.forward() 正向执行 结束时会回调此方法
        controller.reset();
        controller.forward();
      } else if (status == AnimationStatus.dismissed) {
        //动画从 controller.reverse() 反向执行 结束时会回调此方法
      } else if (status == AnimationStatus.forward) {
        //执行 controller.forward() 会回调此状态
      } else if (status == AnimationStatus.reverse) {
        //执行 controller.reverse() 会回调此状态
      }
    });
    controller.forward();//开始动画
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('选择动画'),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 20),
        alignment: Alignment.topCenter,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RotationTransition(
              //设置动画的旋转中心
              alignment: Alignment.center,
              //动画控制器
              turns: controller,
              //将要执行动画的子view
              child:Image.asset('images/loading.png'),
            ),
            SizedBox(width: 5),
            Text('加载中...'),
          ],
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