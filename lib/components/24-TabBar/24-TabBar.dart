import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Contoh TabBar"),
            bottom: const TabBar(
              tabs: <Widget>[
                Tab(
                  icon: Icon(Icons.comment),
                  text: "Comments",
                ),
                Tab(
                  child: Image(
                    image: AssetImage("assets/image/x.png"),
                  ),
                ),
                Tab(
                  icon: Icon(Icons.computer),
                ),
                Tab(
                  text: "News",
                ),
              ],
            ),
          ),
          // bottomNavigationBar: const TabBar(
          //   tabs: <Widget>[
          //     Tab(
          //       icon: Icon(Icons.comment),
          //       text: "Comments",
          //     ),
          //     Tab(
          //       child: Image(
          //         image: AssetImage("assets/x.png"),
          //       ),
          //     ),
          //     Tab(
          //       icon: Icon(Icons.computer),
          //     ),
          //     Tab(
          //       text: "News",
          //     ),
          //   ],
          // ),
          body: const TabBarView(children: <Widget>[
            Center(
              child: Text("Tab 1"),
            ),
            Center(
              child: Text("Tab 2"),
            ),
            Center(
              child: Text("Tab 3"),
            ),
            Center(
              child: Text("Tab 4"),
            ),
          ]),
        ),
      ),
    );
  }
}
