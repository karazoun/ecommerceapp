import 'package:ecommerceapp/core/constant/routesnames.dart';
import 'package:ecommerceapp/core/middleware/mymiddleware.dart';
import 'package:ecommerceapp/view/screen/auth/checkemail.dart';
import 'package:ecommerceapp/view/screen/auth/forgetpassword/forgetpassword.dart';
import 'package:ecommerceapp/view/screen/auth/forgetpassword/success_resetpassword.dart';
import 'package:ecommerceapp/view/screen/auth/login.dart';
import 'package:ecommerceapp/view/screen/auth/forgetpassword/resetpassword.dart';
import 'package:ecommerceapp/view/screen/auth/signup.dart';
import 'package:ecommerceapp/view/screen/auth/success_signup.dart';
import 'package:ecommerceapp/view/screen/auth/forgetpassword/verifycode.dart';
import 'package:ecommerceapp/view/screen/language.dart';
import 'package:ecommerceapp/view/screen/onboarding.dart';
import 'package:get/get.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(
      name: "/", page: () => const Language(), middlewares: [MyMiddleWare()]),
  GetPage(name: AppRoute.login, page: () => const Login()),
  GetPage(name: AppRoute.signUp, page: () => const SignUp()),
  GetPage(name: AppRoute.forgetPassword, page: () => const ForgetPassword()),
  GetPage(name: AppRoute.verifyCode, page: () => const VerifyCode()),
  GetPage(name: AppRoute.resetPassword, page: () => const ResetPassword()),
  GetPage(name: AppRoute.successSignUp, page: () => const SuccessSignUp()),
  GetPage(
      name: AppRoute.successResetPassword,
      page: () => const SuccessResetPassword()),
  GetPage(name: AppRoute.checkEmail, page: () => const CheckEmail()),
  GetPage(name: AppRoute.onBoarding, page: () => const OnBoarding())
];
