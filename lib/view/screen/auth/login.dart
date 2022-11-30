import 'package:ecommerceapp/controller/auth/login_controller.dart';
import 'package:ecommerceapp/core/constant/color.dart';
import 'package:ecommerceapp/core/functions/alertexitapp.dart';
import 'package:ecommerceapp/core/functions/validinput.dart';
import 'package:ecommerceapp/view/widget/auth/custombuttonauth.dart';
import 'package:ecommerceapp/view/widget/auth/customtextbodyauth.dart';
import 'package:ecommerceapp/view/widget/auth/customtextformauth.dart';
import 'package:ecommerceapp/view/widget/auth/customtexttitleauth.dart';
import 'package:ecommerceapp/view/widget/auth/logoauth.dart';
import 'package:ecommerceapp/view/widget/auth/textsignup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => LoginControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backGroundcolor,
        elevation: 0.0,
        title: Text("11".tr,
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(color: AppColor.grey)),
      ),
      body: GetBuilder<LoginControllerImp>(
        builder: (controller) => WillPopScope(
          onWillPop: alertExitApp,
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
            child: Form(
              key: controller.formstate,
              child: ListView(
                children: [
                  const LogoAuth(),
                  CustomTextTitleAuth(text: "12".tr),
                  const SizedBox(height: 10),
                  CustomTextBodyAuth(text: "13".tr),
                  const SizedBox(height: 20),
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
                      obsecureText: controller.isShowPassword,
                      onTapIcon: () {
                        controller.showPassword();
                      },
                      isNumber: false,
                      valid: (val) {
                        return validInput(val!, 5, 20, "password");
                      },
                      mycontroller: controller.password,
                      hinttext: "15".tr,
                      labeltext: "Password",
                      iconData: Icons.remove_red_eye_outlined),
                  InkWell(
                    onTap: () {
                      controller.goToForgetPassword();
                    },
                    child: Text(
                      "16".tr,
                      textAlign: TextAlign.end,
                      style: const TextStyle(
                        color: AppColor.authtextcolor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  CustomButtonAuth(
                    text: "17".tr,
                    onPressed: () {
                      controller.login();
                    },
                  ),
                  const SizedBox(height: 20),
                  CustomTextSignUpOrSignIn(
                    textone: "18".tr,
                    texttwo: "19".tr,
                    onTap: () {
                      controller.goToSignUp();
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
