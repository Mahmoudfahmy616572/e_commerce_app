import 'package:e_commerce_app/controller/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingButton extends GetView<OnBoardingControllerImp> {
  const OnboardingButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 50, vertical: 0),
      child: MaterialButton(
        textColor: Colors.white,
        color: Colors.blue[300],
        onPressed: () {
          controller.next();
        },
        child: const Text(
          "Let's Go",
          style: TextStyle(color: Colors.white,fontSize: 18,fontWeight:FontWeight.w700),
        ),
      ),
    );
  }
}
