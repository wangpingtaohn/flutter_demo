import 'package:first_flutter_app/MyTab.dart';
import 'package:first_flutter_app/routes/Routes.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MyDrawer'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            RaisedButton(
              child: Text('RaisedButton'),
              onPressed: () {
                /*1.路由直接跳转到下一个页面：
                Navigator.pushNamed(context,"/login");
                2.跳转的下一个页面，替换当前的页面：
                Navigator.of(context).pushReplacementNamed('/registerSecond');
                3.返回上一个页面：
                Navigator.of(context).pop();
                4.清空堆栈路由，返回指定的路由：

                Navigator.of(context).pushAndRemoveUntil(

                　　new MaterialPageRoute(builder:(context)=>new Tabs()),

                　　(route)=>route==null

                );*/

                Navigator.pushNamed(context, MyRoute.BUTTON_DETAIL);
              //替换当前页面
//                Navigator.pushReplacementNamed(context, MyRoute.BUTTON_DETAIL);
              //先结束当前页面，再打开新页面
//                Navigator.popAndPushNamed(context, MyRoute.BUTTON_DETAIL);
//                Navigator.of(context).pushAndRemoveUntil(
//                    new MaterialPageRoute(builder: (context) => new MyTab()),
//                        (route) => route == null
//                );
              },
            ),
            SizedBox(
              height: 5,
            ),
            FlatButton(
              child: Text('FlatButton'),
              onPressed: (){},
            ),
            SizedBox(
              height: 5,
            ),
            OutlinedButton(
              child: Text('OutlineButton'),
              onPressed: (){},
            ),
            SizedBox(
              height: 5,
            ),
          ],
        ),
      ),
    );
  }
}