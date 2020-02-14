import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class MySimpleDialog extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return _MySimpleDialogState();
  }
}

class _MySimpleDialogState extends State<MySimpleDialog>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SimpleDialog'),
      ),
      body: RaisedButton(
        child: Text('show'),
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) {
                return SimpleDialog(
                  title: Text('标题'),
                  children: <Widget>[
                    SimpleDialogOption(
                      child: Text('option 1'),
                      onPressed: (){},
                    ),
                    SimpleDialogOption(
                      child: Text('option 2'),
                      onPressed: (){},
                    ),
                    SimpleDialogOption(
                      child: Text('option 3'),
                      onPressed: (){
                        Navigator.pop(context,'3');//其中参数'3'可以当结果返回
                      },
                    ),
                  ],
                );
              }
          );
        },
      ),
    );
  }
}