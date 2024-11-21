import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EFullScreenLoader extends GetxController
    with GetTickerProviderStateMixin {
  static void openLoadingDialog(
    var animatedloading,
    String text,
  ) {
    showDialog(
        context: Get.overlayContext!,
        barrierDismissible: false,
        builder: (_) => PopScope(
            canPop: false,
            child: SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: Column(
                children: [
                  const SizedBox(
                    height: 250,
                  ),
                  animatedloading,
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    text,
                    style: Theme.of(Get.context!).textTheme.bodyLarge,
                  )
                ],
              ),
            )));
  }

  static stopDialog() {
    Navigator.of(Get.overlayContext!).pop();
  }
}
