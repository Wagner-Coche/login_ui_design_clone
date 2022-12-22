import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_ui_design/screens/splash_page.dart';
import 'package:flutter_ui_design/utils/color.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.immersive
    );

    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter UI Design",
      home: SplashPage(),
    );
  }
  
}