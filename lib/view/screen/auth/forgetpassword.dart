import 'package:ecommerceapp/controller/auth/forgetpassword_controller.dart';
import 'package:ecommerceapp/core/constant/color.dart';
import 'package:ecommerceapp/view/widget/auth/custombuttonauth.dart';
import 'package:ecommerceapp/view/widget/auth/customtextformauth.dart';
import 'package:ecommerceapp/view/widget/auth/customtexttitleauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    ForgetPasswordControllerImp controller =
        Get.put(ForgetPasswordControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backGroundcolor,
        elevation: 0.0,
        title: Text("Forget Password",
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(color: AppColor.grey)),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: ListView(
          children: [
            const CustomTextTitleAuth(text: "Email checking"),
            const SizedBox(height: 40),
            CustomTextFormAuth(
                mycontroller: controller.email,
                hinttext: "Enter Your Eamil",
                labeltext: "Email",
                iconData: Icons.email_outlined),
            const SizedBox(height: 15),
            CustomButtonAuth(
              text: "Check",
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
