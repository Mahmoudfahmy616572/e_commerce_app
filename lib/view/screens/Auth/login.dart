import 'package:e_commerce_app/controller/Auth/login_controller.dart';
import 'package:e_commerce_app/core/constants/image_assets.dart';
import 'package:e_commerce_app/core/functions/dialog_app.dart';
import 'package:e_commerce_app/core/functions/valid_textform_fun.dart';
import 'package:e_commerce_app/view/widgets/auth/custom_textform.dart';
import 'package:e_commerce_app/view/widgets/auth/intro_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widgets/auth/custom_button.dart';
import '../../widgets/auth/custom_text_button.dart';

class Login extends StatelessWidget {
  const Login({super.key});
  @override
  Widget build(BuildContext context) {
    Get.put(LoginControllerImp());

    // return Obx(() {
    //   if (_authController.user != null) {
    //     //2
    //     return const Signup();
    //   }
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "SignInBTN".tr,
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          centerTitle: true,
        ),
        // ignore: deprecated_member_use
        body: WillPopScope(
          onWillPop: popUpAlert,
          child: GetBuilder<LoginControllerImp>(
              builder: (controller) => Form(
                    key: controller.formsatate,
                    child: ListView(
                      children: [
                        Column(
                          children: [
                            Image.asset(
                              AppImageAssets.logo,
                              height: 200,
                            ),
                            IntroWidget(
                              headText: "titleLogin".tr,
                              bodyText: "TextBodyLogin".tr,
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.04,
                            ),
                            Column(
                              children: [
                                CustomTextform(
                                  validator: (val) {
                                    return validVlues("email", 10, 100, val!);
                                  },
                                  controller: controller.email,
                                  lableText: "labelEmail".tr,
                                  hintText: "hintEmail".tr,
                                  isSecure: false,
                                  keyboardType: TextInputType.emailAddress,
                                  suffix: const Icon(
                                    Icons.email,
                                    color: Colors.grey,
                                  ),
                                ),
                                CustomTextform(
                                    validator: (val) {
                                      return validVlues(
                                          "password", 5, 25, val!);
                                    },
                                    controller: controller.password,
                                    lableText: "labelPassowrd".tr,
                                    hintText: "hintPassowrd".tr,
                                    isSecure: controller.isVisable,
                                    suffix: IconButton(
                                      onPressed: () {
                                        controller.isSecure();
                                      },
                                      icon: const Icon(
                                        Icons.lock_outline,
                                        color: Colors.grey,
                                      ),
                                    )),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal:
                                      MediaQuery.of(context).size.width * 0.02,
                                  vertical: 7),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  CustomTextbutton(
                                    text: "Forgot Password".tr,
                                    onPressed: () {
                                      controller.goToForgotPasswordScreen();
                                    },
                                    color: Colors.grey,
                                    decoration: TextDecoration.underline,
                                  )
                                ],
                              ),
                            ),
                            CustomButton(
                              text: "SignInBTN".tr,
                              onPressed: () {
                                controller.login();
                              },
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Don't have an account?".tr,
                                  style: Theme.of(context).textTheme.bodySmall,
                                ),
                                CustomTextbutton(
                                  text: "SignUpBTN".tr,
                                  onPressed: () {
                                    controller.goToSignUpScreen();
                                  },
                                  color: Colors.blue,
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  )),
        ));
  }
  // );
}
// }
