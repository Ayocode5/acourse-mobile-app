import 'package:acourse_mobile_app/theme.dart';
import 'package:acourse_mobile_app/widget/popular_card.dart';
import 'package:acourse_mobile_app/widget/progress_card.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 48,
          width: 48,
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
          width: 16,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome Back,',
                style: blackTextStyle.copyWith(
                  fontWeight: FontWeight.w300,
                  fontSize: 12,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Jonathan Tri',
                style: blackTextStyle.copyWith(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
        Image.asset(
          'assets/icons/search_icon.png',
          width: 30,
        ),
      ],
    );
  }
}

class ProgressTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Your Progress',
          style: blackTextStyle.copyWith(
            fontSize: 18,
          ),
        ),
        Text(
          'See All',
          style: blueTextStyle.copyWith(
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}

class ProgressTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ProgressCard(
            'assets/img/graphic_design_banner.png',
            'Design',
            'Graphic Design for Beginner',
            7,
            10,
            0.70,
            70,
          ),
          ProgressCard(
            'assets/img/javascript_banner.png',
            'Development',
            'Bootcamp Full Stack Javascript 2021',
            10,
            20,
            0.50,
            50,
          ),
          ProgressCard(
            'assets/img/ui_banner.png',
            'Design',
            'Mastering UI Design with Figma',
            9,
            10,
            0.90,
            90,
          ),
        ],
      ),
    );
  }
}

class PopularTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Popular',
          style: blackTextStyle.copyWith(
            fontSize: 18,
          ),
        ),
        Text(
          'See All',
          style: blueTextStyle.copyWith(
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}

class PopularTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PopularCard(
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
        PopularCard(
          'assets/img/html_banner.png',
          'Development',
          'Basic for Html and Css',
          '400,000',
          '2h 25m',
          '21 Lessons',
        ),
      ],
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: primaryBackgroundColor,
        body: SafeArea(
          bottom: false,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(
                top: defaultMargin,
                right: defaultMargin,
                left: defaultMargin,
              ),
              child: Column(
                children: [
                  Header(),
                  SizedBox(
                    height: 30,
                  ),
                  ProgressTitle(),
                  SizedBox(
                    height: 16,
                  ),
                  ProgressTile(),
                  SizedBox(
                    height: 20,
                  ),
                  PopularTitle(),
                  SizedBox(
                    height: 16,
                  ),
                  PopularTile(),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
