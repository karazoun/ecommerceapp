import 'package:ecommerceapp/controller/auth/login_controller.dart';
import 'package:ecommerceapp/core/constant/color.dart';
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
    LoginControllerImp controller = Get.put(LoginControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backGroundcolor,
        elevation: 0.0,
        title: Text('Sign In',
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(color: AppColor.grey)),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: ListView(
          children: [
            const LogoAuth(),
            const CustomTextTitleAuth(text: "Welcome Back"),
            const SizedBox(height: 10),
            const CustomTextBodyAuth(
                text:
                    "Sign In with your email and password or continue with social media"),
            const SizedBox(height: 20),
            CustomTextFormAuth(
                mycontroller: controller.email,
                hinttext: "Enter Your Email",
                labeltext: "Email",
                iconData: Icons.email_outlined),
            CustomTextFormAuth(
                mycontroller: controller.password,
                hinttext: "Enter Your Password",
                labeltext: "Password",
                iconData: Icons.lock_outlined),
            InkWell(
              onTap: () {
                controller.goToForgetPassword();
              },
              child: const Text(
                "Forget Password",
                textAlign: TextAlign.end,
              ),
            ),
            CustomButtonAuth(
              text: "Sign In",
              onPressed: () {},
            ),
            const SizedBox(height: 20),
            CustomTextSignUpOrSignIn(
              textone: "Don't have an account ? ",
              texttwo: "Sign Up",
              onTap: () {
                controller.goToSignUp();
              },
            ),
          ],
        ),
      ),
    );
  }
}
