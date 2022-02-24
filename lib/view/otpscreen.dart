import 'package:flutter/material.dart';
import 'package:mail_monkey/common/background.dart';
import 'package:mail_monkey/common/commonTitle.dart';
import 'package:mail_monkey/common/container.dart';
import 'package:mail_monkey/res/color.dart';

class otpScreen extends StatefulWidget {
  @override
  _otpScreenState createState() => _otpScreenState();
}

class _otpScreenState extends State<otpScreen> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: cWhite,
      body: Column(
        children: [
          Stack(
            overflow: Overflow.visible,
            children: [
              comBackGround(screenSize: screenSize),
              Positioned(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: screenSize.height / 30,
                      ),
                      SafeArea(
                        child: Center(
                          child: CommonTitle.labelHeader(
                              title: "We have sent an OTP\nto your Mobile"),
                        ),
                      ),
                      SizedBox(
                        height: screenSize.height / 40,
                      ),
                      CommonTitle.subTitleHeader(
                          title:
                              "Please check ypur mobile number 0735*****08\ncontinue to reset your password"),
                      Padding(
                        padding: const EdgeInsets.only(right: 20, left: 20),
                        child: Column(
                          children: [
                            SizedBox(
                              height: screenSize.height / 20,
                            ),
                            SizedBox(
                              height: screenSize.height / 20,
                            ),
                            container_comman(
                              color: mainColor,
                              textColor: cWhite,
                              text: 'next',
                            ),
                            SizedBox(
                              height: screenSize.height / 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CommonTitle.subTitleHeader(
                                    title: "Don't Receive?"),
                                SizedBox(
                                  width: screenSize.width / 70,
                                ),
                                Text(
                                  'Click Hear',
                                  style: TextStyle(
                                      color: mainColor,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
