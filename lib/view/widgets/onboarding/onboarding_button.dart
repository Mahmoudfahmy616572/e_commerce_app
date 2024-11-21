import 'package:e_commerce_app/controller/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constants/app_colors.dart';

class OnboardingButton extends StatelessWidget {
  const OnboardingButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingControllerImp>(
      builder: (controller) {
        if (controller.currentPage == 2) {
          return Container(
            height: 40,
            width: double.infinity,
            margin: const EdgeInsets.symmetric(horizontal: 50, vertical: 0),
            child: MaterialButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              textColor: Colors.white,
              color: AppColors.primaryColor,
              onPressed: () {
                controller.next();
              },
              child: Text(
                "Start".tr,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w700),
              ),
            ),
          );
        } else {
          return Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                    onPressed: () {
                      controller.skip();
                    },
                    child: Text(
                      "Skip".tr,
                      style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          fontSize: 18),
                    )),
                Container(
                  height: 40,
                  width: 110,
                  margin:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                  child: MaterialButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    textColor: Colors.white,
                    color: AppColors.primaryColor,
                    onPressed: () {
                      controller.next();
                    },
                    child: Text(
                      "Next".tr,
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
              ],
            ),
          );
        }
      },
    );
  }
}
