import 'package:e_commerce_app/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/onboarding_controller.dart';
import '../../../data/datasource/static.dart';

class OnboardingController extends StatelessWidget {
  const OnboardingController({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImp());
    return GetBuilder<OnBoardingControllerImp>(
        builder: (controller) => Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...List.generate(
                  onboardingModel.length,
                  (index) => AnimatedContainer(
                    margin: const EdgeInsets.only(right: 8),
                    height: 8,
                    width: controller.currentPage == index ? 22 : 8,
                    duration: const Duration(milliseconds: 700),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: controller.currentPage == index
                            ? AppColors.primaryColor
                            : AppColors.secondaryColor),
                  ),
                )
              ],
            ));
  }
}
