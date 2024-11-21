import 'package:e_commerce_app/controller/Auth/otp_controller.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';

import '../../../widgets/auth/intro_widget.dart';

class SignUpOtpScreen extends StatelessWidget {
  const SignUpOtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    OtpControllerImpl controller = Get.put(OtpControllerImpl());
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "title otp".tr,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 100,
          ),
          IntroWidget(
            headText: "Headline otp".tr,
            bodyText: "TextLine otp".tr,
          ),
          OTPTextField(
            onChanged: (value) {},
            controller: controller.codeVerfy,
            spaceBetween: 1,
            length: 5,
            width: MediaQuery.of(context).size.width,
            fieldWidth: 70,
            style: const TextStyle(fontSize: 17, color: Colors.black),
            textFieldAlignment: MainAxisAlignment.spaceAround,
            fieldStyle: FieldStyle.underline,
            onCompleted: (pin) {
              if (kDebugMode) {
                print("Completed: $pin");
              }
              controller.goToSuccessSignUp();
            },
          ),
          const SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}
