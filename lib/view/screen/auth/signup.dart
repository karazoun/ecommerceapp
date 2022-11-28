import 'package:ecommerceapp/controller/auth/signup_controller.dart';
import 'package:ecommerceapp/core/constant/color.dart';
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
    SignUpControllerImp controller = Get.put(SignUpControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backGroundcolor,
        elevation: 0.0,
        title: Text('Sign Up',
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(color: AppColor.grey)),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: ListView(
          children: [
            const CustomTextTitleAuth(text: "Welcome Back"),
            const SizedBox(height: 10),
            const CustomTextBodyAuth(
                text:
                    "Sign Up with your email and password or continue with social media"),
            const SizedBox(height: 20),
            CustomTextFormAuth(
                mycontroller: controller.username,
                hinttext: "Enter Your Username",
                labeltext: "Username",
                iconData: Icons.person_outline),
            CustomTextFormAuth(
                mycontroller: controller.email,
                hinttext: "Enter Your Eamil",
                labeltext: "Email",
                iconData: Icons.email_outlined),
            CustomTextFormAuth(
                mycontroller: controller.phone,
                hinttext: "Enter Your Phone",
                labeltext: "Phone",
                iconData: Icons.phone_outlined),
            CustomTextFormAuth(
                mycontroller: controller.password,
                hinttext: "Enter Your Password",
                labeltext: "Password",
                iconData: Icons.lock_outlined),
            const SizedBox(height: 20),
            CustomButtonAuth(
              text: "Sign Up",
              onPressed: () {},
            ),
            const SizedBox(height: 20),
            CustomTextSignUpOrSignIn(
              textone: "Already have an account ? ",
              texttwo: "Sign In",
              onTap: () {
                controller.goToSignIn();
              },
            ),
          ],
        ),
      ),
    );
  }
}
