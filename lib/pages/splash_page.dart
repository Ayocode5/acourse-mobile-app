import 'dart:async';

import 'package:acourse_mobile_app/theme.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(
        context,
        '/home',
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                // Container(
                //   child: Image.asset(
                //     'asset/logo.png',
                //     height: 145,
                //     width: 145,
                //   ),
                // ),
                // SizedBox(
                //   height: 25,
                // ),
                Text(
                  'ACourse',
                  style: blackTextStyle.copyWith(
                    fontSize: 30,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
