import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../../controller/Auth/success_signup.dart';
import '../../../widgets/auth/success_signup_btn.dart';

class SuccessSignup extends StatelessWidget {
  const SuccessSignup({super.key});

  @override
  Widget build(BuildContext context) {
    SuccessSignUpControllerImpl controller =
        Get.put(SuccessSignUpControllerImpl());
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
                    "Success ",
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
                    "titlesignupSeccess".tr,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "textbodysignupSuccess".tr,
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
                  text: "Go to Login".tr,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
