import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget {

  final arguments;

  SettingPage({this.arguments});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      appBar: AppBar(
////        title: Text('搜索标题栏'),
//      ),
      body: Center(
        child: Text('设置页 ${arguments != null ? arguments['id'] : '0000'}'),
      ),
      floatingActionButton: FloatingActionButton(
        child:Text('返回'),
        onPressed: (){
          Navigator.of(context).pop();
        },
      ),
    );
  }
}