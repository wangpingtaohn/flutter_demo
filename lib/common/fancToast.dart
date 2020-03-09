import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/material.dart';
class FancToast {

  static showToast(String msg){
      Fluttertoast.showToast(
        msg: '$msg',
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        backgroundColor: Colors.black,
        timeInSecForIos: 1,
        textColor: Colors.white,
        fontSize: 15,
      );
  }
}