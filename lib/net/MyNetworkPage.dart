import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class MyNetWorkPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _MyNetWorkPageState();
  }
}

class _MyNetWorkPageState extends State<MyNetWorkPage>{


  String _result;
  Map _map;
  @override
  void initState() {
    super.initState();
    _map = {
      '年龄':'21',
      '性别':'男',
      '地址':'xxxx',
    };
    String jsonStr = json.encode(_map);
    print('jsonStr= $jsonStr');

    String jsonStr2 = '{"年龄":"21","性别":"男","地址":"xxxx"}';
    Map map2= json.decode(jsonStr2);
    print('map2[年龄]= ${map2["年龄"]}');
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('网络请求'),
      ),
      body: Column(
        children: <Widget>[
          RaisedButton(
            child: Text('get请求'),
            onPressed: (){
              _getData();
            },
          ),
          RaisedButton(
            child: Text('post请求'),
            onPressed: (){
              _postData();
            },
          ),
          RaisedButton(
            child: Text('页面渲染'),
            onPressed: (){},
          ),
          Text(
            '${this._result}'
          ),
        ],
      ),
    );
  }

  _getData() async {
    print('http_getData');
    String url = 'http://a.itying.com/api/productlist';
    http.Response respone = await http.get(url);//异步请求
    print('http_code= ${respone.statusCode}');
    if (respone.statusCode == 200) {
      print('http_body= ${respone.body}');
      setState(() {
        this._result = respone.body;
      });
      Map map = convert.jsonDecode(respone.body);//转换为map
    }
  }

  _postData() async {
    print('http_getData');
    String url = 'https://suggest.taobao.com/sug?code=utf-8&q=%E5%8D%AB%E8%A1%A3';
    http.Response respone = await http.post(url,body:this._map);//异步请求
    print('http_code= ${respone.statusCode}');
    if (respone.statusCode == 200) {
      print('http_body= ${respone.body}');
      setState(() {
        this._result = respone.body;
      });
      Map map = convert.jsonDecode(respone.body);//转换为map
    }
  }
}