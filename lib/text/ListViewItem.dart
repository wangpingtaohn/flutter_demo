import 'package:flutter/material.dart';
import 'package:extended_text/extended_text.dart';

class MyListViewItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("item"),
      ),
      body: _getBody(),
    );
  }

  Widget _getBody() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
//          SizedBox(
//            width: 15,
//          ),
          ClipOval(
            child: Image.network(
              "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1585827429217&di=86b0eb6490e007b5e4a2cb6a60e82869&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201410%2F09%2F20141009224754_AswrQ.jpeg",
              fit: BoxFit.cover,
              width: 50,
              height: 50,
            ),
          ),
          SizedBox(
            width: 12,
          ),
          Expanded(
            child: Wrap(
            direction:Axis.horizontal,
              children: <Widget>[
                Text(
                  "luckin coffee瑞幸咖啡（百方大大厦店)",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(color: Colors.red, fontSize: 20),
                ),
              ],
            ),
          ),
          ExtendedText.rich(
            TextSpan(
              children: <InlineSpan>[
                TextSpan(text:'xxx\nxx'),
                ImageSpan(AssetImage("images/loading.png"),
                imageWidth: 16,imageHeight: 16),
              ],
            ),
          ),
          Text(
            "12:23",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(color: Colors.red, fontSize: 20),
          ),
          SizedBox(
            width: 15,
          ),
//          Expanded(
//            child: Text(
//              "2019-10-21 12:23",
//              maxLines: 2,
//              overflow: TextOverflow.ellipsis,
//              style: TextStyle(color: Colors.red, fontSize: 20),
//            ),
//          ),

        ],
      ),
    );
  }

}
