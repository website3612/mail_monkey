import 'package:flutter/material.dart';
import 'package:mail_monkey/res/color.dart';

class container_comman extends StatelessWidget {
  final String text;
  final Color color;
  final Color textColor;
  const container_comman({this.text, this.color, this.textColor});
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
      child: Center(
        child: Text(
          text,
          style: TextStyle(color: textColor, fontSize: 16),
        ),
      ),
      height: screenSize.height / 13,
      width: screenSize.width / 1,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(80),
        // border: Border.all(color: mainColor),
      ),
    );
  }
}
