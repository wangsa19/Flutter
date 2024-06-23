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
          title: const Text("Latihan Image"),
        ),
        body: Center(
          child: Container(
            color: Colors.black,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            // padding: EdgeInsets.all(3),
            child: const Image(
              image: AssetImage("assets/mountain.jpg"),
              fit: BoxFit.cover,
              repeat: ImageRepeat.noRepeat,
            ),
          ),
        ),
      ),
    );
  }
}
