import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class comBackGround extends StatelessWidget {
  const comBackGround({
    Key key,
    @required this.screenSize,
  }) : super(key: key);

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SvgPicture.asset(
        'assets/image/svg/Background.svg',
        width: screenSize.width / 1,
        height: screenSize.height / 1,
      ),
    );
  }
}
