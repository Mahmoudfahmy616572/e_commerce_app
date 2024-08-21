import 'package:e_commerce_app/controller/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../data/datasource/static.dart';

class OnboardingPageview extends GetView<OnBoardingControllerImp> {
  const OnboardingPageview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImp());
    return PageView.builder(
      controller: controller.pageController,
      onPageChanged: (value) {
        controller.onPageChange(value);
      },
      itemCount: onboardingModel.length,
      itemBuilder: (context, index) => Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.04,
          ),
          Text(onboardingModel[index].titel,
              style: Theme.of(context).textTheme.headlineLarge),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
          ),
          Image(
            image: AssetImage(onboardingModel[index].image),
            height: 200,
            width: 200,
            fit: BoxFit.fill,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
          ),
          Text(
            onboardingModel[index].textBody,
            style: Theme.of(context).textTheme.bodySmall,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
