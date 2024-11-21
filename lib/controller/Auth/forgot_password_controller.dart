import 'package:e_commerce_app/core/constants/app_route.dart';
import 'package:e_commerce_app/core/services/auth_service.dart';
import 'package:e_commerce_app/view/screens/full_screen_loader.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';

abstract class ForgotPasswordController extends GetxController
    with GetTickerProviderStateMixin {
  sendcode();
  goToSignUpScreen();
  gotoCheckEmailScreen();
  isSecure();
  sendPasswordResetEmail();
  resendPasswordResetEmail();
}

class ForgotPasswordControllerImpl extends ForgotPasswordController {
  late TextEditingController email;
  GlobalKey<FormState> formState = GlobalKey<FormState>();
  bool isVisable = false;
  AuthService authService = Get.put(AuthService());

  @override
  sendcode() {
    var formData = formState.currentState;
    if (formData!.validate()) {
      return gotoCheckEmailScreen();
    } else {
      return "not Valid".tr;
    }
  }

  @override
  goToSignUpScreen() {
    Get.offAllNamed(AppRouteName.signUp);
  }

  @override
  isSecure() {
    isVisable = isVisable == false ? true : false;
    update();
  }

  @override
  gotoCheckEmailScreen() {
    Get.offAllNamed(AppRouteName.checkEmailResetPassword);
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

  @override
  sendPasswordResetEmail() async {
    try {
      EFullScreenLoader.openLoadingDialog(
        SpinKitWaveSpinner(
            color: Colors.white,
            waveColor: Colors.blue,
            trackColor: Colors.white,
            size: 100.0,
            controller: AnimationController(
                duration: const Duration(milliseconds: 1200), vsync: this)),
        "The Proccess in Progress.....".tr,
      );
      if (!formState.currentState!.validate()) {
        EFullScreenLoader.stopDialog();
        return;
      }
      await authService.sendPasswordResetEmailVerification(email.text.trim());
      EFullScreenLoader.stopDialog();

      Get.snackbar(
          "Email Send".tr, "Email Link send to reset your password".tr);
      sendcode();
    } catch (e) {
      EFullScreenLoader.stopDialog();
      Get.snackbar("Error", e.toString());
    }
  }

  @override
  resendPasswordResetEmail() async {
    try {
      await authService.sendPasswordResetEmailVerification(email.text.trim());
      sendcode();

      Get.snackbar(
          "Email Send".tr, "Email Link send to reset your password".tr);
    } catch (e) {
      e.toString();
    }
  }
}
