import 'package:flutter/material.dart';
import 'package:acourse_mobile_app/theme.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class ContinueClassCard extends StatelessWidget {
  final String imageUrl;
  final String categories;
  final String title;
  final int completeLessons;
  final int totalLessons;
  final double percent;
  final double percentText;

  ContinueClassCard(
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
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(14),
      ),
      height: 150,
      width: double.infinity,
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.horizontal(
              left: Radius.circular(14),
            ),
            child: Image.asset(
              imageUrl,
              width: 128,
              height: 162,
              fit: BoxFit.cover,
            ),
          ),
          Flexible(
            child: Container(
              margin: EdgeInsets.only(
                top: 25,
                left: 16,
                right: 16,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    categories,
                    style: blueTextStyle.copyWith(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    title,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
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
                  Spacer(),
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
                      text: TextSpan(
                        children: [
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
                        ],
                      ),
                    ),
                    // trailing: Text(

                    // ),
                    linearStrokeCap: LinearStrokeCap.roundAll,
                  ),
                  SizedBox(
                    height: 25,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
