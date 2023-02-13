import 'package:get/get.dart';
import 'package:flutter/widgets.dart';
import 'package:ecom_wael_hamza/core/constants/routes_names.dart';

abstract class LoginController extends GetxController {
  login();
  goToSignUp();
  goToForgetPassword();
}

class LoginControllerImpl extends LoginController {
  late TextEditingController email;
  late TextEditingController password;

  @override
  login() {}

  @override
  goToSignUp() {
    Get.toNamed(AppRouteName.signUp);
  }

  @override
  goToForgetPassword() {
    Get.toNamed(AppRouteName.forgetPassword);
  }

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
  }
}
