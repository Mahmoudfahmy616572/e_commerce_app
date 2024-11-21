import 'package:e_commerce_app/core/constants/app_route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class ResetPasswordController extends GetxController {
  resetPassword();
  goToSuccessResetPassword();
  isSecure();
}

class ResetPasswordControllerImpl extends ResetPasswordController {
  late TextEditingController password;
  GlobalKey<FormState> formState = GlobalKey<FormState>();
  bool isVisable = false;

  @override
  resetPassword() {
    var formData = formState.currentState;
    if (formData!.validate()) {
      return "valid";
    } else {
      return "not Valid";
    }
  }

  @override
  isSecure() {
    isVisable = isVisable == false ? true : false;
    update();
  }

  @override
  goToSuccessResetPassword() {
    Get.offAllNamed(AppRouteName.successResetPassword);
  }

  @override
  void onInit() {
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    password.dispose();
    super.dispose();
  }
}
