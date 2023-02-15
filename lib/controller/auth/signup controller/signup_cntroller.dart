import 'dart:developer';
import 'package:get/get.dart';
import 'package:flutter/widgets.dart';
import 'package:ecom_wael_hamza/core/constants/routes_names.dart';

abstract class SignUpController extends GetxController {
  signUp();
  goToSignIn();
}

class SignUpControllerImpl extends SignUpController {
  GlobalKey<FormState> formState = GlobalKey<FormState>();


  late TextEditingController userName;
  late TextEditingController email;
  late TextEditingController phone;
  late TextEditingController password;

  @override
  signUp() {

    if (formState.currentState!.validate()) {
    Get.offNamed(AppRouteName.verifySignUp);

    }else{
      log('Not Valid');
      
    }


  }

  @override
  goToSignIn() {
    Get.offNamed(AppRouteName.signIn);
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
