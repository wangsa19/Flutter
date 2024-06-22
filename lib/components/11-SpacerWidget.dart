import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Spacer Widget"),
        ),
        body: Center(
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              const Spacer(
                flex: 1,
              ),
              Container(
                width: 80,
                height: 80,
                color: Colors.red,
              ),
              const Spacer(
                flex: 2,
              ),
              Container(
                width: 80,
                height: 80,
                color: Colors.green,
              ),
              const Spacer(
                flex: 3,
              ),
              Container(
                width: 80,
                height: 80,
                color: Colors.blue,
              ),
              const Spacer(
                flex: 2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
