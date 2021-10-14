import 'package:acourse_mobile_app/theme.dart';
import 'package:acourse_mobile_app/widget/my_classes_card.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        padding: EdgeInsets.only(
          bottom: 16,
        ),
        child: Center(
          child: Row(
            children: [
              Spacer(),
              Text(
                'Profile',
                style: blackTextStyle.copyWith(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Spacer(),
              Image.asset(
                'assets/icons/setting_icon.png',
                height: 24,
                width: 24,
              )
            ],
          ),
        ),
      );
    }

    Widget profileDetail() {
      return Container(
        padding: EdgeInsets.only(
          top: 16,
        ),
        child: Center(
          child: Column(
            children: [
              Container(
                height: 125,
                width: 125,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/img/profile_pic.jpg',
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 18,
              ),
              Text(
                'Jonathan Tri',
                style: blackTextStyle.copyWith(
                  fontWeight: FontWeight.w700,
                  fontSize: 24,
                ),
              ),
            ],
          ),
        ),
      );
    }

    Widget myClassesTitle() {
      return Container(
        padding: EdgeInsets.only(
          top: defaultMargin,
        ),
        child: Text(
          'My Classes',
          style: blackTextStyle.copyWith(
            fontSize: 22,
            fontWeight: FontWeight.w600,
          ),
        ),
      );
    }

    Widget myClassesTile() {
      return Container(
        padding: EdgeInsets.only(
          top: 16,
        ),
        child: Column(
          children: [
            MyClassesCard(
              'assets/icons/download_icon.png',
              'Downloaded Class',
              '4 Classes',
            ),
            MyClassesCard(
              'assets/icons/bookmark_icon.png',
              'Saved Class',
              '8 Classes',
            ),
            MyClassesCard(
              'assets/icons/history_icon.png',
              'Watch History',
              '3 Classes',
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: primaryBackgroundColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            top: defaultMargin,
            right: defaultMargin,
            left: defaultMargin,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              header(),
              profileDetail(),
              myClassesTitle(),
              myClassesTile(),
            ],
          ),
        ),
      ),
    );
  }
}
