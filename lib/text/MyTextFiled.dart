import 'package:flutter/material.dart';

class MyTextFiled extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _MyTextFiledState();
  }
}

class _MyTextFiledState extends State<MyTextFiled>{

  TextEditingController _controller = TextEditingController();

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
                setState(() {
                  this._controller.text = value;
                });
              },
            ),
            SizedBox(height: 20,),
            RaisedButton(
              child: Text('获取'),
              onPressed: (){
                print('value= ${this._controller.text}');
              },
            )
          ],
        )
      ),
    );
  }
}