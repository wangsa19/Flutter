import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/mini-project-loginRegister/login_page.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Register Page",
                  style: TextStyle(
                    fontSize: 36,
                    fontFamily: "inter",
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Image(
                  image: AssetImage("assets/SignUp-rafiki.png"),
                  fit: BoxFit.contain,
                  width: 300.0,
                ),
                SizedBox(
                  height: 20,
                ),
                buildTextfield(Icons.people, "Name", nameController),
                SizedBox(
                  height: 15,
                ),
                buildTextfield(Icons.person, "username", usernameController),
                SizedBox(
                  height: 15,
                ),
                buildTextfield(Icons.lock, "password", passwordController),
                SizedBox(
                  height: 15,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                      side: BorderSide(
                        color: Colors.black,
                        style: BorderStyle.solid,
                        width: 2,
                        strokeAlign: BorderSide.strokeAlignCenter,
                      ),
                    ),
                    minimumSize: Size(340, 60),
                  ),
                  child: Text(
                    "Register",
                    style: TextStyle(
                      fontFamily: "inter",
                      fontSize: 24,
                      fontWeight: FontWeight.w900,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Do you have an account?",
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: "inter",
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    TextButton(
                      child: Text(
                        "Login",
                        style: TextStyle(
                          color: Colors.red,
                          fontFamily: "inter",
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) {
                          return LoginPage();
                        }));
                      },
                    ),
                  ],
                ),
                // Text(controller.text),
              ],
            ),
          ),
        ],
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
