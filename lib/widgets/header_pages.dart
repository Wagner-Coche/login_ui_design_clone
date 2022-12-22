import 'package:flutter/material.dart';
import 'package:flutter_ui_design/utils/color.dart';

class HeaderPages extends StatelessWidget {
  const HeaderPages({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.4,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [primaryColor, secondColor],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter
        ),
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(100)
        )
      ),
      child: Stack(
        children: <Widget>[
          Center(
            child: Image.asset("assets/images/logo.png", scale: 1.5),
          ),
          Positioned(
            right: 60,
            bottom: 60,
            child: Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              )
            )
          ),
        ],
      )
    );
  }
}