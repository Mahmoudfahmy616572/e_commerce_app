import 'package:e_commerce_app/core/constants/app_route.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../data/datasource/static.dart';

abstract class OnboardingController extends GetxController {
  next();
  onPageChange(int index);
}

class OnBoardingControllerImp extends OnboardingController {
  late PageController pageController;
  int currentPage = 0;
  @override
  next() {
    currentPage++;
    if (currentPage > onboardingModel.length - 1) {
      Get.offAllNamed(AppRoute.login);
    }
    pageController.animateToPage(currentPage,
        duration: const Duration(milliseconds: 700), curve: Curves.easeInOut);
    update();
  }

  @override
  onPageChange(int index) {
    currentPage = index;
    update();
  }

  @override
  void onInit() {
    super.onInit();
    pageController = PageController();
  }
}
