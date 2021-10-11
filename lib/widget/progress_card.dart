import 'package:acourse_mobile_app/theme.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class ProgressCard extends StatelessWidget {
  final String imageUrl;
  final String categories;
  final String title;
  final int completeLessons;
  final int totalLessons;
  final double percent;
  final double percentText;

  ProgressCard(
    this.imageUrl,
    this.categories,
    this.title,
    this.completeLessons,
    this.totalLessons,
    this.percent,
    this.percentText,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 275,
      child: Container(
        margin: EdgeInsets.only(
          right: 15,
        ),
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(24),
        ),
        height: 275,
        width: 192,
        child: Column(
          children: [
            Container(
              width: 192,
              height: 128,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(24),
                ),
                image: DecorationImage(
                  image: AssetImage(
                    imageUrl,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              padding: EdgeInsets.only(
                top: 16,
                left: 24,
                right: 24,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    categories,
                    style: blueTextStyle.copyWith(
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    title,
                    overflow: TextOverflow.clip,
                    style: blackTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: completeLessons.toString(),
                          style: grayTextStyle.copyWith(
                            fontSize: 10,
                          ),
                        ),
                        TextSpan(
                          text: ' of ',
                          style: grayTextStyle.copyWith(
                            fontSize: 10,
                          ),
                        ),
                        TextSpan(
                          text: totalLessons.toString(),
                          style: grayTextStyle.copyWith(
                            fontSize: 10,
                          ),
                        ),
                        TextSpan(
                          text: ' Lessons',
                          style: grayTextStyle.copyWith(
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  LinearPercentIndicator(
                    width: 100.0,
                    lineHeight: 6.0,
                    percent: percent,
                    backgroundColor: lightBlueColor,
                    progressColor: blueColor,
                    padding: EdgeInsets.only(
                      right: 8,
                    ),
                    trailing: RichText(
                      text: TextSpan(children: [
                        TextSpan(
                          text: percentText.toString(),
                          style: blackTextStyle.copyWith(
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        TextSpan(
                          text: '%',
                          style: blackTextStyle.copyWith(
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ]),
                    ),
                    // trailing: Text(

                    // ),
                    linearStrokeCap: LinearStrokeCap.roundAll,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
