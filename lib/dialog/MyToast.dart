import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class MyToast extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return _MyToastState();
  }
}

class _MyToastState extends State<MyToast>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Toast'),
      ),
      body: RaisedButton(
        child: Text('show'),
        onPressed: () {
          print('_MyToastState');
          Fluttertoast.showToast(
              msg: 'hello toast',
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.CENTER,
            backgroundColor: Colors.black,
            timeInSecForIos: 1,
            textColor: Colors.white,
            fontSize: 15,
          );
        },
      ),
    );
  }
}