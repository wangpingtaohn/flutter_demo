import 'package:flutter/material.dart';


class MyGridView extends StatelessWidget {

  var list = new List();

  MyGridView() {
    for (var i = 0; i < 20; i++) {
      list.add('第$i条数据');
    }
  }

  @override
  Widget build(BuildContext context) {
//    return GridView.count(
//      scrollDirection: Axis.vertical,//方向
//      crossAxisCount: 3, //一行几列
//      crossAxisSpacing: 8,//水平间隔
//      mainAxisSpacing: 8,//垂直间隔
//      children: _getStaticData(),
//    );
  return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5

    ),
    itemCount: this.list.length,
    itemBuilder: (context,index){
      return Container(
//        height: 120,
        child: Image.network(
            "https://inews.gtimg.com/newsapp_bt/0/11639815853/1000",
          fit: BoxFit.cover),
      );
    }
  );
//  }
  }

  List<Widget> _getStaticData() {
    return <Widget>[
      Image.network(
        'https://inews.gtimg.com/newsapp_bt/0/11639815853/1000',
        fit: BoxFit.cover,
        width: 300,
        height: 300,),
      Image.network(
        'https://inews.gtimg.com/newsapp_bt/0/11639815853/1000',
        fit: BoxFit.cover,
        width: 300,
        height: 300,),
      Image.network(
        'https://inews.gtimg.com/newsapp_bt/0/11639815853/1000',
        fit: BoxFit.cover,
        width: 300,
        height: 300,),
      Image.network(
        'https://inews.gtimg.com/newsapp_bt/0/11639815853/1000',
        fit: BoxFit.cover,
        width: 300,
        height: 300,),
      Image.network(
        'https://inews.gtimg.com/newsapp_bt/0/11639815853/1000',
        fit: BoxFit.cover,
        width: 300,
        height: 300,),
      Image.network(
        'https://inews.gtimg.com/newsapp_bt/0/11639815853/1000',
        fit: BoxFit.cover,
        width: 300,
        height: 300,),
      Image.network(
        'https://inews.gtimg.com/newsapp_bt/0/11639815853/1000',
        fit: BoxFit.cover,
        width: 300,
        height: 300,),
      Image.network(
        'https://inews.gtimg.com/newsapp_bt/0/11639815853/1000',
        fit: BoxFit.cover,
        width: 300,
        height: 300,),
      Image.network(
        'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1581422031471&di=df2254ecbc97fc0cae3396a670511021&imgtype=0&src=http%3A%2F%2Fimg2018.cnblogs.com%2Fblog%2F1762823%2F201911%2F1762823-20191104112732371-1699453123.jpg',
        fit: BoxFit.cover,
        width: 300,
        height: 300,),
      Image.network(
        'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1581422031471&di=df2254ecbc97fc0cae3396a670511021&imgtype=0&src=http%3A%2F%2Fimg2018.cnblogs.com%2Fblog%2F1762823%2F201911%2F1762823-20191104112732371-1699453123.jpg',
        fit: BoxFit.cover,
        width: 300,
        height: 300,),
      Image.network(
        'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1581422031471&di=df2254ecbc97fc0cae3396a670511021&imgtype=0&src=http%3A%2F%2Fimg2018.cnblogs.com%2Fblog%2F1762823%2F201911%2F1762823-20191104112732371-1699453123.jpg',
        fit: BoxFit.cover,
        width: 300,
        height: 300,),
      Image.network(
        'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1581422031471&di=df2254ecbc97fc0cae3396a670511021&imgtype=0&src=http%3A%2F%2Fimg2018.cnblogs.com%2Fblog%2F1762823%2F201911%2F1762823-20191104112732371-1699453123.jpg',
        fit: BoxFit.cover,
        width: 300,
        height: 300,),
      Image.network(
        'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1581422031471&di=df2254ecbc97fc0cae3396a670511021&imgtype=0&src=http%3A%2F%2Fimg2018.cnblogs.com%2Fblog%2F1762823%2F201911%2F1762823-20191104112732371-1699453123.jpg',
        fit: BoxFit.cover,
        width: 300,
        height: 300,),
      Image.network(
        'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1581422031471&di=df2254ecbc97fc0cae3396a670511021&imgtype=0&src=http%3A%2F%2Fimg2018.cnblogs.com%2Fblog%2F1762823%2F201911%2F1762823-20191104112732371-1699453123.jpg',
        fit: BoxFit.cover,
        width: 300,
        height: 300,), Image.network(
        'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1581422031471&di=df2254ecbc97fc0cae3396a670511021&imgtype=0&src=http%3A%2F%2Fimg2018.cnblogs.com%2Fblog%2F1762823%2F201911%2F1762823-20191104112732371-1699453123.jpg',
        fit: BoxFit.cover,
        width: 300,
        height: 300,),
      Image.network(
        'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1581422031471&di=df2254ecbc97fc0cae3396a670511021&imgtype=0&src=http%3A%2F%2Fimg2018.cnblogs.com%2Fblog%2F1762823%2F201911%2F1762823-20191104112732371-1699453123.jpg',
        fit: BoxFit.cover,
        width: 300,
        height: 300,),


    ];
  }
}


