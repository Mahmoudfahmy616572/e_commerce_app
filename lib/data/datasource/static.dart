import 'package:e_commerce_app/core/constants/image_assets.dart';
import 'package:e_commerce_app/data/models/onboarding_model.dart';

List<OnboardingModel> onboardingModel = [
  OnboardingModel(
      image: AppImageAssets.onboardingImageOne,
      headBody: "Set the Product \n Readmap",
      textBody: "Easily adjust the product roadmap to \n simplify your work",
      titel: "Choose Product"),
  OnboardingModel(
      image: AppImageAssets.onboardingImageTwo,
      textBody:
          "Build your company's product development \n to get better easily",
      titel: "Easy And Safe Paymnet",
      headBody: 'Building Product \n Development'),
  OnboardingModel(
      image: AppImageAssets.onboardingImageThree,
      textBody:
          "After the company's product development\n is complete and ready to launch",
      titel: "Track Your Order",
      headBody: 'Product Lunch'),
];
