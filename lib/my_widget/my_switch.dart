
import 'package:flutter/material.dart';

/**
 * 本文件构建一个自定义的switch
 * 用于连接或者断开连接
 */

class MySwitch extends StatefulWidget {
  @override
  _MySwitchState createState() => _MySwitchState();
}

class _MySwitchState extends State<MySwitch> {

  bool _value = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Switch(
          value: _value,
          onChanged: (bool newValue) {
            setState(() {
              _value = newValue;
            });
          },
          activeColor: Color.fromRGBO(0, 255, 0, 0.8),
          activeTrackColor: Colors.white,
          inactiveThumbColor: Colors.red,
          inactiveTrackColor: Colors.white,
        )
      ],
      
      
    );
  }
}