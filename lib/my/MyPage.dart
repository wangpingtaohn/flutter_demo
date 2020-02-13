import 'package:first_flutter_app/Setting/SettingPage.dart';
import 'package:flutter/material.dart';
import 'package:first_flutter_app/routes/Routes.dart';

class MyPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _MyPageState();
  }
}


class _MyPageState extends State<MyPage>{

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text('个人页内容'),
        SizedBox(
          height: 10,
        ),
        RaisedButton(
          child: Text("去设置了"),
          onPressed: (){
//            //相当于跳转到根页面，然后把之前的栈清空
//            Navigator.pushAndRemoveUntil(
//                context,
//                MaterialPageRoute(builder: (context) => RootPage()),
//                (route) => route = null);
            Navigator.pushNamed(context, MyRoute.SETTING,arguments: {'id':'123456'});//命名路由
//            Navigator.of(context).push( //基本路由
//                MaterialPageRoute(
//                    builder: (context) => SettingPage()//目标页
//                )
//            );
          },
        )
      ],
    );
  }
}