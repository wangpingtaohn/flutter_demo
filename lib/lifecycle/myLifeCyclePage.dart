import 'package:flutter/material.dart';

class MyLifeCyclePage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _MyLifeCyclePageState();
  }
}

class _MyLifeCyclePageState extends State<MyLifeCyclePage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('生命周期'),
      ),
      body: Center(
        child: Text('xxxxx'),
      ),
    );
  }

  @override
  void didUpdateWidget(MyLifeCyclePage oldWidget) {
    super.didUpdateWidget(oldWidget);
    print("didUpdateWidget");
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("didChangeDependencies");
  }

  @override
  void dispose() {
    super.dispose();
    print("dispose");
  }

  @override
  void deactivate() {
    super.deactivate();
    print("deactivate");
  }

  @override
  void initState() {
    super.initState();
    print("initState");
  }

  @override
  void reassemble() {
    super.reassemble();
    print("reassemble");
  }

}