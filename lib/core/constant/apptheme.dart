import 'package:flutter/material.dart';
import 'package:matjar/core/constant/color.dart';

ThemeData themeEnglish = ThemeData(
        fontFamily: 'Nunito',
        textTheme: TextTheme(
          headline1: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: AppColor.black),
          headline2: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: AppColor.black),
          headline3: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: AppColor.primaryColor),
          bodyText1: TextStyle(fontSize: 16, height: 2.0, color: AppColor.grey),
        ),
        primarySwatch: Colors.blue,
      ); 

      ThemeData themeArabic = ThemeData(
        fontFamily: 'Nato-sans',
        textTheme: TextTheme(
          headline1: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: AppColor.black),
          headline2: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: AppColor.black),
          headline3: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: AppColor.primaryColor),
          bodyText1: TextStyle(fontSize: 16, height: 2.0, color: AppColor.grey),
        ),
        primarySwatch: Colors.blue,
      ); 