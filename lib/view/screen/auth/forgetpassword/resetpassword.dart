import 'package:ecommerceapp/controller/auth/resetpassword_controller.dart';
import 'package:ecommerceapp/core/constant/color.dart';
import 'package:ecommerceapp/core/functions/validinput.dart';
import 'package:ecommerceapp/view/widget/auth/custombuttonauth.dart';
import 'package:ecommerceapp/view/widget/auth/customtextformauth.dart';
import 'package:ecommerceapp/view/widget/auth/customtexttitleauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => ResetPasswordControllerImp());
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: AppColor.backGroundcolor,
          elevation: 0.0,
          title: Text("32".tr,
              style: Theme.of(context)
                  .textTheme
                  .headline1!
                  .copyWith(color: AppColor.grey)),
        ),
        body: GetBuilder<ResetPasswordControllerImp>(
          builder: (controller) => Container(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
            child: Form(
              key: controller.formstate,
              child: ListView(
                children: [
                  CustomTextTitleAuth(text: "33".tr),
                  const SizedBox(height: 40),
                  CustomTextFormAuth(
                      onTapIcon: () {
                        controller.showPassword();
                      },
                      obsecureText: controller.isShowPassword,
                      isNumber: false,
                      valid: (val) {
                        return validInput(val!, 5, 20, "password");
                      },
                      mycontroller: controller.password,
                      hinttext: "34".tr,
                      labeltext: "Password",
                      iconData: Icons.remove_red_eye_outlined),
                  CustomTextFormAuth(
                      onTapIcon: () {
                        controller.showPassword();
                      },
                      obsecureText: controller.isShowPassword,
                      isNumber: false,
                      valid: (val) {
                        return validInput(val!, 5, 20, "password");
                      },
                      mycontroller: controller.repassword,
                      hinttext: "35".tr,
                      labeltext: "RePassword",
                      iconData: Icons.remove_red_eye_outlined),
                  const SizedBox(height: 15),
                  CustomButtonAuth(
                    text: "36".tr,
                    onPressed: () {
                      controller.goToSuccessResetPassword();
                    },
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
