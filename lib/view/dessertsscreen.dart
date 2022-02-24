import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mail_monkey/common/commonTitle.dart';
import 'package:mail_monkey/common/commontextfield.dart';
import 'package:mail_monkey/res/color.dart';

class DessertsScreen extends StatefulWidget {
  @override
  _DessertsScreenState createState() => _DessertsScreenState();
}

class _DessertsScreenState extends State<DessertsScreen> {
  List<Map<String, dynamic>> images = [
    {
      "IMAGES":
          "https://images.unsplash.com/photo-1535920527002-b35e96722eb9?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=387&q=80",
      "TITEL": "French Apple Pie",
      "RETING": "4.9",
      "SUBTITLE": "Minute by tuk tuk.Desserts"
    },
    {
      "IMAGES":
          "https://images.unsplash.com/photo-1461009312844-e80697a81cc7?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=788&q=80",
      "TITEL": "Dark Chocolate Cake",
      "RETING": "4.8",
      "SUBTITLE": "Cakes by Tella.Desserts"
    },
    {
      "IMAGES":
          "https://images.unsplash.com/photo-1578499026669-d786fc5b872b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=387&q=80",
      "TITEL": "Street Shake",
      "RETING": "4.6",
      "SUBTITLE": "Café Racer.Desserts"
    },
    {
      "IMAGES":
          "https://images.unsplash.com/photo-1607920591413-4ec007e70023?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=387&q=80",
      "TITEL": "Fudgy Chewy Brownies",
      "RETING": "4.7",
      "SUBTITLE": "Minute by tuk tuk.Desserts"
    },
  ];
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SafeArea(
                  child: Row(
                children: [
                  Icon(Icons.arrow_back_ios),
                  SizedBox(
                    width: screenSize.width / 30,
                  ),
                  CommonTitle.topHader(title: 'Desserts'),
                  Spacer(),
                  Icon(Icons.shopping_cart),
                ],
              )),
            ),
            SizedBox(
              height: screenSize.height / 1000,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: commonField(
                iconprefix: Icon(Icons.search),
                text: 'Search',
              ),
            ),
            Container(
              child: ListView.builder(
                itemCount: images.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Align(
                              child: Text(
                                images[index]["TITEL"],
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: cWhite),
                              ),
                              alignment: Alignment.bottomLeft,
                            ),
                            Align(
                              alignment: Alignment.bottomLeft,
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: mainColor,
                                    size: 22,
                                  ),
                                  SizedBox(
                                    width: screenSize.width / 100,
                                  ),
                                  Text(
                                    images[index]["RETING"],
                                    style: TextStyle(color: mainColor),
                                  ),
                                  SizedBox(
                                    width: screenSize.width / 80,
                                  ),
                                  Text(
                                    images[index]["SUBTITLE"],
                                    style: TextStyle(
                                        color: cWhite,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      height: screenSize.height / 3.5,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(images[index]["IMAGES"]),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
