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
              onPressed: (){},
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
            OutlineButton(
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