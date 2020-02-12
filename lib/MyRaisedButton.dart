import 'package:flutter/material.dart';

class MyRaisedButton extends StatelessWidget {

  final String content;

  const MyRaisedButton(this.content,{Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text(this.content),
      onPressed: (){

      },
    );
  }
}