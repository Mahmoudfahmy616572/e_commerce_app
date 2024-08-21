import 'package:e_commerce_app/routs.dart';
import 'package:e_commerce_app/view/screens/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'core/constants/app_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          fontFamily: "PlayfairDisplay",
          textTheme: TextTheme(
            headlineLarge: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: AppColors.black),
            headlineMedium: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: AppColors.black),
            bodySmall:
                TextStyle(fontSize: 17, color: AppColors.grey, height: 1.5),
          ),
          primarySwatch: Colors.blue),
      home: const Onboarding(),
      routes: routes,
    );
  }
}
