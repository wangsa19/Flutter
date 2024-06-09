import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Login Page",
                style: TextStyle(
                  fontSize: 36,
                  fontFamily: "inter",
                  fontWeight: FontWeight.w200,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              buildTextfield(Icons.person, "username", usernameController),
              SizedBox(
                height: 20,
              ),
              buildTextfield(Icons.lock, "password", passwordController)
              // Text(controller.text),
            ],
          ),
        ),
      ),
    );
  }

  TextField buildTextfield(
      IconData iconData, String text, TextEditingController controller) {
    return TextField(
      inputFormatters: [
        LengthLimitingTextInputFormatter(5),
      ],
      cursorColor: Colors.blue,
      cursorWidth: 3.0,
      onChanged: (value) {
        setState(() {});
      },
      controller: controller,
      decoration: InputDecoration(
        labelText: text,
        labelStyle: TextStyle(color: Colors.black),
        hintText: 'Input your ' + text,
        hintStyle: TextStyle(color: Colors.grey),
        prefixIcon: Icon(iconData),
        suffixIcon: controller.text.isNotEmpty
            ? IconButton(
                icon: Icon(Icons.clear),
                onPressed: () {
                  controller.clear();
                  setState(() {});
                },
              )
            : null,
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black, width: 2.0),
            borderRadius: BorderRadius.circular(10)),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black, width: 2.0),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      style: TextStyle(color: Colors.black, fontSize: 18.0),
    );
  }
}
