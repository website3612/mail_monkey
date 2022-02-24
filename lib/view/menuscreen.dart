import 'package:flutter/material.dart';
import 'package:mail_monkey/common/bottomviewbar.dart';
import 'package:mail_monkey/common/commonTitle.dart';
import 'package:mail_monkey/common/commontextfield.dart';
import 'package:mail_monkey/res/color.dart';

class MenuScreen extends StatefulWidget {
  @override
  _MenuScreenState createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SafeArea(
                  child: Row(
                    children: [
                      CommonTitle.topHader(title: 'Menu'),
                      Spacer(),
                      Icon(Icons.shopping_cart)
                    ],
                  ),
                ),
                SizedBox(
                  height: screenSize.height / 30,
                ),
                commonField(
                  text: 'Search food',
                  keyBord: TextInputType.text,
                  iconprefix: IconButton(
                    icon: Icon(
                      Icons.search,
                      size: 30,
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Stack(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  height: 500,
                  width: 120,
                  margin: EdgeInsets.only(right: screenSize.width - 120),
                  decoration: BoxDecoration(
                    color: mainColor,
                    borderRadius: BorderRadius.horizontal(
                      right: Radius.circular(33),
                    ),
                  ),
                ),
              ),
              Positioned(
                right: 40,
                child: Column(
                  children: [
                    starItem(screenSize),
                    starItem(screenSize),
                    starItem(screenSize),
                    starItem(screenSize),
                  ],
                ),
              ),
              Positioned(
                top: 22.5,
                left: 40,
                child: Column(
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://images.unsplash.com/photo-1484723091739-30a097e8f929?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=449&q=80'),
                      radius: 40,
                    ),
                    SizedBox(
                      height: screenSize.height / 19,
                    ),
                    Container(
                      width: screenSize.width / 5,
                      height: screenSize.height / 10.48,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  'https://images.unsplash.com/photo-1498804103079-a6351b050096?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=387&q=80')),
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(19)),
                    ),
                    SizedBox(
                      height: screenSize.height / 19,
                    ),
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://images.unsplash.com/photo-1606313564200-e75d5e30476c?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=387&q=80'),
                      radius: 40,
                    ),
                    SizedBox(
                      height: screenSize.height / 19,
                    ),
                    Container(
                      width: screenSize.width / 5,
                      height: screenSize.height / 10.48,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                'https://images.unsplash.com/photo-1598030304671-5aa1d6f21128?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80'),
                          ),
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(19)),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('home buttomm');
        },
        backgroundColor: mainColor,
        child: Icon(
          Icons.home,
          size: 30,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomViewBar(
        screenSize: screenSize,
      ),
    );
  }

  Container starItem(Size screenSize) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Food',
            style: TextStyle(
                color: primaryFontColor,
                fontSize: 22,
                fontWeight: FontWeight.bold),
          ),
          CommonTitle.reTing(title: '120 items')
        ],
      ),
      decoration: BoxDecoration(
          color: cWhite,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.4),
              blurRadius: 10,
            )
          ],
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(10),
              bottomRight: Radius.circular(10),
              bottomLeft: Radius.circular(30),
              topLeft: Radius.circular(30))),
      height: screenSize.height / 10,
      width: screenSize.width / 1.4,
    );
  }
}
