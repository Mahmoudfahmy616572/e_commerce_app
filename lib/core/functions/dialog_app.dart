import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<bool> popUpAlert() {
  Get.defaultDialog(
      contentPadding: const EdgeInsets.all(25),
      title: "popUpAlert 1".tr,
      titleStyle: TextStyle(color: Colors.red[200]),
      middleText: "popUpAlert 2".tr,
      actions: [
        ElevatedButton(
          style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(Colors.grey[400])),
          onPressed: () {
            Get.back();
          },
          child: Text(
            "popUpAlert 3".tr,
            style: const TextStyle(color: Colors.black, fontSize: 18),
          ),
        ),
        ElevatedButton(
          style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(Colors.grey[400])),
          onPressed: () {
            exit(0);
          },
          child: Text(
            "popUpAlert 4".tr,
            style: const TextStyle(color: Colors.black, fontSize: 18),
          ),
        ),
      ]);
  return Future.value(true);
}
