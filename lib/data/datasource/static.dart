import 'package:e_commerce_app/core/constants/image_assets.dart';
import 'package:e_commerce_app/data/models/onboarding_model.dart';
import 'package:get/get.dart';

List<OnboardingModel> onboardingModel = [
  OnboardingModel(
      image: AppImageAssets.onboardingImageOne,
      headBody: "headBodyOnboarding 1".tr,
      textBody: "textBodyOnboarding 1".tr,
      titel: "titleOnboarding 1".tr),
  OnboardingModel(
      image: AppImageAssets.onboardingImageTwo,
      textBody: "textBodyOnboarding 2".tr,
      titel: "titleOnboarding 2".tr,
      headBody: 'headBodyOnboarding 2'.tr),
  OnboardingModel(
      image: AppImageAssets.onboardingImageThree,
      textBody: "textBodyOnboarding 3".tr,
      titel: "titleOnboarding 3".tr,
      headBody: 'headBodyOnboarding 3'.tr),
];
