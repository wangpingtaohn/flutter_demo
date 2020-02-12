import 'package:flutter/material.dart';

class MyStack extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 400,
      width: 400,
      color: Colors.blue,
      alignment: Alignment(0,1),
      child: new Stack(
        children: <Widget>[
          Align( //相对位置
            alignment: Alignment(0,0.5),//(0.0)为中心
            child: Icon(Icons.home,size:60,color: Colors.red),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Icon(Icons.save,size:60,color: Colors.yellow),
          ),
          Positioned(//绝对位置）
            left: 0,//左上角
//            top: 0,
//            right: 0,
            bottom: 100,
            child: Icon(Icons.settings,size:60,color: Colors.yellow),
          )
        ],
      ),
    );
  }
}