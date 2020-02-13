import 'package:first_flutter_app/MyTab.dart';
import 'package:first_flutter_app/Setting/SettingPage.dart';
import 'package:first_flutter_app/appbar/MyAppBar.dart';
import 'package:first_flutter_app/appbar/MyTabBar.dart';
import 'package:first_flutter_app/search/SearchPage.dart';
import 'package:flutter/material.dart';

class MyRoute {

  static const String TABS = '/tabs';
  static const String SEARCH = '/search';
  static const String SETTING = '/setting';
  static const String APPBAR = '/appbar';
  static const String TABBAR = '/tabbar';
}

final _routes = {
  MyRoute.TABS:(context) => MyTab(),
  MyRoute.SEARCH:(context,{arguments}) => SearchPage(arguments: arguments,),
  MyRoute.SETTING:(context,{arguments}) => SettingPage(arguments: arguments),
  MyRoute.APPBAR:(context) => MyAppbar(),
  MyRoute.TABBAR:(context) => MyTabBar(),
};


Route onGenerateRoute(RouteSettings settings) {
  final String name = settings.name;
  final Function pageBuilder = _routes[name];
  if (pageBuilder != null) {
    if (settings.arguments != null) {
      // 如果透传了参数
      return MaterialPageRoute(
          builder: (context) =>
              pageBuilder(context, arguments: settings.arguments));
    } else {
      // 没有透传参数
      return MaterialPageRoute(builder: (context) => pageBuilder(context));
    }
  }
  return null;
}