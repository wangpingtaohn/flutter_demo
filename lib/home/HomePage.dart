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
    return ListView(
      children: <Widget>[
        Text('首页内容'),
        SizedBox(
          height: 10,
        ),
        RaisedButton(
          child: Text("myScrollable"),
          onPressed: (){
            Navigator.pushNamed(context, MyRoute.MY_SCROLLABLE);
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
          child: Text("联动ListView"),
          onPressed: (){
            Navigator.pushNamed(context, MyRoute.ROW_LISTVIEW);
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
          child: Text("wrap"),
          onPressed: (){
            Navigator.pushNamed(context, MyRoute.MY_WRAP);
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
          child: Text("expanded"),
          onPressed: (){
            Navigator.pushNamed(context, MyRoute.MY_EXPANDED);
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
          child: Text("listView"),
          onPressed: (){
            Navigator.pushNamed(context, MyRoute.LISTVIEW);
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
          child: Text("gridview"),
          onPressed: (){
            Navigator.pushNamed(context, MyRoute.MY_GRIDVIEW);
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
          child: Text("myColumn"),
          onPressed: (){
            Navigator.pushNamed(context, MyRoute.MY_COLUMN);
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
          child: Text("aspectRadio"),
          onPressed: (){
            Navigator.pushNamed(context, MyRoute.ASPECT_RADIO);
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
          child: Text("localImage"),
          onPressed: (){
            Navigator.pushNamed(context, MyRoute.LOCAL_IMAGE);
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
          child: Text("ImageFile"),
          onPressed: (){
            Navigator.pushNamed(context, MyRoute.IMAGE_FILE);
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
          child: Text("listView Item"),
          onPressed: (){
            Navigator.pushNamed(context, MyRoute.MY_ITEM);
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
          child: Text("Wrap控件"),
          onPressed: (){
            Navigator.pushNamed(context, MyRoute.MY_WRAP);
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
          child: Text("生命周期"),
          onPressed: (){
            Navigator.pushNamed(context, MyRoute.LIFECYCLE);
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
          child: Text("listView"),
          onPressed: (){
            Navigator.pushNamed(context, MyRoute.LISTVIEW);
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
          child: Text("Card"),
          onPressed: (){
            Navigator.pushNamed(context, MyRoute.CARD);
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
          child: Text("Stack"),
          onPressed: (){
            Navigator.pushNamed(context, MyRoute.STACK);
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
        SizedBox(
          height: 10,
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
        SizedBox(
          height: 10,
        ),
        RaisedButton(
          child: Text("轮播图"),
          onPressed: (){
            Navigator.pushNamed(context, MyRoute.SWIPER);
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
          child: Text("AlertDialog"),
          onPressed: (){
            Navigator.pushNamed(context, MyRoute.ALERT);
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
          child: Text("SimpleDialog"),
          onPressed: (){
            Navigator.pushNamed(context, MyRoute.SIMPLE);
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
          child: Text("BottomSheet"),
          onPressed: (){
            Navigator.pushNamed(context, MyRoute.BOTTOM_SHEET);
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
          child: Text("Toast"),
          onPressed: (){
            Navigator.pushNamed(context, MyRoute.TOAST);
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
          child: Text("自定义dialog"),
          onPressed: (){
            Navigator.pushNamed(context, MyRoute.CUSTOM_DIALOG);
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
          child: Text("网络请求"),
          onPressed: (){
            Navigator.pushNamed(context, MyRoute.NETWORK);
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
          child: Text("动画"),
          onPressed: (){
            Navigator.pushNamed(context, MyRoute.ANIMATION);
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