import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey,
        body: Center(
          child: QrImageView(
            data: "https://google.com",
            version: 6,
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
            errorCorrectionLevel: QrErrorCorrectLevel.M,
            padding: EdgeInsets.all(30),
            size: 300,
          ),
        ),
      ),
    );
  }
}
