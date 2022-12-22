import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_ui_design/utils/color.dart';
import 'package:flutter_ui_design/screens/login_page.dart';


class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 6), () {
      Navigator.push(context, MaterialPageRoute(builder: (_) => const LoginPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [primaryColor, secondColor],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter
        ),
        image: const DecorationImage(
          image: AssetImage("assets/images/logo.png"),
          scale: 1.4
        )
      ),
    );
  }
}