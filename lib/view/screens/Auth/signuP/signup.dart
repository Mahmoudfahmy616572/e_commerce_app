// ignore_for_file: deprecated_member_use

import 'package:e_commerce_app/controller/Auth/signup_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/functions/dialog_app.dart';
import '../../../../core/functions/valid_textform_fun.dart';
import '../../../widgets/auth/custom_button.dart';
import '../../../widgets/auth/custom_text_button.dart';
import '../../../widgets/auth/custom_textform.dart';
import '../../../widgets/auth/intro_widget.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    Get.put(SignUpControllerImp());
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "SignUpBTN".tr,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        centerTitle: true,
      ),
      body: WillPopScope(
        onWillPop: popUpAlert,
        child: GetBuilder<SignUpControllerImp>(builder: (controller) {
          return Form(
            key: controller.formState,
            child: ListView(
              children: [
                const SizedBox(
                  height: 50,
                ),
                IntroWidget(
                  headText: "titleSignUp".tr,
                  bodyText: "TextBodySignUp".tr,
                ),
                const SizedBox(
                  height: 50,
                ),
                Column(
                  children: [
                    CustomTextform(
                      validator: (val) {
                        return validVlues("firstName", 4, 25, val!);
                      },
                      controller: controller.firstName,
                      lableText: "labelFirstName".tr,
                      hintText: "hintName".tr,
                      keyboardType: TextInputType.name,
                      isSecure: false,
                      suffix: const Icon(
                        Icons.person_2_outlined,
                        color: Colors.grey,
                      ),
                    ),
                    CustomTextform(
                      validator: (val) {
                        return validVlues("lastName", 4, 25, val!);
                      },
                      controller: controller.lastName,
                      lableText: "labelLastName".tr,
                      hintText: "hintName".tr,
                      keyboardType: TextInputType.name,
                      isSecure: false,
                      suffix: const Icon(
                        Icons.person_2_outlined,
                        color: Colors.grey,
                      ),
                    ),
                    CustomTextform(
                      validator: (val) {
                        return validVlues("email", 10, 100, val!);
                      },
                      controller: controller.email,
                      lableText: "labelEmail".tr,
                      hintText: "hintEmail".tr,
                      keyboardType: TextInputType.emailAddress,
                      isSecure: false,
                      suffix: const Icon(
                        Icons.email_outlined,
                        color: Colors.grey,
                      ),
                    ),
                    CustomTextform(
                      validator: (val) {
                        return validVlues("phone", 11, 11, val!);
                      },
                      controller: controller.phone,
                      lableText: "labelphone".tr,
                      hintText: "hintphone".tr,
                      keyboardType: TextInputType.phone,
                      isSecure: false,
                      suffix: const Icon(
                        Icons.phone_android_rounded,
                        color: Colors.grey,
                      ),
                    ),
                    CustomTextform(
                        validator: (val) {
                          return validVlues("password", 4, 25, val!);
                        },
                        controller: controller.password,
                        lableText: "labelPassowrd".tr,
                        hintText: "hintPassowrd".tr,
                        isSecure: controller.isvisable,
                        suffix: IconButton(
                          onPressed: () {
                            controller.isSecure();
                          },
                          icon: const Icon(
                            Icons.lock_outline,
                            color: Colors.grey,
                          ),
                        )),
                    CustomTextform(
                        validator: (val) {
                          return validVlues("password", 4, 25, val!);
                        },
                        controller: controller.confirmPassword,
                        lableText: "labelconfirmpassword".tr,
                        hintText: "hintPassowrd".tr,
                        isSecure: controller.isvisable,
                        suffix: IconButton(
                          onPressed: () {
                            controller.isSecure();
                          },
                          icon: const Icon(
                            Icons.lock_outline,
                            color: Colors.grey,
                          ),
                        )),
                    CustomTextform(
                      validator: (val) {
                        return validVlues("lastName", 4, 25, val!);
                      },
                      controller: controller.gender,
                      lableText: "labelgender".tr,
                      hintText: "hintGender".tr,
                      keyboardType: TextInputType.name,
                      isSecure: false,
                      suffix: const Icon(
                        Icons.male_rounded,
                        color: Colors.grey,
                      ),
                    ),
                    CustomTextform(
                      validator: (val) {},
                      controller: controller.address,
                      lableText: "labelAddress".tr,
                      hintText: "hintAddress".tr,
                      keyboardType: TextInputType.name,
                      isSecure: false,
                      suffix: const Icon(
                        Icons.map,
                        color: Colors.grey,
                      ),
                    ),
                    CustomTextform(
                      validator: (val) {},
                      controller: controller.code,
                      lableText: "labelcode".tr,
                      hintText: "hintCode".tr,
                      keyboardType: TextInputType.name,
                      isSecure: false,
                      suffix: const Icon(
                        Icons.code,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomButton(
                  text: "SignUpBTN".tr,
                  onPressed: () {
                    controller.signUp();
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
                      text: "SignInBTN".tr,
                      onPressed: () {
                        controller.goToSigninScreen();
                      },
                      color: Colors.blue,
                    )
                  ],
                )
              ],
            ),
          );
        }),
      ),
    );
  }
}
