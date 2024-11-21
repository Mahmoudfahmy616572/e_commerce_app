import 'package:e_commerce_app/core/constants/app_colors.dart';
import 'package:e_commerce_app/core/constants/app_route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/localization/local_lang.dart';
import '../widgets/language/btn_language.dart';

class Language extends GetView<LocalLangController> {
  const Language({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            Text("title".tr, style: Theme.of(context).textTheme.headlineLarge),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Choose Language".tr,
                style: TextStyle(
                    color: AppColors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold)),
            const SizedBox(
              height: 20,
            ),
            BtnLanguage(
              textBtn: 'ar'.tr,
              onTap: () {
                controller.changeLang("ar");
                Get.toNamed(AppRouteName.onboarding);
              },
            ),
            BtnLanguage(
              textBtn: 'en'.tr,
              onTap: () {
                controller.changeLang("en");
                Get.toNamed(AppRouteName.onboarding);
              },
            )
          ],
        ),
      ),
    );
  }
}
