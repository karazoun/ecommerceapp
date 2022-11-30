import 'package:ecommerceapp/controller/auth/signup_controller.dart';
import 'package:ecommerceapp/core/constant/color.dart';
import 'package:ecommerceapp/core/functions/alertexitapp.dart';
import 'package:ecommerceapp/core/functions/validinput.dart';
import 'package:ecommerceapp/view/widget/auth/custombuttonauth.dart';
import 'package:ecommerceapp/view/widget/auth/customtextbodyauth.dart';
import 'package:ecommerceapp/view/widget/auth/customtextformauth.dart';
import 'package:ecommerceapp/view/widget/auth/customtexttitleauth.dart';
import 'package:ecommerceapp/view/widget/auth/textsignup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => SignUpControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backGroundcolor,
        elevation: 0.0,
        title: Text("19".tr,
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(color: AppColor.grey)),
      ),
      body: GetBuilder<SignUpControllerImp>(
        builder: (controller) => WillPopScope(
          onWillPop: alertExitApp,
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
            child: Form(
              key: controller.formstate,
              child: ListView(
                children: [
                  CustomTextTitleAuth(text: "20".tr),
                  const SizedBox(height: 10),
                  CustomTextBodyAuth(text: "21".tr),
                  const SizedBox(height: 20),
                  CustomTextFormAuth(
                      isNumber: false,
                      valid: (val) {
                        return validInput(val!, 2, 10, "username");
                      },
                      mycontroller: controller.username,
                      hinttext: "23".tr,
                      labeltext: "Username",
                      iconData: Icons.person_outline),
                  CustomTextFormAuth(
                      isNumber: false,
                      valid: (val) {
                        return validInput(val!, 5, 30, "email");
                      },
                      mycontroller: controller.email,
                      hinttext: "14".tr,
                      labeltext: "Email",
                      iconData: Icons.email_outlined),
                  CustomTextFormAuth(
                      isNumber: true,
                      valid: (val) {
                        return validInput(val!, 10, 13, "phone");
                      },
                      mycontroller: controller.phone,
                      hinttext: "22".tr,
                      labeltext: "Phone",
                      iconData: Icons.phone_outlined),
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
                      hinttext: "15".tr,
                      labeltext: "Password",
                      iconData: Icons.remove_red_eye_outlined),
                  const SizedBox(height: 20),
                  CustomButtonAuth(
                    text: "19".tr,
                    onPressed: () {
                      controller.signUp();
                    },
                  ),
                  const SizedBox(height: 20),
                  CustomTextSignUpOrSignIn(
                    textone: "24".tr,
                    texttwo: "11".tr,
                    onTap: () {
                      controller.goToSignIn();
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
