import 'package:ecommerceapp/controller/onboarding_controller.dart';
import 'package:ecommerceapp/view/widget/onboarding/custombutton.dart';
import 'package:ecommerceapp/view/widget/onboarding/customslider.dart';
import 'package:ecommerceapp/view/widget/onboarding/dotscontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImp());
    return Scaffold(
        body: SafeArea(
            child: Column(
      children: [
        const Expanded(
          flex: 3,
          child: CustomSliderOnBoarding(),
        ),
        Expanded(
            flex: 1,
            child: Column(
              children: const [
                CustomDotControllerOnBoarding(),
                Spacer(flex: 2),
                CustomButtonOnBoarding()
              ],
            ))
      ],
    )));
  }
}
