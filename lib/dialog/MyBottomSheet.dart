import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class MyBottomSheetDialog extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return _MyBottomSheetDialogState();
  }
}

class _MyBottomSheetDialogState extends State<MyBottomSheetDialog>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BottomSheet'),
      ),
      body: RaisedButton(
        child: Text('show'),
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context){
              return Container(
                height: 160,
                child: Column(
                  children: <Widget>[
                    Text('选项一'),
                    Divider(),
                    Text('选项二'),
                    Divider(),
                    Text('选项三'),
                    Divider(),
                    Text('选项四'),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}