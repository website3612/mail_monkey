import 'package:flutter/material.dart';

import 'package:mail_monkey/view/otpscreen.dart';
import 'package:mail_monkey/view/splacescreen.dart';

import 'view/homescreen.dart';
import 'view/loginscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Times New Romance-Light'),
      debugShowCheckedModeBanner: false,
      home: splaceScreen(),
    );
  }
}
