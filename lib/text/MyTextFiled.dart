import 'package:flutter/material.dart';

class MyTextFiled extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _MyTextFiledState();
  }
}

class _MyTextFiledState extends State<MyTextFiled>{

  TextEditingController _controller;
  bool _checkFlag = true;
  int _radioValue = 1;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
    _controller.addListener((){
      print('value= ${this._controller.text}');
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('MyTextFiled'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            TextField(
//              obscureText: true,//密码框
              maxLines: 1,
              decoration: InputDecoration(
                icon: Icon(Icons.people),
                hintText: '请输入内容',
                labelText: '用户名',//显示在输入框左上角
                border: OutlineInputBorder(),//变边框的
              ),
              onChanged: (value){
                this._controller.text = value;
              },
            ),
            SizedBox(height: 20,),
            RaisedButton(
              child: Text('获取'),
              onPressed: (){
                print('value= ${this._controller.text}');
              },
            ),
            SizedBox(height: 20,),
            Checkbox(
              value: this._checkFlag,
              onChanged: (value) {
                setState(() {
                  this._checkFlag = value;
                });
              },
              activeColor: Colors.yellow,//选择的颜色
            ),
            SizedBox(height: 20,),
            CheckboxListTile(
              value: this._checkFlag,
              title: Text('标题'),
              subtitle: Text('内容'),
              secondary: Icon(Icons.settings),//左侧加图片
              onChanged: (value) {
                setState(() {
                  this._checkFlag = value;
                });
              },
            ),
            SizedBox(height: 20,),
            Radio(
              value: 1,
              onChanged: (v){
                setState(() {
                  this._radioValue = v;
                });
              },
              groupValue: this._radioValue,//radio组选择的值
            ),
            SizedBox(height: 20,),
            Radio(
              value: 2,
              onChanged: (v){
                setState(() {
                  this._radioValue = v;
                });
              },
              groupValue: this._radioValue,
            ),
            SizedBox(height: 20,),
            Switch(
              value: this._checkFlag,
              onChanged: (v){
                setState(() {
                  this._checkFlag = v;
                });
              },
            )
          ],
        )
      ),
    );
  }
}