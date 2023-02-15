import 'package:ecom_wael_hamza/core/constants/routes_names.dart';
import 'package:ecom_wael_hamza/core/services/services.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class MiddleWare extends GetMiddleware {
  @override
  int? get priority => 1;

  MyServices myServices = Get.find();

  @override
  RouteSettings? redirect(String? route) {
    if (myServices.sharedPreferences.getString('onboarding') == '1') {  
      return const RouteSettings(name: AppRouteName.signIn) ;
    }
    return null;
  }
}
