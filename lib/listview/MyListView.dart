import 'package:first_flutter_app/common/fancToast.dart';
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
  return Scaffold(
    body: Stack(
      children: <Widget>[
        ListView.builder(
            itemCount: this.list.length,
            itemBuilder: (context,index){
              return RaisedButton(
                child: Text(this.list[index]),
                onPressed: (){
                  FancToast.showToast('列表$index');
                },
              );
            }
        ),
        Align(
          alignment: Alignment(0,1),
          child: RaisedButton(
            child: Text('固定底部'),
            onPressed: (){
              FancToast.showToast('底部');
            },
          ),
        ),

      ],
    )
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


