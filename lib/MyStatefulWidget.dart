import 'package:flutter/material.dart';

class MySatefulWidget extends StatefulWidget {

  @override
  _MySatefulWidgetState createState() {
    return _MySatefulWidgetState();
  }

}

class _MySatefulWidgetState extends State<MySatefulWidget>{

  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 10,
        ),
        Text('Hi ${this.count}'),
        SizedBox(
          height: 10,
        ),
        RaisedButton(
          child: Text('click'),
          onPressed: (){
            setState(() {
              this.count++;
            });
          },
        )
      ],
    );
  }

}