

import 'package:flutter/material.dart';

class MyCustomDialog extends Dialog{

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,//设置透明
      child: Center(
        child: Container(
          height: 180,
          width: 320,
          color: Colors.white,
            child: Text('自定义dialog'),
        )
      )
    );
  }
}