import 'package:ecommerceapp/controller/onboarding_controller.dart';
import 'package:ecommerceapp/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomButtonOnBoarding extends GetView<OnBoardingControllerImp> {
  const CustomButtonOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 40),
      height: 40,
      child: MaterialButton(
          onPressed: () {
            controller.next();
          },
          color: AppColor.primaryColor,
          textColor: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 0),
          child: const Text("Continue")),
    );
  }
}
