import 'package:e_commerce_app/core/class/status_request.dart';
import 'package:e_commerce_app/core/constants/app_route.dart';
import 'package:e_commerce_app/core/functions/handlingdata_controller.dart';
import 'package:e_commerce_app/data/datasource/remote/auth/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class LoginController extends GetxController {
  login();
  goToSignUpScreen();
  goToForgotPasswordScreen();
  isSecure();
}

class LoginControllerImp extends LoginController {
  GlobalKey<FormState> formsatate = GlobalKey<FormState>();
  late TextEditingController email;
  late TextEditingController password;
  StatusRequest? statusRequest;
  bool isVisable = false;
  LoginRemote loginRemote = LoginRemote(Get.find());
  @override
  login() async {
    if (formsatate.currentState!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      var response = await loginRemote.postData(email.text, password.text);
      statusRequest = handlingData(response);
      if (StatusRequest.success == statusRequest) {
        Get.snackbar("Success", "Login Successfully");
        Get.offAllNamed(AppRouteName.home);
      } else {
        Get.defaultDialog(title: "Error", middleText: response.toString());
        return statusRequest = StatusRequest.failure;
      }
      update();

      return statusRequest = handlingData(response);
    }
  }

  @override
  isSecure() {
    isVisable = isVisable == false ? true : false;
    update();
  }

  @override
  goToSignUpScreen() {
    Get.offNamed(AppRouteName.signUp);
  }

  @override
  goToForgotPasswordScreen() {
    Get.offNamed(AppRouteName.forgotPassword);
  }

  @override
  void onInit() {
    // FirebaseMessaging.instance.getToken().then((value) {});
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }
}
