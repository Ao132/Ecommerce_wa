
import 'package:ecom_wael_hamza/core/constants/routes_names.dart';
import 'package:ecom_wael_hamza/view/screens/auth/login.dart';
import 'package:ecom_wael_hamza/view/screens/onboarding.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRouteName.login: (context) =>  Login(),
  AppRouteName.onBoarding: (context) => const OnBoarding()
};