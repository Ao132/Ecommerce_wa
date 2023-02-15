import 'dart:developer';
import 'package:get/get.dart';
import 'package:flutter/widgets.dart';
import 'package:ecom_wael_hamza/core/constants/routes_names.dart';

abstract class SignInController extends GetxController {
  login();
  goToSignUp();
  goToForgetPassword();
}

class SignInControllerImpl extends SignInController {
  GlobalKey<FormState> formState = GlobalKey<FormState>();
  late TextEditingController email;
  late TextEditingController password;
  bool isShowPassword = true;

  @override
  login() {
    if (formState.currentState!.validate()) {
      log('Valid');
    } else {
      log('Not Valid');
    }
  }

  @override
  goToSignUp() {
    Get.offNamed(AppRouteName.signUp);
  }

  @override
  goToForgetPassword() {
    Get.toNamed(AppRouteName.forgetPassword);
  }

  showPassword() {
    isShowPassword = isShowPassword == true ? false : true;
    update();
  }

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    super.dispose();
    email.dispose();
    password.dispose();
  }
}
