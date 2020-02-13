import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MyDrawer'),
      ),
      body: Center(
        child: Text('内容'),
      ),
      drawer: Drawer(
          child: Column(
            children: <Widget>[
              DrawerHeader(
                child: Text('左侧标题'),
              ),
              Divider(),
              Text('左侧边栏内容'),
            ],
          ),
      ),
      endDrawer: Drawer(
        child: Center(
          child: Text('右侧边栏内容'),
        ),
      ),
    );
  }
}