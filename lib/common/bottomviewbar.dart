import 'package:flutter/material.dart';
import 'package:mail_monkey/res/color.dart';

class BottomViewBar extends StatelessWidget {
  const BottomViewBar({
    Key key,
    @required this.screenSize,
  }) : super(key: key);

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      notchMargin: 15,
      color: cWhite,
      child: Container(
        margin: EdgeInsets.only(left: 15, right: 15),
        // color: Colors.red,
        height: 80,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
                onTap: () {
                  Text('menu');
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.api_rounded),
                    Text('Menu'),
                  ],
                )),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Icon(Icons.local_offer), Text('offers')],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Icon(Icons.person), Text('Profile')],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Icon(Icons.more_horiz_outlined), Text('More')],
            ),
          ],
        ),
      ),
    );
  }
}
