import 'package:flutter/material.dart';


class MyListView extends StatelessWidget {

  var list = new List();

  MyListView(){
    for(var i = 0;i < 20;i++){
      list.add('第$i条数据');
    }
  }

  @override
  Widget build(BuildContext context) {
//    return ListView(
//      padding: EdgeInsets.all(15.0),
//      scrollDirection: Axis.vertical,
//      children: _getStaticData(),
//    );
  return ListView.builder(
    itemCount: this.list.length,
    itemBuilder: (context,index){
      return ListTile(
        title: Text(this.list[index]),
      );
    }
  );
  }
}

List<Widget> _getStaticData(){
  return <Widget>[
    ListTile(
        leading: Icon(Icons.ac_unit,color: Colors.red,size: 44,),
        trailing: Icon(Icons.ac_unit,color: Colors.red,size: 44,),
        title: Text('要安装并运行Flutter，您的开发环境必须满足以下最低要求:'),
        subtitle: Text('要安装并运行Flutter，您的开发环境必须满足以下最低要求:')
    ),
    ListTile(
        leading: Icon(Icons.accessibility),
        title: Text('要安装并运行Flutter，您的开发环境必须满足以下最低要求:'),
        subtitle: Text('要安装并运行Flutter，您的开发环境必须满足以下最低要求:')
    ),
    ListTile(
        leading: Image.asset('images/bg.png',width: 44,height: 44,),
        title: Text('要安装并运行Flutter，您的开发环境必须满足以下最低要求:'),
        subtitle: Text('要安装并运行Flutter，您的开发环境必须满足以下最低要求:')
    ),
    ListTile(
        title: Text('要安装并运行Flutter，您的开发环境必须满足以下最低要求:'),
        subtitle: Text('要安装并运行Flutter，您的开发环境必须满足以下最低要求:')
    ),
    ListTile(
        title: Text('要安装并运行Flutter，您的开发环境必须满足以下最低要求:'),
        subtitle: Text('要安装并运行Flutter，您的开发环境必须满足以下最低要求:')
    ),ListTile(
        title: Text('要安装并运行Flutter，您的开发环境必须满足以下最低要求:'),
        subtitle: Text('要安装并运行Flutter，您的开发环境必须满足以下最低要求:')
    ),ListTile(
        title: Text('要安装并运行Flutter，您的开发环境必须满足以下最低要求:'),
        subtitle: Text('要安装并运行Flutter，您的开发环境必须满足以下最低要求:')
    ),ListTile(
        title: Text('要安装并运行Flutter，您的开发环境必须满足以下最低要求:'),
        subtitle: Text('要安装并运行Flutter，您的开发环境必须满足以下最低要求:999')
    )
  ];
}


