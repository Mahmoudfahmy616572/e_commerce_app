import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../controller/Auth/reset_password.dart';
import '../../../../core/functions/valid_textform_fun.dart';
import '../../../widgets/auth/custom_button.dart';
import '../../../widgets/auth/custom_textform.dart';
import '../../../widgets/auth/intro_widget.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => ResetPasswordControllerImpl());

    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Title reset password".tr,
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          centerTitle: true,
        ),
        body: GetBuilder<ResetPasswordControllerImpl>(builder: (controller) {
          return Form(
            key: controller.formState,
            child: ListView(children: [
              const SizedBox(
                height: 100,
              ),
              IntroWidget(
                headText: "HeadLine reset password".tr,
                bodyText: "Textline reset password".tr,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ),
              Column(
                children: [
                  CustomTextform(
                      validator: (val) {
                        return validVlues("password", 10, 25, val!);
                      },
                      controller: null,
                      lableText: "labelNewPassowrd reset password".tr,
                      hintText: "HitText reset password".tr,
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
                  const SizedBox(
                    height: 30,
                  ),
                  CustomTextform(
                      validator: (val) {
                        return validVlues("password", 10, 25, val!);
                      },
                      controller: controller.password,
                      lableText: "labelrewritePassowrd reset password".tr,
                      hintText: "HitRewritePassowrd reset password".tr,
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
                text: "Title reset password".tr,
                onPressed: () {
                  controller.resetPassword();
                  controller.goToSuccessResetPassword();
                },
              ),
              const SizedBox(
                height: 50,
              ),
            ]),
          );
        }));
  }
}
