import 'package:flutter/material.dart';
import 'package:mail_monkey/res/color.dart';

class CommonTitle {
  static TextStyle fontTextStyle = TextStyle(
      color: secondaryFontColor, fontWeight: FontWeight.w500, fontSize: 16);
  static Widget labelHeader({String title}) {
    return Text(
      title,
      style: TextStyle(fontSize: 30, fontWeight: FontWeight.w400),
      textAlign: TextAlign.center,
    );
  }

  static Widget reTing({String title}) {
    return Text(
      title,
      style: TextStyle(
          color: primaryFontColor, fontWeight: FontWeight.w200, fontSize: 11),
    );
  }

  static Widget topHader({String title}) {
    return Text(
      title,
      style: TextStyle(
          color: primaryFontColor, fontSize: 20, fontWeight: FontWeight.w400),
    );
  }

  static Widget itemHading({String title}) {
    return Text(
      title,
      style: TextStyle(
          color: secondaryFontColor, fontWeight: FontWeight.w500, fontSize: 16),
    );
  }

  static Widget subTitleHeader({String title}) {
    return Text(
      title,
      style: TextStyle(
          fontSize: 14, fontWeight: FontWeight.w300, color: secondaryFontColor),
      textAlign: TextAlign.center,
    );
  }
}

class SizedBoxconfi {
  static SizedBox sH5 = SizedBox(
    height: 5,
  );
  static SizedBox sW5 = SizedBox(
    width: 5,
  );
}
