import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Latihan Text Field"),
        ),
        body: Container(
          margin: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                "Text Field",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                    // icon: Icon(Icons.adb),
                    prefixIcon: const Icon(Icons.person),
                    labelText: "Nama lengkap",
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(
                        color: Colors.black,
                        width: 1.5,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(
                        color: Colors.black,
                        width: 1.5,
                      ),
                    )),
                maxLength: 5,
                onChanged: (value) {
                  setState(() {});
                },
                controller: controller,
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                    icon: const Icon(Icons.person),
                    labelText: "Nama lengkap",
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(
                        color: Colors.black,
                        width: 1.5,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(
                        color: Colors.black,
                        width: 1.5,
                      ),
                    )),
                maxLength: 5,
                onChanged: (value) {
                  setState(() {});
                },
                controller: controller,
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                    suffixIcon: const Icon(Icons.person),
                    labelText: "Nama lengkap",
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(
                        color: Colors.black,
                        width: 1.5,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(
                        color: Colors.black,
                        width: 1.5,
                      ),
                    )),
                maxLength: 5,
                onChanged: (value) {
                  setState(() {});
                },
                controller: controller,
              ),
              Text(controller.text)
            ],
          ),
        ),
      ),
    );
  }
}
