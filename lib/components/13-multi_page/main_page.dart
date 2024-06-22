import 'package:flutter/material.dart';
import 'package:flutter_app/components/13-multi_page/second_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Main Page"),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const SecondPage();
              }));
            },
            child: const Text("Go to Second Page")),
      ),
    );
  }
}
