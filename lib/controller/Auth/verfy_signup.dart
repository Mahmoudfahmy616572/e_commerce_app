import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/constants/app_route.dart';

abstract class VerifySignUpController extends GetxController {
  verifyCode();
  goToSignUpOtpScreen();
}

class VerifySignUpControllerImpl extends VerifySignUpController {
  GlobalKey<FormState> formState = GlobalKey<FormState>();

  late TextEditingController email;

  @override
  verifyCode() {
    var formData = formState.currentState;
    if (formData!.validate()) {
      return goToSignUpOtpScreen();
    } else {
      return "not Valid";
    }
  }

  @override
  goToSignUpOtpScreen() {
    Get.offAllNamed(AppRouteName.signUpOtp);
  }

  @override
  void onInit() {
    email = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    super.dispose();
  }
}
