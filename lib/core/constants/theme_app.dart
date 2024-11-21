import 'package:flutter/material.dart';

import 'app_colors.dart';

ThemeData themeDataEnglish = ThemeData(
    fontFamily: "PlayfairDisplay",
    textTheme: TextTheme(
      headlineLarge: TextStyle(
          letterSpacing: 1.7,
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: AppColors.black),
      headlineMedium: TextStyle(
          fontSize: 20, fontWeight: FontWeight.bold, color: AppColors.black),
      headlineSmall: TextStyle(
          fontSize: 20, fontWeight: FontWeight.bold, color: AppColors.grey),
      bodySmall: TextStyle(fontSize: 17, color: AppColors.grey, height: 1.5),
      bodyMedium: TextStyle(fontSize: 18, color: AppColors.black, height: 1.5),
      displaySmall: TextStyle(
          fontSize: 18,
          color: AppColors.grey,
          decoration: TextDecoration.underline),
      bodyLarge: TextStyle(
          fontSize: 20,
          color: AppColors.white,
          height: 1.5,
          fontWeight: FontWeight.w700),
      displayMedium: TextStyle(
          fontSize: 17, color: AppColors.white, fontWeight: FontWeight.normal),
      displayLarge: TextStyle(
          fontSize: 25, color: AppColors.black, fontWeight: FontWeight.w600),
    ),
    primarySwatch: Colors.blue);
ThemeData themeDataArabic = ThemeData(
    fontFamily: "Cairo",
    textTheme: TextTheme(
      headlineLarge: TextStyle(
          letterSpacing: 1.7,
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: AppColors.black),
      headlineMedium: TextStyle(
          fontSize: 20, fontWeight: FontWeight.bold, color: AppColors.black),
      headlineSmall: TextStyle(
          fontSize: 20, fontWeight: FontWeight.bold, color: AppColors.grey),
      bodySmall: TextStyle(fontSize: 17, color: AppColors.grey, height: 1.5),
      bodyMedium: TextStyle(fontSize: 18, color: AppColors.black, height: 1.5),
      displaySmall: TextStyle(
          fontSize: 18,
          color: AppColors.grey,
          decoration: TextDecoration.underline),
      bodyLarge: TextStyle(
          fontSize: 20,
          color: AppColors.white,
          height: 1.5,
          fontWeight: FontWeight.w700),
      displayMedium: TextStyle(
          fontSize: 17, color: AppColors.white, fontWeight: FontWeight.normal),
      displayLarge: TextStyle(
          fontSize: 20, color: AppColors.black, fontWeight: FontWeight.w600),
    ),
    primarySwatch: Colors.blue);
