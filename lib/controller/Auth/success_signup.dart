import 'package:e_commerce_app/core/constants/app_route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class SuccessSignUpController extends GetxController {
  goToLogin();
}

class SuccessSignUpControllerImpl
    extends SuccessSignUpController {
  late TextEditingController password;

  @override
  goToLogin() {
    Get.offAllNamed(AppRouteName.login);
  }
}
