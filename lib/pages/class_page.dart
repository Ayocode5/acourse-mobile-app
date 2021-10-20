import 'package:acourse_mobile_app/theme.dart';
import 'package:acourse_mobile_app/widget/class_section_tile.dart';
// import 'package:acourse_mobile_app/widget/class_tab.dart';
import 'package:flutter/material.dart';

class ClassPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget videoPlayer() {
      return Container(
        child: Stack(
          children: [
            Image.asset(
              'assets/img/video_thumbnail.png',
            ),
            Positioned(
              top: 76,
              left: 158,
              child: Image.asset(
                'assets/img/play_button.png',
                height: 64,
                width: 64,
              ),
            ),
          ],
        ),
      );
    }

    Widget classTitle() {
      return Container(
        padding: EdgeInsets.only(
          top: 16,
          left: defaultMargin,
          right: defaultMargin,
        ),
        child: Row(
          children: [
            Container(
              width: 215,
              child: Text(
                'UX Design: Design Thinking',
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: blackTextStyle.copyWith(
                  fontWeight: FontWeight.w500,
                  fontSize: 24,
                ),
              ),
            ),
            Spacer(),
            Image.asset(
              'assets/icons/bookmark_icon.png',
              width: 28,
              height: 28,
            ),
            SizedBox(
              width: 12,
            ),
            GestureDetector(
              onTap: () {
                showModalBottomSheet(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(16),
                      ),
                    ),
                    context: context,
                    builder: (context) {
                      return Container(
                        padding: EdgeInsets.only(
                          top: 16,
                          left: defaultMargin,
                          right: defaultMargin,
                          bottom: defaultMargin,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Hallo Teman Acourse! Selamat datang di kelas "UX Design: Design Thinking"! Dikelas ini kita akan belajar bersama-sama tentang UX Design. Kelas ini cocok untuk kalian yang sudah kenal dengan dunia design maupun yang masih benar-benar pemula! Ayo kita belajar bersama!',
                              style: blackTextStyle.copyWith(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      );
                    });
              },
              child: Image.asset(
                'assets/icons/arrow_down_icon.png',
                color: grayColor,
                width: 28,
                height: 28,
              ),
            ),
          ],
        ),
      );
    }

    Widget classTime() {
      return Container(
        padding: EdgeInsets.only(
          top: 8,
          left: defaultMargin,
          right: defaultMargin,
        ),
        child: Text(
          '1h 43m | 11 Lessons',
          style: grayTextStyle.copyWith(
            fontSize: 14,
          ),
        ),
      );
    }

    Widget classTile() {
      return Container(
        padding: EdgeInsets.only(
          top: 12,
          left: defaultMargin,
          right: defaultMargin,
        ),
        child: Column(
          children: [
            ClassSectionTile(
              '01',
              'Welcome To The Class',
              '02:30 mins',
            ),
            SizedBox(
              height: 12,
            ),
            ClassSectionTile(
              '02',
              'What Is Design Thinking?',
              '10:20 mins',
            ),
            SizedBox(
              height: 12,
            ),
            ClassSectionTile(
              '03',
              'Design Thinking Mindset',
              '08:45 mins',
            ),
            SizedBox(
              height: 12,
            ),
            ClassSectionTile(
              '04',
              'How To Find Problem',
              '09:30 mins',
            ),
            SizedBox(
              height: 12,
            ),
            ClassSectionTile(
              '05',
              'Design Thinking Process',
              '10:15 mins',
            ),
            SizedBox(
              height: 12,
            ),
            ClassSectionTile(
              '06',
              'Emphatize',
              '15:40 mins',
            ),
            SizedBox(
              height: 12,
            ),
            ClassSectionTile(
              '07',
              'Define',
              '10:30 mins',
            ),
            SizedBox(
              height: 12,
            ),
            ClassSectionTile(
              '08',
              'Ideate',
              '09:35 mins',
            ),
            SizedBox(
              height: 12,
            ),
            ClassSectionTile(
              '09',
              'Prototype',
              '12:25 mins',
            ),
            SizedBox(
              height: 12,
            ),
            ClassSectionTile(
              '10',
              'Test',
              '13:30 mins',
            ),
            SizedBox(
              height: 12,
            ),
            ClassSectionTile(
              '11',
              'What Next?',
              '04:15 mins',
            ),
          ],
        ),
      );
    }

    // Widget descriptionBox() {
    //   return Container(
    //     child: Text('ini description box!'),
    //   );
    // }

    return Scaffold(
      backgroundColor: primaryBackgroundColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            videoPlayer(),
            Expanded(
              child: ListView(
                scrollDirection: Axis.vertical,
                shrinkWrap: false,
                children: [
                  classTitle(),
                  classTime(),
                  classTile(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
