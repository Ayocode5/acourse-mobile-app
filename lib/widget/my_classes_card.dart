import 'package:flutter/material.dart';
import 'package:acourse_mobile_app/theme.dart';

class MyClassesCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;

  MyClassesCard(
    this.imageUrl,
    this.title,
    this.subtitle,
  );

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(
        imageUrl,
        height: 24,
        width: 24,
        color: blackColor,
      ),
      title: Text(
        title,
        style: blackTextStyle.copyWith(
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),
      subtitle: Text(
        subtitle,
        style: grayTextStyle.copyWith(
          fontSize: 12,
        ),
      ),
      trailing: Image.asset(
        'assets/icons/arrow_right_icon.png',
        height: 24,
        width: 24,
      ),
    );
  }
}
