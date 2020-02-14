import 'package:flutter/material.dart';
import 'MyStatefulWidget.dart';
import 'routes/Routes.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //配置本地化
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ],
      supportedLocales: [
        const Locale('zh', 'CH'),
        const Locale('en', 'US')
      ],
//      home: MyTab(),
      debugShowCheckedModeBanner: false,
      //右上角不显示debug图标
      initialRoute: MyRoute.TABS,
      //查找routes里的name
      theme: ThemeData(primarySwatch: Colors.red),
      //主题颜色
//      routes: routes,
      onGenerateRoute: onGenerateRoute,
    );
  }
}



class MyCenter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
//        child: Container(
//      width: 400,
//      height: 400,
//      decoration: BoxDecoration(
//          color: Colors.yellow,
////          borderRadius: BorderRadius.all(Radius.circular(60))
//      borderRadius: BorderRadius.circular(60),
//      image: DecorationImage(
//        image: NetworkImage('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1581422031471&di=df2254ecbc97fc0cae3396a670511021&imgtype=0&src=http%3A%2F%2Fimg2018.cnblogs.com%2Fblog%2F1762823%2F201911%2F1762823-20191104112732371-1699453123.jpg'),
//          fit: BoxFit.cover
//      )),
//
////      child: Image.network(
////        'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1581422031471&di=df2254ecbc97fc0cae3396a670511021&imgtype=0&src=http%3A%2F%2Fimg2018.cnblogs.com%2Fblog%2F1762823%2F201911%2F1762823-20191104112732371-1699453123.jpg',
////        fit: BoxFit.cover,
////      ),
////          child: Text(
////            'hello',
////            textDirection: TextDirection.ltr,
////            style: TextStyle(
////                color: Colors.red,
////                fontSize: 32
////            ),
////          )
//    )
//    child: ClipOval(
//      child: Image.network(
//        'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1581422031471&di=df2254ecbc97fc0cae3396a670511021&imgtype=0&src=http%3A%2F%2Fimg2018.cnblogs.com%2Fblog%2F1762823%2F201911%2F1762823-20191104112732371-1699453123.jpg',
//        fit: BoxFit.cover,
//      width: 300,
//      height: 300,),
//    ),
//    child: MyListView(),//列表
//      child: MyGridView(),//网格
//    child: LocalImage(),//本地图片
//    child: MyColumn(),//垂直布局
//    child: MyRow(),//水平布局
//    child: MyExpaded(),
//    child: Demo01(),
//      child: MyStack(),//stack
//    child: MyAspectRadio(),//AspectRadio
//    child: MyCard(),
//    child: MyWrap(),
    child: MySatefulWidget(),
    );
  }



}

