import 'package:e_commerce_app/controller/Auth/verfy_signup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/functions/valid_textform_fun.dart';
import '../../../widgets/auth/custom_button.dart';
import '../../../widgets/auth/custom_textform.dart';
import '../../../widgets/auth/intro_widget.dart';

class VerifyEmailSignUp extends StatelessWidget {
  const VerifyEmailSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    VerifySignUpControllerImpl controller =
        Get.put(VerifySignUpControllerImpl());
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Verify Email".tr,
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          centerTitle: true,
        ),
        body: Form(
          key: controller.formState,
          child: ListView(children: [
            const SizedBox(
              height: 100,
            ),
            IntroWidget(
              headText: "Verify Email".tr,
              bodyText: "TextBodyVerifyEmailSignUp".tr,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.04,
            ),
            Column(
              children: [
                CustomTextform(
                  validator: (val) {
                    return validVlues("email", 5, 100, val!);
                  },
                  controller: controller.email,
                  lableText: "labelEmail".tr,
                  hintText: "hintEmail".tr,
                  isSecure: false,
                  suffix: const Icon(
                    Icons.email_outlined,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            CustomButton(
              text: "forgotBTN".tr,
              onPressed: () {
                controller.verifyCode();
              },
            ),
            const SizedBox(
              height: 50,
            ),
          ]),
        ));
  }
}
