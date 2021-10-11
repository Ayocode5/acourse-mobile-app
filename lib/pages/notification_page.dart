import 'package:acourse_mobile_app/theme.dart';
import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryBackgroundColor,
      body: Center(
        child: Text(
          'Notification Page',
          style: blackTextStyle,
        ),
      ),
    );
  }
}
