import 'package:flutter/material.dart';
import 'package:islamic_app/app_color.dart';

class MyThemeData {
  static final ThemeData lightMode = ThemeData(
    primaryColor: AppColor.PrimarColor,
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(
          color: AppColor.blackColor,
        ),
      ),
      textTheme: TextTheme(
        bodyLarge: TextStyle(
          color: AppColor.blackColor,
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
        bodyMedium: TextStyle(
          color: AppColor.blackColor,
          fontWeight: FontWeight.w700,
          fontSize: 25,
        ),
        bodySmall: TextStyle(
          color: AppColor.blackColor,
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
        titleLarge: TextStyle(
          color: AppColor.blackColor,
          fontWeight: FontWeight.w400,
          fontSize: 20,
        ),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: AppColor.blackColor,
        unselectedItemColor: AppColor.WhiteColor,
      ));
  static final ThemeData DarkMode = ThemeData(
    primaryColor: AppColor.PrimarColorDark,
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(
          color: AppColor.WhiteColor,
        ),
      ),
      textTheme: TextTheme(
        bodyLarge: TextStyle(
          color: AppColor.WhiteColor,
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
        bodyMedium: TextStyle(
          color: AppColor.WhiteColor,
          fontWeight: FontWeight.w700,
          fontSize: 25,
        ),
        bodySmall: TextStyle(
          color: AppColor.WhiteColor,
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
        titleLarge: TextStyle(
          color: AppColor.WhiteColor,
          fontWeight: FontWeight.w400,
          fontSize: 20,
        ),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: AppColor.SacndryColorDark,
        unselectedItemColor: AppColor.WhiteColor,
      ));

}
