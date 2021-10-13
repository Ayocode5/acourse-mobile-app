import 'package:acourse_mobile_app/theme.dart';
import 'package:acourse_mobile_app/widget/notification_tile.dart';
import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        padding: EdgeInsets.only(
          bottom: 16,
        ),
        child: Center(
          child: Text(
            'Notification',
            style: blackTextStyle.copyWith(
              fontSize: 22,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      );
    }

    Widget todayTitle() {
      return Container(
        padding: EdgeInsets.only(
          top: 16,
        ),
        child: Text(
          'Today',
          style: blackTextStyle.copyWith(
            fontSize: 22,
            fontWeight: FontWeight.w600,
          ),
        ),
      );
    }

    Widget notifTodayTile() {
      return Container(
        padding: EdgeInsets.only(
          top: 12,
        ),
        child: Column(
          children: [
            NotificationTile(
              'assets/icons/successful_icon.png',
              'Thankyou! Your payment for the "UX Design: Design Thinking" class was successful. Enjoy the class!',
            ),
            SizedBox(
              height: 8,
            ),
            NotificationTile(
              'assets/img/notif_img1.png',
              'Cody Fisher replied to your comment “Thank you for joining this class if you feel you do not understand the lesson presented, do not hesitate to ask questions. I\'ll help you. Have a nice day!”',
            ),
            SizedBox(
              height: 8,
            ),
            NotificationTile(
              'assets/icons/book_icon.png',
              'The project for the “Javascript for Beginner” class has been successfully uploaded. Don\'t forget to do it!',
            ),
          ],
        ),
      );
    }

    Widget yesterdayTitle() {
      return Container(
        padding: EdgeInsets.only(
          top: defaultMargin,
        ),
        child: Text(
          'Yesterday',
          style: blackTextStyle.copyWith(
            fontSize: 22,
            fontWeight: FontWeight.w600,
          ),
        ),
      );
    }

    Widget notifYesterdayTile() {
      return Container(
        padding: EdgeInsets.only(
          top: 12,
        ),
        child: Column(
          children: [
            NotificationTile(
              'assets/icons/successful_icon.png',
              'Your project for the "UI Design: Design System" class has been uploaded successfully.',
            ),
            SizedBox(
              height: 8,
            ),
            NotificationTile(
              'assets/icons/successful_icon.png',
              'Your project for the "Figma: Create UI Component" class has been uploaded successfully.',
            ),
            SizedBox(
              height: defaultMargin,
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
              Expanded(
                child: ListView(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: false,
                  children: [
                    todayTitle(),
                    notifTodayTile(),
                    yesterdayTitle(),
                    notifYesterdayTile(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
