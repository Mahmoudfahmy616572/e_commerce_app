import 'package:e_commerce_app/core/constants/theme_app.dart';
import 'package:e_commerce_app/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LocalLangController extends GetxController {
  Locale? language;
  MyServices myServices = Get.put(MyServices());
  ThemeData apptheme = themeDataArabic;
  changeLang(String langcode) {
    Locale locale = Locale(langcode);
    myServices.sharedPreferences.setString("language", langcode);
    langcode == "ar" ? apptheme = themeDataArabic : apptheme = themeDataEnglish;
    Get.changeTheme(apptheme);
    Get.updateLocale(locale);
  }

  @override
  void onInit() {
    String? sharedPref = myServices.sharedPreferences.getString("language");
    if (sharedPref == "ar") {
      language = const Locale("ar");
      apptheme = themeDataArabic;
    } else if (sharedPref == "en") {
      language = const Locale("en");
      apptheme = themeDataArabic;
    } else {
      language = Locale(Get.deviceLocale!.languageCode);
    }

    super.onInit();
  }
}
