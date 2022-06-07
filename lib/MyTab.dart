import 'package:first_flutter_app/disc/DiscPage.dart';
import 'package:first_flutter_app/home/HomePage.dart';
import 'package:first_flutter_app/msg/MsgPage.dart';
import 'package:first_flutter_app/my/MyPage.dart';
import 'package:flutter/material.dart';


class MyTab extends StatefulWidget {

  @override
  _MyTabState createState() {
    // TODO: implement createState
    return _MyTabState();
  }
}

class _MyTabState extends State<MyTab>{

  var _pages = [
    HomePage(),
    MsgPage(),
    DiscPage(),
    MyPage()
  ];
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('我是标题栏'),
        ),
        body: this._pages[this._currentIndex],
        bottomNavigationBar:BottomNavigationBar(
          currentIndex: this._currentIndex,
          iconSize: 22.0,//icon大小
          fixedColor:Colors.blue, //选中的颜色，如果不设置，默认跟主题颜色一样
          type: BottomNavigationBarType.fixed, //解决多个tabItem时，不显示的配置
          onTap: (int index) {
            setState(() {
              this._currentIndex = index;
            });
          },
          items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '首页'
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: '消息'
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.departure_board),
            label: '发现'
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: '我的'
        ),
//        BottomNavigationBarItem(
//            icon: Image.asset('/images/bg.png'),
//            title: Text('发现')
//        )
      ],
    ));
  }
}