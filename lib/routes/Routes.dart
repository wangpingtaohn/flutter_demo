import 'package:first_flutter_app/ImageFile.dart';
import 'package:first_flutter_app/MyCard.dart';
import 'package:first_flutter_app/listview/MyListView.dart';
import 'package:first_flutter_app/MyStack.dart';
import 'package:first_flutter_app/MyTab.dart';
import 'package:first_flutter_app/Setting/SettingPage.dart';
import 'package:first_flutter_app/animation/MyAnimation.dart';
import 'package:first_flutter_app/animation/MyRotationTransition.dart';
import 'package:first_flutter_app/animation/MyTween.dart';
import 'package:first_flutter_app/animation/MyAnimatedWidget.dart';
import 'package:first_flutter_app/appbar/MyAppBar.dart';
import 'package:first_flutter_app/appbar/MyTabBar.dart';
import 'package:first_flutter_app/button/buttonDescPage.dart';
import 'package:first_flutter_app/button/buttonDetailPage.dart';
import 'package:first_flutter_app/lifecycle/myLifeCyclePage.dart';
import 'package:first_flutter_app/listview/RowListView.dart';
import 'package:first_flutter_app/listview/myScrollablePositionedList.dart';
import 'package:first_flutter_app/search/SearchPage.dart';
import 'package:first_flutter_app/text/ListViewItem.dart';
import 'package:flutter/material.dart';
import 'package:first_flutter_app/appbar/MyTabBarCtrlPage.dart';
import 'package:first_flutter_app/drawer/MyDrawer.dart';
import 'package:first_flutter_app/button/MyButton.dart';
import 'package:first_flutter_app/text/MyTextFiled.dart';
import 'package:first_flutter_app/date/MyDatePick.dart';
import 'package:first_flutter_app/swiper/MySwiper.dart';
import 'package:first_flutter_app/dialog/MyAlertDialog.dart';
import 'package:first_flutter_app/dialog/MySimpleDialog.dart';
import 'package:first_flutter_app/dialog/MyBottomSheet.dart';
import 'package:first_flutter_app/dialog/MyToast.dart';
import 'package:first_flutter_app/dialog/MyCustomDialog.dart';
import 'package:first_flutter_app/net/MyNetworkPage.dart';

import '../LocalImage.dart';
import '../MyAspectRadio.dart';
import '../MyColumn.dart';
import '../MyExpanded.dart';
import '../gridview/MyLGridView.dart';
import '../MyWrap.dart';


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
  static const String ALERT = '/alert';
  static const String SIMPLE = '/simple';
  static const String BOTTOM_SHEET = '/bottomSheet';
  static const String TOAST = '/toast';
  static const String CUSTOM_DIALOG = '/customDialog';
  static const String NETWORK = '/network';
  static const String ANIMATION = '/animation';
  static const String TWEEN = '/tween';
  static const String ANIMATED = '/animated';
  static const String STACK = '/stack';
  static const String CARD = '/card';
  static const String ROTATIONTRANSITION = '/rotationTransition';
  static const String BUTTON_DETAIL = '/buttonDetail';
  static const String BUTTON_DESC = '/buttonDesc';
  static const String LISTVIEW = '/listview';
  static const String LIFECYCLE = '/lifeCycle';
  static const String MY_WRAP = '/myWrap';
  static const String MY_ITEM = '/myItem';
  static const String IMAGE_FILE = '/imageFile';
  static const String LOCAL_IMAGE = '/loadImage';
  static const String ASPECT_RADIO = '/aspectRadio';
  static const String MY_COLUMN = '/MyColumn';
  static const String MY_EXPANDED = '/MyExpanded';
  static const String MY_GRIDVIEW = '/MyGridView';
  static const String ROW_LISTVIEW = '/rowListView';
  static const String MY_SCROLLABLE = '/myScrollable';
}

final routes = {
  MyRoute.TABS:(context) => MyTab(),
  MyRoute.MY_ITEM:(context) => MyListViewItem(),
  MyRoute.MY_WRAP:(context) => MyWrap(),
  MyRoute.SEARCH:(context,{arguments}) => SearchPage(arguments: arguments,),
  MyRoute.SETTING:(context,{arguments}) => SettingPage(arguments: arguments),
  MyRoute.APPBAR:(context) => MyAppbar(),
  MyRoute.TABBAR:(context) => MyTabBar(),
  MyRoute.TABBAR_CTRL:(context) => MyTabBarCtrlPage(),
  MyRoute.DRAWER:(context) => MyDrawer(),
  MyRoute.BUTTON:(context) => MyButton(),
  MyRoute.TEXT:(context) => MyTextFiled(),
  // MyRoute.DATE_PICK:(context) => MyDatePick(),
  MyRoute.SWIPER:(context) => MySwiper(),
  MyRoute.ALERT:(context) => MyAlertDialog(),
  MyRoute.SIMPLE:(context) => MySimpleDialog(),
  MyRoute.BOTTOM_SHEET:(context) => MyBottomSheetDialog(),
  MyRoute.TOAST:(context) => MyToast(),
  MyRoute.CUSTOM_DIALOG:(context) => MyCustomDialog(),
  MyRoute.NETWORK:(context) => MyNetWorkPage(),
  MyRoute.ANIMATION:(context) => MyAnimation(),
  MyRoute.TWEEN:(context) => MyTween(),
  MyRoute.ANIMATED:(context) => MyAnimatedLogo(),
  MyRoute.STACK:(context) => MyStack(),
  MyRoute.CARD:(context) => MyCard(),
  MyRoute.ROTATIONTRANSITION:(context) => MyRotationTransition(),
  MyRoute.BUTTON_DETAIL:(context) => ButtonDetailPage(),
  MyRoute.BUTTON_DESC:(context) => ButtonDescPage(),
  MyRoute.LISTVIEW:(context) => MyListView(),
  MyRoute.LIFECYCLE:(context) => MyLifeCyclePage(),
  MyRoute.IMAGE_FILE:(context) => MyImageFilePage(),
  MyRoute.LOCAL_IMAGE:(context) => LocalImage(),
  MyRoute.ASPECT_RADIO:(context) => MyAspectRadio(),
  MyRoute.MY_COLUMN:(context) => MyColumn(),
  MyRoute.MY_EXPANDED:(context) => MyExpanded(),
  MyRoute.MY_GRIDVIEW:(context) => MyGridView(),
  MyRoute.ROW_LISTVIEW:(context) => RowListView(),
  MyRoute.MY_SCROLLABLE:(context) => MyScrollablePositionedListPage(),
};


Route onGenerateRoute(RouteSettings settings) {
  final String name = settings.name;
  final Function pageBuilder = routes[name];
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