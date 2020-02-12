import 'package:flutter/material.dart';

class Demo01 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        Container(
          height: 95,
          color: Colors.black,
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Image.network(
                'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1581422031471&di=df2254ecbc97fc0cae3396a670511021&imgtype=0&src=http%3A%2F%2Fimg2018.cnblogs.com%2Fblog%2F1762823%2F201911%2F1762823-20191104112732371-1699453123.jpg',
                fit: BoxFit.cover,
                height: 85,),
            ),
            SizedBox(
              width: 5,
            ),
            Expanded(
              flex: 1,
              child: Container(
                height: 85,
                child: ListView(
                  children: <Widget>[
                    Container(
                        height: 40,
                      child:Image.network(
                        'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1581422031471&di=df2254ecbc97fc0cae3396a670511021&imgtype=0&src=http%3A%2F%2Fimg2018.cnblogs.com%2Fblog%2F1762823%2F201911%2F1762823-20191104112732371-1699453123.jpg',
                        fit: BoxFit.cover,
                        )
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      height: 40,
                      child: Image.network(
                        'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1581422031471&di=df2254ecbc97fc0cae3396a670511021&imgtype=0&src=http%3A%2F%2Fimg2018.cnblogs.com%2Fblog%2F1762823%2F201911%2F1762823-20191104112732371-1699453123.jpg',
                        fit: BoxFit.cover,),
                    )
                  ],
                ),
              )
            )

          ],
        )
      ],
    );
  }


}