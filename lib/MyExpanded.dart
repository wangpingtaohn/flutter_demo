import 'package:flutter/material.dart';

class MyExpanded extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          flex: 2,
          child: Image.network(
            'https://inews.gtimg.com/newsapp_bt/0/11639815853/1000',
            fit: BoxFit.cover,
            height: 100,),
        ),
        Expanded(
            flex: 1,
            child: Image.network(
          'https://inews.gtimg.com/newsapp_bt/0/11639815853/1000',
          fit: BoxFit.cover,
          height: 100,)
        )],
    );
  }
}