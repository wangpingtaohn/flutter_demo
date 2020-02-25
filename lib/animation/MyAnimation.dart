import 'package:first_flutter_app/routes/Routes.dart';
import 'package:flutter/material.dart';

class MyAnimation extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _MyAnimationState();
  }
}

class _MyAnimationState  extends State<MyAnimation>{


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('网络请求'),
      ),
      body: ListView(
        children: <Widget>[
          RaisedButton(
            child: Text('Tween'),
            onPressed: (){
              Navigator.pushNamed(context, MyRoute.TWEEN);
            },
          ),
          RaisedButton(
            child: Text('Animated'),
            onPressed: (){
              Navigator.pushNamed(context, MyRoute.ANIMATED);
            },
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}