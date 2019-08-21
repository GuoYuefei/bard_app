import 'package:flutter/material.dart';

// 表单分割说明组件
class DividedDescription extends StatelessWidget {
  final String _title;
  final Color _textColor;
  final double _fontSize;

  DividedDescription({
    @required
    String title,
    Color textColor = Colors.blueAccent,
    double fontSize = 17.0
  }): _title=title, _textColor=textColor, _fontSize=fontSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.only(top: 8.0),
      color: Colors.white30,
      child: Text(
        this._title,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: this._textColor,
          fontSize: this._fontSize,  
        ),
      ),
    );
  }
}