import 'package:acourse_mobile_app/pages/cart_page.dart';
import 'package:acourse_mobile_app/pages/home_page.dart';
import 'package:acourse_mobile_app/pages/my_class_page.dart';
import 'package:acourse_mobile_app/pages/notification_page.dart';
import 'package:acourse_mobile_app/pages/profile_page.dart';
import 'package:acourse_mobile_app/theme.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget custombottommNavigationBar() {
      return ClipRRect(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(26),
        ),
        child: BottomNavigationBar(
          backgroundColor: whiteColor,
          currentIndex: currentIndex,
          onTap: (value) {
            setState(() {
              // print(value);
              currentIndex = value;
            });
          },
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Container(
                margin: EdgeInsets.only(
                  top: 10,
                  bottom: 5,
                  left: defaultMargin,
                ),
                child: Image.asset(
                  'assets/icons/home_icon.png',
                  width: 24,
                  height: 24,
                  color: currentIndex == 0 ? blueColor : grayColor,
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Container(
                margin: EdgeInsets.only(
                  top: 10,
                  bottom: 3,
                  left: 13,
                ),
                child: Image.asset(
                  'assets/icons/class_icon.png',
                  width: 24,
                  height: 24,
                  color: currentIndex == 1 ? blueColor : grayColor,
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Container(
                margin: EdgeInsets.only(
                  top: 10,
                  bottom: 5,
                ),
                child: Image.asset(
                  'assets/icons/cart_icon.png',
                  width: 24,
                  height: 24,
                  color: currentIndex == 2 ? blueColor : grayColor,
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Container(
                margin: EdgeInsets.only(
                  top: 10,
                  bottom: 5,
                  right: 13,
                ),
                child: Image.asset(
                  'assets/icons/notif_icon.png',
                  width: 24,
                  height: 24,
                  color: currentIndex == 3 ? blueColor : grayColor,
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Container(
                margin: EdgeInsets.only(
                  top: 10,
                  bottom: 5,
                  right: defaultMargin,
                ),
                child: Image.asset(
                  'assets/icons/profile_icon.png',
                  width: 24,
                  height: 24,
                  color: currentIndex == 4 ? blueColor : grayColor,
                ),
              ),
              label: '',
            ),
          ],
        ),
      );
    }

    Widget body() {
      switch (currentIndex) {
        case 0:
          return HomePage();
        case 1:
          return MyClassPage();
        case 2:
          return CartPage();
        case 3:
          return NotificationPage();
        case 4:
          return ProfilePage();
        default:
          return HomePage();
      }
    }

    return Scaffold(
      backgroundColor: primaryBackgroundColor,
      bottomNavigationBar: custombottommNavigationBar(),
      body: body(),
    );
  }
}
