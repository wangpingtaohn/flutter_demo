import 'package:flutter/material.dart';
import 'package:flutter_cupertino_date_picker/flutter_cupertino_date_picker.dart';

class MyDatePick extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _MyDatePickState();
  }
}

class _MyDatePickState extends State<MyDatePick>{

  var _nowDate = new DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('日期组件'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            RaisedButton(
              child: Text('官方日期组件${this._nowDate}'),
              onPressed: (){
                _showDatePick();
              },
            ),
            SizedBox(height: 10,),
            RaisedButton(
              child: Text('官方时间组件${this._nowDate}'),
              onPressed: (){
                _showTimePick();
              },
            ),
            SizedBox(height: 10,),
            RaisedButton(
              child: Text('第三方日期组件'),
              onPressed: (){
                _showThirdDatePick();
              },
            ),
            SizedBox(height: 10,),
            RaisedButton(
              child: Text('第三方时间组件'),
              onPressed: (){
                _showThirdTimePick();
              },
            )
          ],
        ),
      ),
    );
  }

  _showTimePick(){
    showTimePicker(
        context: context,
        initialTime: TimeOfDay.now()
    ).then((result){

    });
  }

  _showDatePick() async{
    //获取异步方法返回值，一.使用 then 二.使用 async 与await
    //方法一
//    showDatePicker(
//        context: context,
//        initialDate: _nowDate,
//        firstDate: DateTime(1970),
//        lastDate: DateTime(2021)
//    ).then((result){//异步方法获取结果
//      print('result= ${result}');
//    });
    //方法二
    var result = await showDatePicker(
        context: context,
        initialDate: _nowDate,
        firstDate: DateTime(1970),
        lastDate: DateTime(2021)
    );
    print('result= $result');

  }

  _showThirdDatePick(){
    DatePicker.showDatePicker(context);
  }

  _showThirdTimePick(){
    DatePicker.showDatePicker(
        context,
    pickerMode: DateTimePickerMode.time);
  }
}