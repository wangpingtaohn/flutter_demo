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
    return Scaffold(
      appBar: AppBar(
        title: Text('wrap'),
      ),
      body: Wrap(
        direction: Axis.horizontal,//方向
        spacing: 5,//主轴间距
        runSpacing: 5,//副轴间距
//        alignment: WrapAlignment.center,//主轴方向对其方式
        children: _getItems(),
      ),
    );
  }

  List<Widget> _getWidgets(){
    return list.map((value) {
      return MyRaisedButton(value);
    }).toList();
  }

  List<Widget> _getItems(){
      var widgets = List<Widget>();
      for (var i = 0; i < list.length; i++) {
        var item = list[i];
        widgets.add(Container(
            height: 26,
            padding: EdgeInsets.only(left: 9, top:3,right: 9, bottom: 2),
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.all(Radius.circular(50)),
            ),
            child: Text(
              item,
              style: TextStyle(
                  fontSize: 13,),
            ),
          ),

        );
      }
      return widgets;
  }
}