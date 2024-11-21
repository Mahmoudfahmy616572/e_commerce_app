import 'package:e_commerce_app/controller/Auth/success_reset_password.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../widgets/auth/success_signup_btn.dart';

class SuccessResetPassword extends StatelessWidget {
  const SuccessResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    SuccessResetPasswordControllerImpl controller =
        Get.put(SuccessResetPasswordControllerImpl());
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Success ".tr,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  SvgPicture.asset(
                    "assets/icons/Check.svg",
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "titleSeccess".tr,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "textbodySuccess".tr,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
                child: CustomSeccessBtn(
                  onPressed: () {
                    controller.goToLogin();
                  },
                  text: 'Go to Login'.tr,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
