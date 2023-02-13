import 'package:get/get.dart';
import 'package:flutter/widgets.dart';
import 'package:ecom_wael_hamza/core/constants/routes_names.dart';

abstract class SignUpController extends GetxController {
  signUp();
  goToSignIn();
}

class SignUpControllerImpl extends SignUpController {
  late TextEditingController userName;
  late TextEditingController email;
  late TextEditingController phone;
  late TextEditingController password;

  @override
  signUp() {}

  @override
  goToSignIn() {
    Get.toNamed(AppRouteName.signIn);
  }

  @override
  void onInit() {
    userName = TextEditingController();
    email = TextEditingController();
    phone = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    userName.dispose();
    email.dispose();
    phone.dispose();
    password.dispose();
    super.dispose();
  }
}
