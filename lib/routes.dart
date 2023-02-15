import 'package:get/get.dart';
import 'package:ecom_wael_hamza/view/screens/language.dart';
import 'package:ecom_wael_hamza/view/screens/onboarding.dart';
import 'package:ecom_wael_hamza/view/screens/auth/sign_in.dart';
import 'package:ecom_wael_hamza/core/middleware/middle_ware.dart';
import 'package:ecom_wael_hamza/core/constants/routes_names.dart';
import 'package:ecom_wael_hamza/view/screens/auth/signup/sign_up.dart';
import 'package:ecom_wael_hamza/view/screens/auth/signup/verify_signup.dart';
import 'package:ecom_wael_hamza/view/screens/auth/signup/success_signup.dart';
import 'package:ecom_wael_hamza/view/screens/auth/forget%20password/verify_reset.dart';
import 'package:ecom_wael_hamza/view/screens/auth/forget%20password/success_reset.dart';
import 'package:ecom_wael_hamza/view/screens/auth/forget%20password/reset_password.dart';
import 'package:ecom_wael_hamza/view/screens/auth/forget%20password/forget_password.dart';

List<GetPage<dynamic>> routes = [

//initial route
GetPage(name: "/", page: () => const Language(),middlewares: [
  MiddleWare()
]),


/*
Auth
----
*/
//forget password

  GetPage(name: AppRouteName.forgetPassword, page: () => const ForgetPassword()),
  GetPage(name: AppRouteName.resetPassword, page: () => const ResetPassword()),
  GetPage(name: AppRouteName.verifyReset, page: () => const VerifyCodeReset()),
  GetPage(name: AppRouteName.successReset, page: () => const SuccessResetPassword()),

//sign up

  GetPage(name: AppRouteName.signUp, page: () => const SignUp()),
  GetPage(name: AppRouteName.verifySignUp, page: () => const VerifyCodeSignUp()),
  GetPage(name: AppRouteName.successSignUp, page: () => const SuccessSignUp()),

//sign in

  GetPage(name: AppRouteName.signIn, page: () => const SignIn()),

/*
Auth
----
*/

//onboarding
  GetPage(name: AppRouteName.onBoarding, page: () => const OnBoarding()),
];
