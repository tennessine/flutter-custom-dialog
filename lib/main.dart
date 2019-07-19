import 'package:flutter/material.dart';

import 'custom_dialog.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: RaisedButton(
            onPressed: () {
              showDialog(context: context, builder: (BuildContext context) => CustomDialog(
                title: '糗事百科',
                description: '偏头痛犯了，到班上喝了碗豆浆，有气无力的挥着手中的刀，埋头苦干，身上觉得有点冷，有意的避开空调，汗水涔涔，脸色通红……大厨：央儿，你这是咋了？我：没事，就是有点头疼（我转身回答他，手中的刀在手不停地颤抖下…幸亏他跳的快…）…大厨：央儿，中暑了，你这明显显的中暑了。大厨：快，西瓜呢？央儿平时很喜欢吃西瓜…随即打了个电话，不一会儿来了500斤西瓜[捂脸]',
                buttonText: '确定',
              ));
            },
            child: Text('show custom dialog'),
        ),
      ),
    );
  }
}

