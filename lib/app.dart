import 'package:flutter/material.dart';
import 'home/home.dart';


class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'bard config',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Home()
    );
  }
}
