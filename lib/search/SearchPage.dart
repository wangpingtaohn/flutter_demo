import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {

  final arguments;

  SearchPage({this.arguments});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      appBar: AppBar(
////        title: Text('搜索标题栏'),
//      ),
      body: Center(
        child: Text('搜索页 ${arguments != null ? arguments['ids']:'0000333'}'),
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