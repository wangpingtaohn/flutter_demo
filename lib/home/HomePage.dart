import 'package:first_flutter_app/search/SearchPage.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}


class _HomePageState extends State<HomePage>{

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text('首页内容'),
        SizedBox(
          height: 10,
        ),
        RaisedButton(
          child: Text("去搜索"),
          onPressed: (){
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => SearchPage()//目标页
              )
            );
          },
        )
      ],
    );
  }
}