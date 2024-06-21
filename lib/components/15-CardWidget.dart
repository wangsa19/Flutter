import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green,
        body: Container(
          margin: EdgeInsets.all(10),
          child: ListView(
            children: <Widget>[
              BuildCard(Icons.account_box, "Account Box"),
              BuildCard(Icons.adb, "Serangga Android"),
            ],
          ),
        ),
      ),
    );
  }

  Card BuildCard(IconData iconData, String text) {
    return Card(
      elevation: 5,
      child: Row(
        children: <Widget>[
          Container(
              margin: EdgeInsets.all(10),
              child: Icon(
                iconData,
                color: Colors.green,
              )),
          Text(text)
        ],
      ),
    );
  }
}
