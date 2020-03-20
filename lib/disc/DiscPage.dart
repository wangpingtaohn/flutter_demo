import 'package:flutter/material.dart';

class DiscPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _DiscPageState();
  }
}

class _DiscPageState extends State<DiscPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text('发现页内容'),
        Flex(
          direction: Axis.horizontal,
          children: <Widget>[
            Icon(Icons.ac_unit),
            Expanded(
              child: Text(
                '发现页内容发现页内容发现页内容发现页内容发现页内容发现页内容发现页内容',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
