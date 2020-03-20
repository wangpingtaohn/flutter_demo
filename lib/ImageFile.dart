import 'package:flutter/material.dart';

class MyImageFilePage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _MyImageFilePageState();
  }
}

class _MyImageFilePageState extends State<MyImageFilePage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('获取相册'),
      ),
    );
  }
}