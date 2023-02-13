import 'package:ecom_wael_hamza/view/screens/auth/forget_password.dart';
import 'package:ecom_wael_hamza/view/screens/auth/reset_password.dart';
import 'package:ecom_wael_hamza/view/screens/auth/success_reset.dart';
import 'package:ecom_wael_hamza/view/screens/auth/success_sign_up.dart';
import 'package:ecom_wael_hamza/view/screens/auth/verify.dart';
import 'package:flutter/material.dart';
import 'package:ecom_wael_hamza/view/screens/auth/sign_in.dart';
import 'package:ecom_wael_hamza/view/screens/onboarding.dart';
import 'package:ecom_wael_hamza/view/screens/auth/sign_up.dart';
import 'package:ecom_wael_hamza/core/constants/routes_names.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRouteName.signIn: (context) => SignIn(),
  AppRouteName.signUp: (context) => SignUp(),
  AppRouteName.forgetPassword: (context) => ForgetPassword(),
  AppRouteName.resetPassword: (context) => const ResetPassword(),
  AppRouteName.verifyCode: (context) => const VerifyCode(),
  AppRouteName.successSignUp: (context) => const SuccessResetPassword(),
  AppRouteName.successReset: (context) => const SuccessSignUp(),
  AppRouteName.onBoarding: (context) => const OnBoarding()
};
