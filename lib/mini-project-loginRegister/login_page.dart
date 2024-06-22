import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/mini-project-loginRegister/main_page.dart';
import 'package:flutter_app/mini-project-loginRegister/register_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Login Page",
                  style: TextStyle(
                    fontSize: 36,
                    fontFamily: "inter",
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const Image(
                  image: AssetImage("assets/Login-bro.png"),
                  fit: BoxFit.cover,
                ),
                const SizedBox(
                  height: 20,
                ),
                buildTextfield(Icons.person, "username", usernameController),
                const SizedBox(
                  height: 15,
                ),
                buildTextfield(Icons.lock, "password", passwordController),
                const SizedBox(
                  height: 15,
                ),
                const Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Icon(Icons.check_box_outline_blank),
                    Spacer(
                      flex: 1,
                    ),
                    Text("Remember me"),
                    Spacer(
                      flex: 12,
                    ),
                    Text("Forget Password?"),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) {
                      return const MainPage();
                    }));
                  },
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                      side: const BorderSide(
                        color: Colors.black,
                        style: BorderStyle.solid,
                        width: 2,
                        strokeAlign: BorderSide.strokeAlignCenter,
                      ),
                    ),
                    minimumSize: const Size(340, 60),
                  ),
                  child: const Text(
                    "Login",
                    style: TextStyle(
                      fontFamily: "inter",
                      fontSize: 24,
                      fontWeight: FontWeight.w900,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text(
                      "Don't have an account?",
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: "inter",
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    TextButton(
                      child: const Text(
                        "Register",
                        style: TextStyle(
                          color: Colors.red,
                          fontFamily: "inter",
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) {
                          return const RegisterPage();
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
        labelStyle: const TextStyle(color: Colors.black),
        hintText: 'Input your $text',
        hintStyle: const TextStyle(color: Colors.grey),
        prefixIcon: Icon(iconData),
        suffixIcon: controller.text.isNotEmpty
            ? IconButton(
                icon: const Icon(Icons.clear),
                onPressed: () {
                  controller.clear();
                  setState(() {});
                },
              )
            : null,
        enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.black, width: 2.0),
            borderRadius: BorderRadius.circular(10)),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.black, width: 2.0),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      style: const TextStyle(color: Colors.black, fontSize: 18.0),
    );
  }
}
