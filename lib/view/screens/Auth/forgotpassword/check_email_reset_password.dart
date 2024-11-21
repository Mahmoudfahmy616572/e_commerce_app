import 'package:e_commerce_app/controller/Auth/check_email_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/constants/image_assets.dart';
import '../../../widgets/checkEmail/custom_btn.dart';

// ignore: must_be_immutable
class CheckEmailResetPassword extends StatelessWidget {
  CheckEmailResetPassword({super.key});
  CheckEmailControllerimp controller = Get.put(CheckEmailControllerimp());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              flex: 3,
              child: Column(
                children: [
                  const SizedBox(
                    height: 150,
                  ),
                  Image.asset(
                    AppImageAssets.checkEmailIamge,
                    fit: BoxFit.contain,
                    height: 300,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    controller.user?.email ?? "loading Email...".tr,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
              )),
          Expanded(
            flex: 2,
            child: Column(
              children: [
                Text(
                  "Password Reset Email Send".tr,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    "Your account security is Our Priority we've send you  \na  secure Link To safity Change your password and \n keep your account protected "
                        .tr,
                    style: Theme.of(context).textTheme.bodySmall,
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(
                  height: 100,
                ),
                CustomBtnCheckEmail(
                  onPressed: () {
                    controller.gotoSuccessResetPassword();
                  },
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
