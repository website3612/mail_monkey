import 'package:flutter/material.dart';
import 'package:mail_monkey/res/color.dart';

class commonField extends StatelessWidget {
  final String text;
  final bool password;
  final TextInputType keyBord;
  final Widget iconprefix;
  final Widget iconsuffix;
  const commonField({
    Key key,
    this.text,
    this.password = false,
    this.keyBord,
    this.iconprefix,
    this.iconsuffix,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: password,
      keyboardType: keyBord,
      decoration: InputDecoration(
          suffixIcon: iconsuffix,
          prefixIcon: iconprefix,
          fillColor: Color(0xFFF2F2f2),
          filled: true,
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(80),
              borderSide: BorderSide(color: cWhite, width: 0)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(80),
              borderSide: BorderSide(color: cWhite, width: 0)),
          hintText: text,
          hintStyle: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w300,
            color: placeHolderFontColor,
          )),
    );
  }
}
