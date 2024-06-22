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
            margin: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Register Page",
                  style: TextStyle(
                    fontSize: 36,
                    fontFamily: "inter",
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const Image(
                  image: AssetImage("assets/SignUp-rafiki.png"),
                  fit: BoxFit.contain,
                  width: 300.0,
                ),
                const SizedBox(
                  height: 20,
                ),
                buildTextfield(Icons.people, "Name", nameController),
                const SizedBox(
                  height: 15,
                ),
                buildTextfield(Icons.person, "username", usernameController),
                const SizedBox(
                  height: 15,
                ),
                buildTextfield(Icons.lock, "password", passwordController),
                const SizedBox(
                  height: 15,
                ),
                ElevatedButton(
                  onPressed: () {},
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
                    "Register",
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
                      "Do you have an account?",
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
                          return const LoginPage();
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
