import 'package:flutter/material.dart';
import 'package:mail_monkey/common/background.dart';
import 'package:mail_monkey/common/commonTitle.dart';
import 'package:mail_monkey/common/commontextfield.dart';
import 'package:mail_monkey/common/container.dart';
import 'package:mail_monkey/res/color.dart';

class newPassword extends StatefulWidget {
  @override
  _newPasswordState createState() => _newPasswordState();
}

class _newPasswordState extends State<newPassword> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: cWhite,
      body: Stack(
        overflow: Overflow.visible,
        children: [
          comBackGround(screenSize: screenSize),
          Positioned(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  SizedBox(
                    height: screenSize.height / 30,
                  ),
                  SafeArea(
                    child: Center(
                        child: CommonTitle.labelHeader(title: 'New Password')),
                  ),
                  SizedBox(
                    height: screenSize.height / 50,
                  ),
                  CommonTitle.subTitleHeader(
                      title:
                          "Please enter your email to receive a\nlink to  create a new password via email"),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Column(
                      children: [
                        SizedBox(
                          height: screenSize.height / 20,
                        ),
                        commonField(
                          text: "Password",
                          keyBord: TextInputType.visiblePassword,
                          password: true,
                        ),
                        SizedBox(
                          height: screenSize.height / 30,
                        ),
                        commonField(
                          text: " Confirm Password",
                          keyBord: TextInputType.visiblePassword,
                          password: true,
                        ),
                        SizedBox(
                          height: screenSize.height / 30,
                        ),
                        container_comman(
                          text: 'Next',
                          textColor: cWhite,
                          color: mainColor,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
