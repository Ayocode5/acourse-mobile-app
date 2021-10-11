import 'package:acourse_mobile_app/theme.dart';
import 'package:acourse_mobile_app/widget/continue_class.dart';
import 'package:flutter/material.dart';

class MyClassPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        child: Center(
          child: Text(
            'My Class',
            style: blackTextStyle.copyWith(
              fontSize: 22,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      );
    }

    Widget progress() {
      return Container(
        padding: EdgeInsets.only(
          top: defaultMargin,
          bottom: 16,
        ),
        child: Row(
          children: [
            Container(
              height: 70,
              width: 145,
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 8,
                    ),
                  ),
                  Image.asset(
                    'assets/icons/progress_icon.png',
                    width: 24,
                    height: 24,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '3',
                        style: blueTextStyle.copyWith(
                          color: Color(0xff4279EE),
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        'On Progress',
                        style: blueTextStyle.copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Spacer(),
            Container(
              height: 70,
              width: 145,
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 8,
                    ),
                  ),
                  Image.asset(
                    'assets/icons/successful_icon.png',
                    width: 24,
                    height: 24,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '6',
                        style: greenTextStyle.copyWith(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        'Successful',
                        style: greenTextStyle.copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget continueClassTitle() {
      return Container(
        padding: EdgeInsets.only(
          top: 16,
        ),
        child: Text(
          'Continue Class',
          style: blackTextStyle.copyWith(
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
      );
    }

    Widget classTile() {
      return Container(
        padding: EdgeInsets.only(
          top: 14,
        ),
        child: Column(
          children: [
            ContinueClassCard(
              'assets/img/graphic_design_banner.png',
              'Design',
              'UX Design: Design Thinking',
              7,
              10,
              0.70,
              70,
            ),
            SizedBox(
              height: 15,
            ),
            ContinueClassCard(
              'assets/img/javascript_banner.png',
              'Development',
              'Basic for Html and Css',
              10,
              20,
              0.50,
              50,
            ),
            SizedBox(
              height: 15,
            ),
            ContinueClassCard(
              'assets/img/ui_banner.png',
              'Design',
              'UX Design: Design Thinking',
              9,
              10,
              0.90,
              90,
            ),
            SizedBox(
              height: 30,
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
              progress(),
              Expanded(
                child: ListView(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: false,
                  children: [
                    continueClassTitle(),
                    classTile(),
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
