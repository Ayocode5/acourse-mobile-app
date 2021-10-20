import 'package:flutter/material.dart';
import 'package:acourse_mobile_app/theme.dart';

class ClassSectionTile extends StatelessWidget {
  final String number;
  final String title;
  final String subtitle;

  ClassSectionTile(
    this.number,
    this.title,
    this.subtitle,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      width: double.infinity,
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: ListTile(
        leading: Text(
          number,
          style: grayTextStyle.copyWith(
            fontSize: 32,
          ),
        ),
        title: Text(
          title,
          overflow: TextOverflow.ellipsis,
          style: blackTextStyle.copyWith(
            fontSize: 14,
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
          'assets/icons/play_button.png',
          width: 32,
          height: 32,
        ),
      ),
    );
  }
}
