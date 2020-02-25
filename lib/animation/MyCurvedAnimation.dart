import 'package:flutter/material.dart';

/**
 * author : wpt
 * date   : 2020-02-25 09:26
 * desc   :
 */

class MyCurvedAnimation extends AnimatedWidget {

  static final _opacityTween = new Tween<double>(begin: 0.1, end: 1.0);
  static final _sizeTween = new Tween<double>(begin: 0.0, end: 300.0);

  MyCurvedAnimation({Key key, Animation<double> animation})
      : super(key: key, listenable: animation);

  @override
  Widget build(BuildContext context) {
    final Animation<double> animation = listenable;
    return Scaffold(
      appBar: AppBar(
        title: Text('Tween动画'),
      ),
      body: Center(
        child: Opacity(
          opacity: _opacityTween.evaluate(animation),
          child: Container(
            height: _sizeTween.evaluate(animation),
            width: _sizeTween.evaluate(animation),
            child: new FlutterLogo(),
          ),

        ),
      ),
    );
  }
}

class MyAnimatedLogo extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _MyAnimatedLogoState();
  }
}

class _MyAnimatedLogoState extends State<MyAnimatedLogo> with SingleTickerProviderStateMixin {
  Animation<double> animation;
  AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(duration: Duration(milliseconds: 2000),vsync: this);
    animation = Tween(begin: 0.0,end: 240.0).animate(controller);
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return new MyCurvedAnimation(animation: animation);
  }
}
