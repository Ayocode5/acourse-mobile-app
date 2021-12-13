import 'package:acourse_mobile_app/pages/login_page.dart';
import 'package:acourse_mobile_app/pages/main_page.dart';
import 'package:acourse_mobile_app/pages/signup_page.dart';
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
        '/login': (context) => LoginPage(),
        '/signup': (context) => SignupPage(),
        '/home': (context) => MainPage(),
      },
    );
  }
}
