import 'package:flutter/material.dart';
import 'home/home.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'bard config',
      home: Scaffold(
        appBar: AppBar(
          title: Text('bard 配置'),
        ),
        body: Home(),
      ),
    );
    
    
  }
}