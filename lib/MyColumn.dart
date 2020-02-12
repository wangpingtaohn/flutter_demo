import 'package:flutter/material.dart';

class MyColumn extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 300,
      color: Colors.red,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,//主轴(垂直)排列方式
        children: <Widget>[
          Image.network(
            'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1581422031471&di=df2254ecbc97fc0cae3396a670511021&imgtype=0&src=http%3A%2F%2Fimg2018.cnblogs.com%2Fblog%2F1762823%2F201911%2F1762823-20191104112732371-1699453123.jpg',
            fit: BoxFit.cover,
            width: 50,
            height: 50,),
          Image.network(
            'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1581422031471&di=df2254ecbc97fc0cae3396a670511021&imgtype=0&src=http%3A%2F%2Fimg2018.cnblogs.com%2Fblog%2F1762823%2F201911%2F1762823-20191104112732371-1699453123.jpg',
            fit: BoxFit.cover,
            width: 50,
            height: 50,),
          Image.network(
            'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1581422031471&di=df2254ecbc97fc0cae3396a670511021&imgtype=0&src=http%3A%2F%2Fimg2018.cnblogs.com%2Fblog%2F1762823%2F201911%2F1762823-20191104112732371-1699453123.jpg',
            fit: BoxFit.cover,
            width: 50,
            height: 50,),
          Image.network(
            'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1581422031471&di=df2254ecbc97fc0cae3396a670511021&imgtype=0&src=http%3A%2F%2Fimg2018.cnblogs.com%2Fblog%2F1762823%2F201911%2F1762823-20191104112732371-1699453123.jpg',
            fit: BoxFit.cover,
            width: 50,
            height: 50,)
        ],
      ),
    );
  }
}