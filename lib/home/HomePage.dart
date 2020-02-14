import 'package:first_flutter_app/search/SearchPage.dart';
import 'package:flutter/material.dart';
import 'package:first_flutter_app/routes/Routes.dart';

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
            Navigator.pushNamed(context, MyRoute.SEARCH);
//            Navigator.of(context).push(
//              MaterialPageRoute(
//                builder: (context) => SearchPage()//目标页
//              )
//            );
          },
        ),
        SizedBox(
          height: 10,
        ),
        RaisedButton(
          child: Text("导航栏页"),
          onPressed: (){
            Navigator.pushNamed(context, MyRoute.APPBAR);
//            Navigator.of(context).push(
//              MaterialPageRoute(
//                builder: (context) => SearchPage()//目标页
//              )
//            );
          },
        ),
        SizedBox(
          height: 10,
        ),
        RaisedButton(
          child: Text("导航栏页2"),
          onPressed: (){
            Navigator.pushNamed(context, MyRoute.TABBAR);
//            Navigator.of(context).push(
//              MaterialPageRoute(
//                builder: (context) => SearchPage()//目标页
//              )
//            );
          },
        ),
        SizedBox(
          height: 10,
        ),
        RaisedButton(
          child: Text("导航栏页Ctrl"),
          onPressed: (){
            Navigator.pushNamed(context, MyRoute.TABBAR_CTRL);
//            Navigator.of(context).push(
//              MaterialPageRoute(
//                builder: (context) => SearchPage()//目标页
//              )
//            );
          },
        ),
        SizedBox(
          height: 10,
        ),
        RaisedButton(
          child: Text("drawer"),
          onPressed: (){
            Navigator.pushNamed(context, MyRoute.DRAWER);
//            Navigator.of(context).push(
//              MaterialPageRoute(
//                builder: (context) => SearchPage()//目标页
//              )
//            );
          },
        ),
        SizedBox(
          height: 10,
        ),
        RaisedButton(
          child: Text("button"),
          onPressed: (){
            Navigator.pushNamed(context, MyRoute.BUTTON);
//            Navigator.of(context).push(
//              MaterialPageRoute(
//                builder: (context) => SearchPage()//目标页
//              )
//            );
          },
        ),
        SizedBox(
          height: 10,
        ),
        RaisedButton(
          child: Text("textField"),
          onPressed: (){
            Navigator.pushNamed(context, MyRoute.TEXT);
//            Navigator.of(context).push(
//              MaterialPageRoute(
//                builder: (context) => SearchPage()//目标页
//              )
//            );
          },
        ),
        RaisedButton(
          child: Text("日期组件"),
          onPressed: (){
            Navigator.pushNamed(context, MyRoute.DATE_PICK);
//            Navigator.of(context).push(
//              MaterialPageRoute(
//                builder: (context) => SearchPage()//目标页
//              )
//            );
          },
        ),
      ],
    );
  }
}