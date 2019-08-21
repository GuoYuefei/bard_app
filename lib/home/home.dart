import 'package:flutter/material.dart';
import './bard_config_form.dart';
import '../my_widget/my_switch.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('bard 配置'),
          // 导航按钮
          leading: IconButton(
            icon: Icon(Icons.format_list_bulleted),
            color: Colors.white,
            onPressed: () {
              print("filled background");
            },
          ),
          actions: <Widget>[
            MySwitch()        // 这个应该返回一个状态
          ]
        ),
        body: BardConfigForm(),   // 这里应该传入一个状态，根据状态是否连接
      );
  }
}

