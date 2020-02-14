import 'package:first_flutter_app/MyTab.dart';
import 'package:first_flutter_app/Setting/SettingPage.dart';
import 'package:first_flutter_app/appbar/MyAppBar.dart';
import 'package:first_flutter_app/appbar/MyTabBar.dart';
import 'package:first_flutter_app/search/SearchPage.dart';
import 'package:flutter/material.dart';
import 'package:first_flutter_app/appbar/MyTabBarCtrlPage.dart';
import 'package:first_flutter_app/drawer/MyDrawer.dart';
import 'package:first_flutter_app/button/MyButton.dart';
import 'package:first_flutter_app/text/MyTextFiled.dart';
import 'package:first_flutter_app/date/MyDatePick.dart';
import 'package:first_flutter_app/swiper/MySwiper.dart';


class MyRoute {

  static const String TABS = '/tabs';
  static const String SEARCH = '/search';
  static const String SETTING = '/setting';
  static const String APPBAR = '/appbar';
  static const String TABBAR = '/tabbar';
  static const String TABBAR_CTRL = '/tabbarCtrl';
  static const String DRAWER = '/drawer';
  static const String BUTTON = '/button';
  static const String TEXT = '/text';
  static const String DATE_PICK = '/datePick';
  static const String SWIPER = '/swiper';
}

final _routes = {
  MyRoute.TABS:(context) => MyTab(),
  MyRoute.SEARCH:(context,{arguments}) => SearchPage(arguments: arguments,),
  MyRoute.SETTING:(context,{arguments}) => SettingPage(arguments: arguments),
  MyRoute.APPBAR:(context) => MyAppbar(),
  MyRoute.TABBAR:(context) => MyTabBar(),
  MyRoute.TABBAR_CTRL:(context) => MyTabBarCtrlPage(),
  MyRoute.DRAWER:(context) => MyDrawer(),
  MyRoute.BUTTON:(context) => MyButton(),
  MyRoute.TEXT:(context) => MyTextFiled(),
  MyRoute.DATE_PICK:(context) => MyDatePick(),
  MyRoute.SWIPER:(context) => MySwiper(),
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