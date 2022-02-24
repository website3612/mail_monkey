import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mail_monkey/common/background.dart';
import 'package:mail_monkey/common/container.dart';
import 'package:mail_monkey/res/color.dart';

class splaceScreen extends StatefulWidget {
  @override
  _splaceScreenState createState() => _splaceScreenState();
}

class _splaceScreenState extends State<splaceScreen> {
  @override
  Widget build(BuildContext context) {
    final ScreenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/image/svg/Background.svg"))),
                height: ScreenSize.height / 2,
                width: ScreenSize.width / 1,
                margin: EdgeInsets.only(bottom: 60),
              ),
              Positioned(
                bottom: 360,
                right: 0,
                left: 0,
                child: Container(
                  height: 150,
                  width: 150,
                  // color: Colors.red,
                  child: SvgPicture.asset(
                    "assets/image/svg/logo.svg",
                  ),
                ),
              ),
              comBackGround(screenSize: ScreenSize),
              Positioned(
                bottom: 20,
                right: 0,
                left: 0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      logo(
                        screenSize: ScreenSize,
                      ),
                      SizedBox(
                        height: ScreenSize.height / 25,
                      ),
                      Text(
                        'Discover the best food for over 1,000\n restaurants and fast delivery to yoer dooestep',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 13,
                        ),
                      ),
                      SizedBox(
                        height: ScreenSize.height / 30,
                      ),
                      container_comman(
                        text: "Login",
                        color: mainColor,
                        textColor: cWhite,
                      ),
                      SizedBox(
                        height: ScreenSize.height / 40,
                      ),
                      Container(
                        height: ScreenSize.height / 13,
                        width: ScreenSize.width / 1,
                        alignment: Alignment.center,
                        child: Text(
                          'Create an Account',
                          style: TextStyle(color: mainColor, fontSize: 16),
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(80),
                            border: Border.all(width: 2, color: mainColor)),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget logo({Size screenSize}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: screenSize.height / 45,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Meal',
              style: TextStyle(
                letterSpacing: 2,
                fontWeight: FontWeight.bold,
                fontSize: 34,
                color: mainColor,
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                'Monkey',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2,
                  fontSize: 34,
                  color: primaryFontColor,
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: screenSize.height / 90,
        ),
        Text(
          'FOOD DELIVERY',
          style: TextStyle(letterSpacing: 2),
        ),
      ],
    );
  }
}
