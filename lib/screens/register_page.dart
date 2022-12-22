import 'package:flutter/material.dart';
import 'package:flutter_ui_design/screens/login_page.dart';
import 'package:flutter_ui_design/utils/color.dart';

import '../widgets/header_pages.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        reverse: false,
        child: Column(children: <Widget>[
          const HeaderPages(title: "Register"),
          const SizedBox(height: 50),
          _textInput("Username", Icons.person, false),
          const SizedBox(height: 20),
          _textInput("Email", Icons.email, false),
          const SizedBox(height: 20),
          _textInput("Phone Number", Icons.phone, false),
          const SizedBox(height: 20),
          _textInput("Password", Icons.key, true),
          const SizedBox(height: 60),
          _buttonRegister(),
          const SizedBox(height: 50),
          _registerQuestion(context)
        ]),
      ),
    );
  }
}

Widget _textInput(hintText, icon, obscureText) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 40),
    child: Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        boxShadow: const <BoxShadow>[
          BoxShadow(
            color: Colors.black12,
            offset: Offset(0, 3),
            blurRadius: 5,
            spreadRadius: 5,
          )
        ]
      ),
      child: TextField(
        keyboardType: TextInputType.text,
        obscureText: obscureText,
        cursorColor: primaryColor,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.only(top: 16),
          hintText: hintText,
          prefixIcon: Icon(icon, color: thirdColor),
          border: InputBorder.none),
      ),
    ),
  );
}

Widget _buttonRegister() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 40),
    child: InkWell(
      onTap: () {},
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [primaryColor, secondColor],
            begin: Alignment.centerRight,
            end: Alignment.centerLeft
          ),
          borderRadius: BorderRadius.circular(30)
        ),
        width: double.infinity,
        child: const Center(
          child: Text(
            "REGISTER",
            style: TextStyle(
              letterSpacing: 1,
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.bold
            ),
          ),
        ),
      ),
    ),
  );
}

Widget _registerQuestion(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Text(
        "Already a member ? ",
        style: TextStyle(
          color: thirdColor,
          fontSize: 16,
        ),
      ),
      InkWell(
        onTap: (() => Navigator.push(context, MaterialPageRoute(builder: (_) => const LoginPage()))),
        mouseCursor: MouseCursor.defer,
        child: Text(
          "Login",
          style: TextStyle(
            color: primaryColor, 
            fontSize: 16
          ),
        ),
      )
    ],
  );
}
