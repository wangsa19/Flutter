import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[50],
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("Latihan Hero Animation",
            style: TextStyle(color: Colors.white)),
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const SecondPage();
            }));
          },
          child: Hero(
            tag: 'pp',
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: const SizedBox(
                width: 100,
                height: 100,
                child: Image(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/image/x.png"),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[50],
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("Latihan Hero Animation",
            style: TextStyle(color: Colors.white)),
      ),
      body: Center(
        child: Hero(
          tag: 'pp',
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: const SizedBox(
              width: 200,
              height: 200,
              child: Image(
                fit: BoxFit.cover,
                image: AssetImage("assets/image/x.png"),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
