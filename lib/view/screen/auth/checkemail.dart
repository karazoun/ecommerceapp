import 'package:ecommerceapp/controller/auth/CheckEmail_controller.dart';
import 'package:ecommerceapp/core/constant/color.dart';
import 'package:ecommerceapp/view/widget/auth/customtextbodyauth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';

class CheckEmail extends StatelessWidget {
  const CheckEmail({super.key});

  @override
  Widget build(BuildContext context) {
    CheckEmailControllerImp controller = Get.put(CheckEmailControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backGroundcolor,
        elevation: 0.0,
        title: Text("30".tr,
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(color: AppColor.authcolor)),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: ListView(
          children: [
            // const CustomTextTitleAuth(text: ""),
            const SizedBox(height: 15),
            CustomTextBodyAuth(text: "31".tr),
            const SizedBox(height: 40),
            OtpTextField(
              autoFocus: true,
              fieldWidth: 50,
              numberOfFields: 4,
              focusedBorderColor: AppColor.authcolor,
              cursorColor: AppColor.authtextcolor,
              //set to true to show as box or false to show as dash
              showFieldAsBox: true,
              //runs when a code is typed in
              onCodeChanged: (String code) {
                //handle validation or checks here
              },
              //runs when every textfield is filled
              onSubmit: (String verificationCode) {
                controller.goToSuccessSignUp();
              }, // end onSubmit
            ),
            // const SizedBox(height: 15),
            // CustomButtonAuth(
            //   text: "28".tr,
            //   onPressed: () {
            //     controller.goToSuccessSignUp();
            //   },
            // ),
          ],
        ),
      ),
    );
  }
}
