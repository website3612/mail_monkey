import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mail_monkey/common/background.dart';
import 'package:mail_monkey/common/commonTitle.dart';
import 'package:mail_monkey/common/commontextfield.dart';
import 'package:mail_monkey/common/container.dart';
import 'package:mail_monkey/res/color.dart';

class logInScreen extends StatefulWidget {
  @override
  _logInScreenState createState() => _logInScreenState();
}

class _logInScreenState extends State<logInScreen> {
  bool isPass = true;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: cWhite,
      body: Column(
        children: [
          Stack(
            overflow: Overflow.visible,
            children: [
              comBackGround(
                screenSize: screenSize,
              ),
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
                            child: CommonTitle.labelHeader(title: 'Login')),
                      ),
                      SizedBox(
                        height: screenSize.height / 60,
                      ),
                      CommonTitle.subTitleHeader(
                          title: 'Add your details to login'),
                      SizedBox(
                        height: screenSize.height / 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20, left: 20),
                        child: Column(
                          children: [
                            commonField(
                              text: 'Your Email',
                            ),
                            SizedBox(
                              height: screenSize.height / 40,
                            ),
                            commonField(
                              password: isPass,
                              text: 'Password',
                              iconsuffix: IconButton(
                                onPressed: () {
                                  setState(() {
                                    isPass = !isPass;
                                  });
                                },
                                icon: isPass
                                    ? Icon(Icons.lock)
                                    : Icon(Icons.lock_open),
                              ),
                            ),
                            SizedBox(
                              height: screenSize.height / 30,
                            ),
                            container_comman(
                              text: 'Login',
                              color: mainColor,
                              textColor: cWhite,
                            ),
                            SizedBox(
                              height: screenSize.height / 30,
                            ),
                            CommonTitle.subTitleHeader(
                                title: 'Forgot your password?'),
                            SizedBox(
                              height: screenSize.height / 20,
                            ),
                            CommonTitle.subTitleHeader(title: 'or Login With'),
                            SizedBox(
                              height: screenSize.height / 30,
                            ),
                            container_comman(
                              textColor: cWhite,
                              color: Color(0xFF367FC0),
                              text: 'Login with Facebook',
                            ),
                            SizedBox(
                              height: screenSize.height / 30,
                            ),
                            container_comman(
                              textColor: cWhite,
                              color: Color(0xFFDD4B39),
                              text: 'Login with Google',
                            ),
                            SizedBox(
                              height: screenSize.height / 12,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CommonTitle.subTitleHeader(
                                    title: "Don't have an account?"),
                                SizedBox(
                                  width: screenSize.width / 80,
                                ),
                                // CommonTitle.subTitleHeader(title: 'Sign Up'),
                                Text(
                                  'Sign Up',
                                  style: TextStyle(
                                    color: mainColor,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
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
}
