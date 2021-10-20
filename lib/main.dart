import 'package:acourse_mobile_app/pages/class_page.dart';
import 'package:acourse_mobile_app/pages/main_page.dart';
import 'package:acourse_mobile_app/pages/splash_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        '/home': (context) => MainPage(),
        '/class': (context) => ClassPage(),
      },
    );
  }
}
