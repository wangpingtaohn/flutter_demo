import 'package:flutter/material.dart';

class MyAspectRadio extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
        aspectRatio: 2/1,//宽/高
        child: Container(
          color: Colors.blue
        ),
    );
  }
}