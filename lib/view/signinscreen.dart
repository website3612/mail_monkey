import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mail_monkey/common/background.dart';
import 'package:mail_monkey/common/commonTitle.dart';
import 'package:mail_monkey/common/commontextfield.dart';
import 'package:mail_monkey/common/container.dart';
import 'package:mail_monkey/res/color.dart';

class SignInScreen extends StatefulWidget {
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
        backgroundColor: cWhite,
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: [
            comBackGround(
              screenSize: screenSize,
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
                          child: CommonTitle.labelHeader(title: 'Sign Up')),
                    ),
                    SizedBox(
                      height: screenSize.height / 60,
                    ),
                    CommonTitle.subTitleHeader(
                        title: 'Add your details to Sign up'),
                    SizedBox(
                      height: screenSize.height / 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20, left: 20),
                      child: Column(
                        children: [
                          commonField(
                            text: 'Name',
                            password: false,
                            keyBord: TextInputType.name,
                          ),
                          SizedBox(
                            height: screenSize.height / 30,
                          ),
                          commonField(
                            text: 'Email',
                            password: false,
                            keyBord: TextInputType.emailAddress,
                          ),
                          SizedBox(
                            height: screenSize.height / 30,
                          ),
                          commonField(
                            text: 'Mobile No.',
                            password: false,
                            keyBord: TextInputType.phone,
                          ),
                          SizedBox(
                            height: screenSize.height / 30,
                          ),
                          commonField(
                            text: 'Address',
                            password: false,
                            keyBord: TextInputType.streetAddress,
                          ),
                          SizedBox(
                            height: screenSize.height / 30,
                          ),
                          commonField(
                            text: 'Password',
                            password: true,
                            // keyBord: TextInputType.visiblePassword,
                          ),
                          SizedBox(
                            height: screenSize.height / 30,
                          ),
                          commonField(
                            text: 'Confirm psssword',
                            password: true,
                          ),
                          SizedBox(
                            height: screenSize.height / 30,
                          ),
                          container_comman(
                            text: 'Sign Up',
                            color: mainColor,
                            textColor: cWhite,
                          ),
                          SizedBox(
                            height: screenSize.height / 30,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CommonTitle.subTitleHeader(
                                  title: 'Already have an Account?'),
                              SizedBox(
                                width: screenSize.width / 80,
                              ),
                              // CommonTitle.subTitleHeader(title: 'Login'),
                              Text(
                                'Login',
                                style: TextStyle(
                                    color: mainColor,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w900),
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
