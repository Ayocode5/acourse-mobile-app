import 'package:acourse_mobile_app/theme.dart';
import 'package:acourse_mobile_app/widget/cart_card.dart';
import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
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
                'My Cart',
                style: blackTextStyle.copyWith(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Spacer(),
              Text(
                'Edit',
                style: blueTextStyle.copyWith(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      );
    }

    Widget cartTile() {
      return Container(
        padding: EdgeInsets.only(
          top: 16,
          bottom: 16,
        ),
        child: Column(
          children: [
            CartCard(
              'assets/img/ux_banner.png',
              'Design',
              'UX Design: Design Thinking',
              '450,000',
              '1h 43m',
              '13 Lessons',
            ),
            SizedBox(
              height: 15,
            ),
            CartCard(
              'assets/img/html_banner.png',
              'Development',
              'Basic for Html and Css',
              '400,000',
              '2h 25m',
              '21 Lessons',
            ),
            SizedBox(
              height: 15,
            ),
            CartCard(
              'assets/img/ux_banner.png',
              'Design',
              'UX Design: Design Thinking',
              '450,000',
              '1h 43m',
              '13 Lessons',
            ),
            SizedBox(
              height: 15,
            ),
            CartCard(
              'assets/img/html_banner.png',
              'Development',
              'Basic for Html and Css',
              '400,000',
              '2h 25m',
              '21 Lessons',
            ),
          ],
        ),
      );
    }

    Widget checkoutButton() {
      return Container(
        padding: EdgeInsets.only(
          top: 16,
          bottom: 16,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Total',
                  style: blackTextStyle.copyWith(
                    fontSize: 14,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'Rp. ',
                      style: blackTextStyle.copyWith(
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      '850.000',
                      style: blackTextStyle.copyWith(
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Spacer(),
            Container(
              height: 60,
              width: 150,
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  backgroundColor: blueColor,
                  padding: EdgeInsets.symmetric(
                    vertical: 20,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                child: Text(
                  'Checkout',
                  style: whiteTextStyle.copyWith(
                    fontSize: 16,
                  ),
                ),
              ),
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
                    cartTile(),
                  ],
                ),
              ),
              checkoutButton(),
            ],
          ),
        ),
      ),
    );
  }
}
