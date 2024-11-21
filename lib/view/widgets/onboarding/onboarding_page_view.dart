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
            height: MediaQuery.of(context).size.height * 0.04,
          ),
          Image(
            image: AssetImage(onboardingModel[index].image),
            // height: 200,
            // width: 200,
            fit: BoxFit.fill,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.04,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20,right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      onboardingModel[index].headBody,
                      style: Theme.of(context).textTheme.headlineMedium,
                      textAlign: TextAlign.start,
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.04,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      onboardingModel[index].textBody,
                      style: Theme.of(context).textTheme.bodySmall,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
