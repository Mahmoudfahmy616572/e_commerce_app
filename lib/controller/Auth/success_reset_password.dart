import 'package:e_commerce_app/core/constants/app_route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class SuccessResetPasswordController extends GetxController {
  goToLogin();
}

class SuccessResetPasswordControllerImpl
    extends SuccessResetPasswordController {
  late TextEditingController password;

  @override
  goToLogin() {
    Get.offAllNamed(AppRouteName.login);
  }
}
