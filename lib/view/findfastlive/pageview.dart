import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mail_monkey/common/background.dart';
import 'package:mail_monkey/common/commonTitle.dart';
import 'package:mail_monkey/common/container.dart';
import 'package:mail_monkey/res/color.dart';

class pageViewBar extends StatefulWidget {
  @override
  _pageViewBarState createState() => _pageViewBarState();
}

class _pageViewBarState extends State<pageViewBar> {
  PageController _pageController = PageController(initialPage: 0);
  int pageselector = 0;
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
        body: Stack(
      overflow: Overflow.visible,
      children: [
        comBackGround(
          screenSize: screenSize,
        ),
        Positioned(
          child: Center(
            child: PageView(
              controller: _pageController,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      SizedBox(
                        height: screenSize.height / 15,
                      ),
                      SafeArea(
                        child: SvgPicture.asset(
                          'assets/image/svg/findfood.svg',
                          fit: BoxFit.cover,
                          width: screenSize.width / 1,
                          height: screenSize.height / 2.5,
                        ),
                      ),
                      SizedBox(
                        height: screenSize.height / 10,
                      ),
                      CommonTitle.labelHeader(title: 'Find Food Love'),
                      SizedBox(
                        height: screenSize.height / 20,
                      ),
                      CommonTitle.subTitleHeader(
                          title:
                              'Discover the best foods from over 1,000\nrestaurants and fast delivery to your doorstep'),
                      SizedBox(
                        height: screenSize.height / 20,
                      ),
                      container_comman(
                        color: mainColor,
                        text: 'Next',
                        textColor: cWhite,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      SizedBox(
                        height: screenSize.height / 15,
                      ),
                      SafeArea(
                        child: SvgPicture.asset(
                          'assets/image/svg/Delivery.svg',
                          fit: BoxFit.cover,
                          width: screenSize.width / 1,
                          height: screenSize.height / 2.5,
                        ),
                      ),
                      SizedBox(
                        height: screenSize.height / 10,
                      ),
                      CommonTitle.labelHeader(title: 'Fast Delivery'),
                      SizedBox(
                        height: screenSize.height / 20,
                      ),
                      CommonTitle.subTitleHeader(
                          title:
                              'Fast food delivery to your home,\noffice wherever you are'),
                      SizedBox(
                        height: screenSize.height / 20,
                      ),
                      container_comman(
                        color: mainColor,
                        text: 'Next',
                        textColor: cWhite,
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      SizedBox(
                        height: screenSize.height / 15,
                      ),
                      SafeArea(
                        child: SvgPicture.asset(
                          'assets/image/svg/Livetracking.svg',
                          fit: BoxFit.cover,
                          width: screenSize.width / 1,
                          height: screenSize.height / 2.5,
                        ),
                      ),
                      SizedBox(
                        height: screenSize.height / 10,
                      ),
                      CommonTitle.labelHeader(title: 'Live Tracking'),
                      SizedBox(
                        height: screenSize.height / 20,
                      ),
                      CommonTitle.subTitleHeader(
                          title: 'Real time tracking of your food on the app '
                              '\nonce you placed the order'),
                      SizedBox(
                        height: screenSize.height / 20,
                      ),
                      container_comman(
                        color: mainColor,
                        text: 'Next',
                        textColor: cWhite,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    ));
  }
}
