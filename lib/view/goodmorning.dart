import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mail_monkey/common/bottomviewbar.dart';
import 'package:mail_monkey/common/commonTitle.dart';
import 'package:mail_monkey/common/commontextfield.dart';
import 'package:mail_monkey/res/color.dart';

class goodMornig extends StatefulWidget {
  @override
  _goodMornigState createState() => _goodMornigState();
}

class _goodMornigState extends State<goodMornig> {
  List<Map<String, dynamic>> images = [
    {"Images": "assets/image/jpg/offer.jpg", "Titel": "Offer"},
    {"Images": "assets/image/jpg/Sirlankan.jpg", "Titel": "sir lankan"},
    {"Images": "assets/image/jpg/italian.jpg", "Titel": "Italin"},
    {"Images": "assets/image/jpg/indian.jpg", "Titel": "indian"},
    {"Images": "assets/image/jpg/offer.jpg", "Titel": "Offer"},
    {"Images": "assets/image/jpg/Sirlankan.jpg", "Titel": "Sir lankan"},
  ];
  List<Map<String, dynamic>> images1 = [
    {
      "iamge":
          'https://images.unsplash.com/photo-1590947132387-155cc02f3212?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1170&q=80'
    },
    {
      "iamge":
          'https://images.unsplash.com/photo-1579697922417-9e7bfb6c351f?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=435&q=80'
    },
    {
      "iamge":
          'https://shwetainthekitchen.com/wp-content/uploads/2020/08/Ukadiche-Modak.jpg'
    },
  ];
  List<Map<String, dynamic>> itemName = [
    {'iName': 'Pizza'},
    {'iName': 'Egg'},
    {'iName': 'laddu'}
  ];

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      extendBody: true,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CommonTitle.topHader(title: 'Good Morning Bilies!'),
                        Spacer(),
                        Icon(
                          Icons.shopping_cart,
                          color: primaryFontColor,
                          size: 25,
                        )
                      ],
                    ),
                    SizedBox(
                      height: screenSize.height / 40,
                    ),
                    CommonTitle.reTing(title: 'Delivering to'),
                    Row(
                      children: [
                        CommonTitle.itemHading(title: 'Current Location'),
                        SizedBox(
                          width: screenSize.width / 10,
                        ),
                        Icon(
                          Icons.keyboard_arrow_down,
                          color: mainColor,
                        )
                      ],
                    ),
                    SizedBox(
                      height: screenSize.height / 30,
                    ),
                    commonField(
                      iconprefix: Icon(Icons.search_rounded),
                      text: 'Search food',
                      keyBord: TextInputType.name,
                      password: false,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  children: [
                    Container(
                      height: screenSize.height / 6,
                      width: screenSize.width / 1,
                      // color: Colors.black,
                      child: ListView.builder(
                        itemCount: images.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 15),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.red,
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image:
                                          AssetImage(images[index]['Images']),
                                    ),
                                  ),
                                  height: screenSize.height / 7.5,
                                  width: 100,
                                ),
                              ),
                              Spacer(),
                              Text(
                                '${images[index]['Titel']}',
                              ),
                            ],
                          );
                        },
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: screenSize.height / 40,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10, left: 10),
                child: Row(
                  // crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    CommonTitle.topHader(title: "Popular Restaurents"),
                    Spacer(),
                    Text(
                      'View all',
                      style: TextStyle(color: mainColor, fontSize: 13),
                    )
                  ],
                ),
              ),
              Container(
                // color: Colors.black,
                child: ListView.builder(
                  itemCount: images1.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    return Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(images1[index]["iamge"]),
                                  fit: BoxFit.cover),
                            ),
                            height: screenSize.height / 4,
                            width: screenSize.width / 1,
                            // color: Colors.black,
                          ),
                          SizedBoxconfi.sH5,
                          Padding(
                            padding: const EdgeInsets.only(left: 30),
                            child: Column(
                              children: [
                                Text(
                                  "${itemName[index]["iName"]}",
                                  style: CommonTitle.fontTextStyle,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: mainColor,
                                      size: 20,
                                    ),
                                    Text(
                                      '4.9',
                                      style: TextStyle(
                                        fontSize: 11,
                                        color: mainColor,
                                      ),
                                    ),
                                    CommonTitle.reTing(
                                        title:
                                            '(124 ratings) Cafe Western Food'),
                                  ],
                                ),
                              ],
                              crossAxisAlignment: CrossAxisAlignment.start,
                            ),
                          ),
                        ],
                      ),
                      margin: EdgeInsets.only(
                        bottom: 30,
                      ),
                      height: screenSize.height / 3.2,
                      width: screenSize.width / 1,
                    );
                  },
                ),
              )
            ],
          ),
        ),
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
}
