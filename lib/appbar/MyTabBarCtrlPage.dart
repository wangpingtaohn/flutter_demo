import 'package:flutter/material.dart';

class MyTabBarCtrlPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _MyTabBarCtrlPageState();
  }
}

class _MyTabBarCtrlPageState extends State<MyTabBarCtrlPage> with SingleTickerProviderStateMixin{

  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
        vsync:this,
        length:3
    );
    _tabController.addListener(() {
      print('index= ${_tabController.index}');
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MyTabBarCtrlPage'),
        bottom: TabBar(
          controller: this._tabController,//注意，必须要加
          tabs: <Widget>[
            Tab(text: '热门'),
            Tab(text: '推荐'),
            Tab(text: '更多')
          ],
        ),
      ),
      body: TabBarView(
        controller: this._tabController,//注意，必须要加
        children: <Widget>[
          Center(
            child: Text('热门内容'),
          ),
          Center(
            child: Text('推荐内容'),
          ),
          Center(
            child: Text('更多内容'),
          )
        ],
      ),
    );
  }
}