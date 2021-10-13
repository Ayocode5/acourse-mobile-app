import 'package:flutter/material.dart';
import 'package:acourse_mobile_app/theme.dart';

class NotificationTile extends StatelessWidget {
  final String imageUrl;
  final String text;

  NotificationTile(
    this.imageUrl,
    this.text,
  );

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(
        imageUrl,
        width: 38,
        height: 38,
      ),
      title: Text(
        text,
        style: blackTextStyle.copyWith(
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
