import 'package:flutter/material.dart';

abstract class AppTheme{
  //colors
  static const whiteColor = Color(0xffffffff);
  static const blackColor = Color(0xff141922);
  static const blackLight = Color(0xff200E32);
  static const greenColor = Color(0xff027A48);
  static const lightGreenColor = Color(0xffecfdf3);
  static const lightMauve = Color(0xfff9f5ff);
  static const lightPink = Color(0xfffdf2fa);
  static const lightSimone = Color(0xfffffaf5);
  static const lightBlue = Color(0xfff0f9ff);

  //text style
  static const TextStyle titleTextStyle =
  TextStyle(fontWeight: FontWeight.normal, fontSize: 22, color: blackColor);
  static const TextStyle nameTextStyle =
  TextStyle(fontWeight: FontWeight.bold, fontSize: 22, color: blackLight);
  static const TextStyle descriptionTextStyle =
  TextStyle(fontWeight: FontWeight.normal, fontSize: 18, color: blackLight);
  static const TextStyle iconsTextStyle =
  TextStyle(fontWeight: FontWeight.normal, fontSize: 20, color: blackLight);
  static const TextStyle textTextStyle =
  TextStyle(fontWeight: FontWeight.normal, fontSize: 20, color: blackLight);
  static const TextStyle seeMoreTextStyle =
  TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: greenColor);
}