import 'package:flutter/cupertino.dart';

const darkTheme = CupertinoThemeData(
  brightness: Brightness.dark,
  primaryColor: CupertinoColors.systemBlue,
  primaryContrastingColor: CupertinoColors.systemYellow,
  textTheme: CupertinoTextThemeData(
    textStyle: TextStyle(color: CupertinoColors.white),
    actionTextStyle: TextStyle(color: CupertinoColors.activeBlue),
    tabLabelTextStyle: TextStyle(color: CupertinoColors.inactiveGray),
    navTitleTextStyle: TextStyle(color: CupertinoColors.white, fontSize: 18, fontWeight: FontWeight.bold),
    navLargeTitleTextStyle: TextStyle(color: CupertinoColors.white, fontSize: 34),
    pickerTextStyle: TextStyle(color: CupertinoColors.white),
    dateTimePickerTextStyle: TextStyle(color: CupertinoColors.white),
  ),
  barBackgroundColor: CupertinoColors.black,
  scaffoldBackgroundColor: CupertinoColors.darkBackgroundGray,
);

const lightTheme = CupertinoThemeData(
  brightness: Brightness.light,
  primaryColor: CupertinoColors.activeBlue,
  primaryContrastingColor: CupertinoColors.systemOrange,
  textTheme: CupertinoTextThemeData(
    textStyle: TextStyle(color: CupertinoColors.black),
    actionTextStyle: TextStyle(color: CupertinoColors.activeBlue),
    tabLabelTextStyle: TextStyle(color: CupertinoColors.inactiveGray),
    navTitleTextStyle: TextStyle(color: CupertinoColors.black, fontSize: 20),
    navLargeTitleTextStyle: TextStyle(color: CupertinoColors.black, fontSize: 34),
    pickerTextStyle: TextStyle(color: CupertinoColors.black),
    dateTimePickerTextStyle: TextStyle(color: CupertinoColors.black),
  ),
  barBackgroundColor: CupertinoColors.extraLightBackgroundGray,
  scaffoldBackgroundColor: CupertinoColors.white,
);
