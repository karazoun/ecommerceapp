import 'dart:io';

import 'package:ecommerceapp/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<bool> alertExitApp() {
  Get.defaultDialog(
    title: "45".tr,
    middleText: "46".tr,
    actions: [
      ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColor.alertbtncolor,
          fixedSize: const Size(80, 10),
        ),
        onPressed: () {
          exit(0);
        },
        child: Text(
          "47".tr,
        ),
      ),
      ElevatedButton(
          style: ElevatedButton.styleFrom(
            fixedSize: const Size(80, 10),
          ),
          onPressed: () {
            Get.back();
          },
          child: Text("48".tr)),
    ],
  );
  return Future.value(true);
}
