import 'package:flutter/material.dart';
import 'package:acourse_mobile_app/theme.dart';

class CartCard extends StatelessWidget {
  final String imageUrl;
  final String categories;
  final String title;
  final String price;
  final String totalTime;
  final String totalLessons;

  CartCard(
    this.imageUrl,
    this.categories,
    this.title,
    this.price,
    this.totalTime,
    this.totalLessons,
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
              height: 150,
            ),
          ),
          Flexible(
            child: Container(
              margin: EdgeInsets.only(
                top: 25,
                left: 20,
                right: 20,
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
                    text: TextSpan(children: [
                      TextSpan(
                        text: totalTime,
                        style: grayTextStyle.copyWith(
                          fontSize: 10,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      TextSpan(
                        text: '   |   ',
                        style: grayTextStyle.copyWith(
                          fontSize: 10,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      TextSpan(
                        text: totalLessons,
                        style: grayTextStyle.copyWith(
                          fontSize: 10,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ]),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'Rp. ',
                              style: blueTextStyle.copyWith(
                                fontWeight: FontWeight.w700,
                                fontSize: 12,
                              ),
                            ),
                            TextSpan(
                              text: price,
                              style: blueTextStyle.copyWith(
                                fontWeight: FontWeight.w700,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
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
