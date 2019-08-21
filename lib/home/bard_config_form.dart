import 'package:flutter/material.dart';
import '../my_widget/divided_description.dart';

// 表单 填好，记录到本地文件中

class BardConfigForm extends StatefulWidget {
  @override
  _BardConfigFormState createState() => _BardConfigFormState();
}

class _BardConfigFormState extends State<BardConfigForm> {
  final _formKey = GlobalKey<FormState>();

  String server;
  int serverPort;
  String username;
  String password;

  // 这个应该声明成数组的，先简单的认为是字符串，之后再解析
  String plugins;
  String subProtocol;

  // TODO 之后还要路由规则的，先不管。先实现全局的
  String routerConfig;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(labelText: 'Sever IP:'),
            onFieldSubmitted: (String newVlaue) {
              setState(() {
                server = newVlaue;
              });
            },
          ),
          TextFormField(
            decoration: InputDecoration(labelText: 'Server Port:'),
            onFieldSubmitted: (String newValue) {
              setState(() {
                try {
                  serverPort = int.parse(newValue);
                }catch(e) {
                  // TODO 捕捉的解析错误
                  print(e);
                }
              });
            },
          ),
          TextFormField(
            decoration: InputDecoration(labelText: 'Username:'),
            onFieldSubmitted: (String newValue) {
              setState(() {
                username = newValue;
              });
            },
          ),
          TextFormField(
            decoration: InputDecoration(labelText: 'Password:'),
            obscureText: true,
            onFieldSubmitted: (String newValue) {
              setState(() {
                password = newValue;
              });
            },
          ),
          DividedDescription(title: '通讯配置',),
          TextFormField(
            decoration: InputDecoration(labelText: 'plugins:'),
            onFieldSubmitted: (String newValue) {
              setState(() {
                plugins = newValue;
              });
            },
          ),
          TextFormField(
            decoration: InputDecoration(labelText: '子协议:'),
            onFieldSubmitted: (String newValue) {
              setState(() {
                subProtocol = newValue;
              });
            },
          ),
          DividedDescription(title: '其他配置',),
          TextFormField(
            decoration: InputDecoration(labelText: '路由配置'),
            onFieldSubmitted: (String newValue) {
              setState(() {
                routerConfig = newValue;
              });
            },
          )
        ],
      ),
    );
  }
}