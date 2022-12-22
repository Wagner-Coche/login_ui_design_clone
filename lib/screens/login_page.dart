import 'package:flutter/material.dart';
import 'package:flutter_ui_design/screens/register_page.dart';
import 'package:flutter_ui_design/utils/color.dart';

import '../widgets/header_pages.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);


  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        reverse: false,
        child: Column(
          children: <Widget>[
            const HeaderPages(title: "Login"),
            const SizedBox(height: 60),
            _textInput("Email", Icons.email, false),
            const SizedBox(height: 30),
            _textInput("Password", Icons.key, true),
            const SizedBox(height: 18),
            _textForgotPassword("Forgot password"),
            const SizedBox(height: 90),
            _buttonLogin(),
            const SizedBox(height: 80),
            _registerQuestion(context)
          ]
        ),
      )
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
        onTap: () {},
        cursorColor: primaryColor,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.only(top: 16),
          hintText: hintText,
          prefixIcon: Icon(icon, color: thirdColor),
          border: InputBorder.none,
        ),
      ),
    ),
  );
}

Widget _textForgotPassword(text) {
  return Container(
    alignment: Alignment.centerRight,
    margin: const EdgeInsets.only(right: 40),
    child: Text(
      "$text?",
      style: const TextStyle(
        color: Colors.grey,
        fontSize: 15,
        fontWeight: FontWeight.bold
      ),
    ),
  );
}

Widget _buttonLogin() {
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
            "LOGIN",
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
        "Don't have an account ? ",
        style: TextStyle(
          color: thirdColor,
          fontSize: 16,
        ),
      ),
      InkWell(
        onTap: (() => Navigator.push(context, MaterialPageRoute(builder: (_) => const RegisterPage()))),
        mouseCursor: MouseCursor.defer, 
        child: Text(
          "Register",
          style: TextStyle(
            color: primaryColor,
            fontSize: 16
          ),
        ),
      )
    ],
  );
}