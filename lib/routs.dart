import 'package:e_commerce_app/core/middleware/middleware.dart';
import 'package:e_commerce_app/test.dart';
import 'package:e_commerce_app/view/screens/Auth/forgotpassword/check_email_reset_password.dart';
import 'package:e_commerce_app/view/screens/Auth/forgotpassword/forgot_password.dart';
import 'package:e_commerce_app/view/screens/Auth/forgotpassword/otp_forgt_screen.dart';
import 'package:e_commerce_app/view/screens/Auth/forgotpassword/reset_password.dart';
import 'package:e_commerce_app/view/screens/Auth/login.dart';
import 'package:e_commerce_app/view/screens/Auth/signuP/signup.dart';
import 'package:e_commerce_app/view/screens/Auth/signuP/success_signup.dart';
import 'package:e_commerce_app/view/screens/Auth/signuP/verfy_signup.dart';
import 'package:e_commerce_app/view/screens/home.dart';
import 'package:e_commerce_app/view/screens/language.dart';
import 'package:e_commerce_app/view/screens/onboarding.dart';
import 'package:get/get.dart';

import 'core/constants/app_route.dart';
import 'view/screens/Auth/forgotpassword/success_forget_password.dart';
import 'view/screens/Auth/signuP/otp_signup.dart';

List<GetPage<dynamic>>? getPages = [
  GetPage(name: "/", page: () => const Language(), middlewares: [
    MyMiddleWare(),
  ]),
  GetPage(name: AppRouteName.home, page: () => Home()),
  GetPage(name: AppRouteName.test, page: () => const Test()),
  GetPage(name: AppRouteName.login, page: () => Login()),
  GetPage(
      name: AppRouteName.checkEmailResetPassword,
      page: () => CheckEmailResetPassword()),
  GetPage(name: AppRouteName.forgotOtp, page: () => const ForgotOtpScreen()),
  GetPage(name: AppRouteName.signUpOtp, page: () => const SignUpOtpScreen()),
  GetPage(
      name: AppRouteName.forgotPassword, page: () => const ForgotPassword()),
  GetPage(name: AppRouteName.resetPassword, page: () => const ResetPassword()),
  GetPage(name: AppRouteName.signUp, page: () => const Signup()),
  GetPage(
      name: AppRouteName.verifySignup, page: () => const VerifyEmailSignUp()),
  GetPage(name: AppRouteName.successSignUp, page: () => const SuccessSignup()),
  GetPage(
      name: AppRouteName.successResetPassword,
      page: () => const SuccessResetPassword()),
  GetPage(name: AppRouteName.onboarding, page: () => const Onboarding()),
];
// Map<String, Widget Function(BuildContext)> routes = {
//   AppRouteName.login: (context) => const Login(),
//   AppRouteName.forgotOtp: (context) => const ForgotOtpScreen(),
//   AppRouteName.signUpOtp: (context) => const SignUpOtpScreen(),
//   AppRouteName.forgotPassword: (context) => const ForgotPassword(),
//   AppRouteName.resetPassword: (context) => const ResetPassword(),
//   AppRouteName.signUp: (context) => const Signup(),
//   AppRouteName.verifySignup: (context) => const VerifyEmailSignUp(),
//   AppRouteName.successSignUp: (context) => const SuccessSignup(),
//   AppRouteName.successResetPassword: (context) => const SuccessResetPassword(),
//   AppRouteName.onboarding: (context) => const Onboarding()
// };
