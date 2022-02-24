import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mail_monkey/common/commonTitle.dart';
import 'package:mail_monkey/common/commontextfield.dart';
import 'package:mail_monkey/common/container.dart';
import 'package:mail_monkey/res/color.dart';

class ResetPassword extends StatefulWidget {
  @override
  _ResetPasswordState createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: cWhite,
        body: Stack(
          children: [
            Container(
              child: SvgPicture.asset(
                'assets/image/svg/Background.svg',
                width: screenSize.width / 1,
                height: screenSize.height / 1,
              ),
            ),
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
                        child: CommonTitle.labelHeader(title: 'Reset Password'),
                      ),
                    ),
                    SizedBox(
                      height: screenSize.height / 40,
                    ),
                    CommonTitle.subTitleHeader(
                      title:
                          'Please enter your email to receive a\nlink to  create a new password via email',
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: screenSize.height / 15,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: Column(
                            children: [
                              commonField(
                                text: 'Email',
                                keyBord: TextInputType.emailAddress,
                                password: false,
                              ),
                              SizedBox(
                                height: screenSize.height / 25,
                              ),
                              container_comman(
                                textColor: cWhite,
                                color: mainColor,
                                text: 'Send',
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
