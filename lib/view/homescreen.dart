import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mail_monkey/common/background.dart';
import 'package:mail_monkey/res/color.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          comBackGround(screenSize: screenSize),
          Positioned(
            child: Center(
              child: Container(
                height: 150,
                width: 150,
                // color: Colors.red,
                child: SvgPicture.asset(
                  "assets/image/svg/logo.svg",
                ),
              ),
            ),
          ),
          Positioned(
            left: 0,
            bottom: -240,
            top: 0,
            right: 0,
            child: Center(
              child: logo(
                screenSize: screenSize,
              ),
            ),
          ),
        ],
      ),
    );
  }
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
