import 'package:flutter/material.dart';
import 'color.dart';

ThemeData themeEnglish = ThemeData(
  fontFamily: "PlayfairDisplay",
  textTheme: const TextTheme(
      headline1: TextStyle(
          height: 2,
          fontWeight: FontWeight.bold,
          fontSize: 20,
          color: AppColor.black),
      headline2: TextStyle(
          height: 2,
          fontWeight: FontWeight.bold,
          fontSize: 26,
          color: AppColor.black),
      bodyText1: TextStyle(
        height: 2,
        color: AppColor.grey,
        fontSize: 17,
      )),
  primarySwatch: Colors.blue,
);

ThemeData themeArabic = ThemeData(
  fontFamily: "Cairo",
  textTheme: const TextTheme(
      headline1: TextStyle(
          height: 2,
          fontWeight: FontWeight.bold,
          fontSize: 20,
          color: AppColor.black),
      headline2: TextStyle(
          height: 2,
          fontWeight: FontWeight.bold,
          fontSize: 26,
          color: AppColor.black),
      bodyText1: TextStyle(
        height: 2,
        color: AppColor.grey,
        fontSize: 17,
      )),
  primarySwatch: Colors.blue,
);
