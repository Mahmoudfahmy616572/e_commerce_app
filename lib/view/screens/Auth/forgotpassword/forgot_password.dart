import 'package:e_commerce_app/controller/Auth/forgot_password_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/functions/valid_textform_fun.dart';
import '../../../widgets/auth/custom_button.dart';
import '../../../widgets/auth/custom_text_button.dart';
import '../../../widgets/auth/custom_textform.dart';
import '../../../widgets/auth/intro_widget.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => ForgotPasswordControllerImpl());

    return Scaffold(
        appBar: AppBar(
          title: Text(
            "titleForgotPassword".tr,
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          centerTitle: true,
        ),
        body: GetBuilder<ForgotPasswordControllerImpl>(builder: (controller) {
          return Form(
            key: controller.formState,
            child: ListView(children: [
              const SizedBox(
                height: 100,
              ),
              IntroWidget(
                headText: "titleForgotPassword".tr,
                bodyText: "TextBodyForgotPassword".tr,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ),
              Column(
                children: [
                  CustomTextform(
                      validator: (val) {
                        return validVlues("email", 10, 50, val!);
                      },
                      controller: controller.email,
                      lableText: "labelEmail".tr,
                      hintText: "hintEmail".tr,
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
              const SizedBox(
                height: 50,
              ),
              CustomButton(
                text: "forgotBTN".tr,
                onPressed: () {
                  controller.sendPasswordResetEmail();
                },
              ),
              const SizedBox(
                height: 50,
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
                  )
                ],
              ),
            ]),
          );
        }));
  }
}
