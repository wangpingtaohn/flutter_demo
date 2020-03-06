import 'package:first_flutter_app/routes/Routes.dart';
import 'package:first_flutter_app/text/MyTextFiled.dart';
import 'package:flutter/material.dart';

import '../MyTab.dart';

/**
 *    author : wpt
 *    date   : 2020-03-06 11:16
 *    desc   :
 */
class ButtonDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.white,
        child: RaisedButton(
          child: Text('detail'),
          onPressed: (){
//            Navigator.of(context).popUntil(ModalRoute.withName(MyRoute.TABS));
            Navigator.of(context).pushAndRemoveUntil(
                new MaterialPageRoute(builder: (context) => new MyTextFiled()),
                    (route) => route == null
            );
          },
        ),
      )
    );
  }
}
