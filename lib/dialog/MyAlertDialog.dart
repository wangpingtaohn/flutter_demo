import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'MyCustomDialog.dart';

class MyAlertDialog extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAlertDialogState();
  }
}

class _MyAlertDialogState extends State<MyAlertDialog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AlertDialog'),
      ),
      body: Column(
        children: <Widget>[
          RaisedButton(
              child: Text('customDialog'),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context){
                    return MyCustomDialog(); //此处
                  }
                );
              }),
          RaisedButton(
            child: Text('AlertDialog'),
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text('标题'),
                      content: Text('内容'),
                      actions: <Widget>[
                        FlatButton(
                          child: Text('取消'),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                        FlatButton(
                          child: Text('确定'),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ],
                    );
                  });
            },
          ),
        ],
      ),
    );
  }
}
