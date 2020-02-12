import 'package:first_flutter_app/MyRaisedButton.dart';
import 'package:flutter/material.dart';

class MyWrap extends StatelessWidget {

  var list = new List();

  MyWrap(){
    for(var i = 0;i < 20;i++){
      list.add('第$i条数据');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      direction: Axis.horizontal,//方向
        spacing: 5,//主轴间距
        runSpacing: 5,//副轴间距
        alignment: WrapAlignment.start,//主轴方向对其方式
      children: _getWidgets()
    );
  }

  List<Widget> _getWidgets(){
    return list.map((value) {
      return MyRaisedButton(value);
    }).toList();
  }
}