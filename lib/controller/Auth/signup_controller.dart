import 'package:e_commerce_app/core/constants/app_route.dart';
import 'package:e_commerce_app/data/datasource/remote/auth/register.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/class/status_request.dart';
import '../../core/functions/handlingdata_controller.dart';

abstract class SignupController extends GetxController {
  signUp();
  goToSigninScreen();
  goToSuccessSignUp();
  isSecure();
}

class SignUpControllerImp extends SignupController {
  GlobalKey<FormState> formState = GlobalKey<FormState>();
  late TextEditingController email;
  late TextEditingController password;
  late TextEditingController confirmPassword;
  late TextEditingController code;
  late TextEditingController address;
  late TextEditingController firstName;
  late TextEditingController lastName;
  late TextEditingController phone;
  late TextEditingController gender;
  bool isvisable = false;
  StatusRequest? statusRequest;
  RegisterRemote? _registerRemote;
  @override
  signUp() async {
    if (formState.currentState!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      var response = await _registerRemote?.postData(
          firstName.text,
          lastName.text,
          email.text,
          password.text,
          phone.text,
          confirmPassword.text,
          code.text,
          gender.text,
          address.text);
      statusRequest = handlingData(response);
      if (StatusRequest.success == statusRequest) {
        Get.snackbar("Success", "Register Successfully");
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
  goToSigninScreen() {
    Get.offAllNamed(AppRouteName.login);
  }

  goToVerifySignUp() {
    Get.offAllNamed(AppRouteName.verifySignup);
  }

  @override
  goToSuccessSignUp() {
    Get.offAllNamed(AppRouteName.successSignUp);
  }

  @override
  isSecure() {
    isvisable = isvisable == true ? false : true;
    update();
  }

  @override
  void onInit() {
    email = TextEditingController();
    phone = TextEditingController();
    firstName = TextEditingController();
    lastName = TextEditingController();
    password = TextEditingController();
    confirmPassword = TextEditingController();
    code = TextEditingController();
    address = TextEditingController();
    gender = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    lastName.dispose();
    firstName.dispose();
    confirmPassword.dispose();
    address.dispose();
    code.dispose();
    phone.dispose();
    password.dispose();
    gender.dispose();
    super.dispose();
  }
}
