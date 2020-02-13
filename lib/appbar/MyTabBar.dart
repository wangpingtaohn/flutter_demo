import 'package:flutter/material.dart';

class MyTabBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: <Widget>[
                Tab(text: '热门',),
                Tab(text: '推荐',),
              ],
              indicatorColor: Colors.yellow,
              labelColor: Colors.yellow,
              unselectedLabelColor: Colors.white,
              indicatorSize: TabBarIndicatorSize.label,
            ),
            title: Text('myAppbar'),
            centerTitle: true,//标题是否居中
            backgroundColor: Colors.black,
//        leading: Icon(Icons.accessibility),//标题左边，没有点击事件的
            leading: IconButton(
              icon: Icon(Icons.beach_access),
              onPressed: () {
                Navigator.pop(context);
              },
            ), //标题左边，有点击事件的
            actions: <Widget>[ //导航右侧图标
              Icon(Icons.settings),
              Icon(Icons.departure_board)
            ],
          ),
          body: TabBarView(
            children: <Widget>[
              Text('热门内容'),
              Text('推荐内容')
            ],
          ),
        ),
      );
  }
}