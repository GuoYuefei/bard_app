import 'package:flutter/material.dart';
import 'app.dart';

void main() => runApp(App());






// 路由例子

// void main() {
//   runApp(new MaterialApp(
//     title: 'Navigation Basics',
//     home: new FirstScreen(),
//   ));
// }

// class FirstScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return new Scaffold(
//       appBar: new AppBar(
//         title: new Text('First Screen'),
//       ),
//       body: new Center(
//         child: new RaisedButton(
//           child: new Text('Launch new screen'),
//           onPressed: () {
//             Navigator.push(
//               context,
//               new MaterialPageRoute(builder: (context) => new SecondScreen()),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }

// class SecondScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return new Scaffold(
//       appBar: new AppBar(
//         title: new Text("Second Screen"),
//       ),
//       body: new Center(
//         child: new RaisedButton(
//           onPressed: () {
//             Navigator.pop(context);
//           },
//           child: new Text('Go back!'),
//         ),
//       ),
//     );
//   }
// }
