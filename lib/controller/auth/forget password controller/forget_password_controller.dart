import 'dart:developer';
import 'package:get/get.dart';
import 'package:flutter/widgets.dart';
import 'package:ecom_wael_hamza/core/constants/routes_names.dart';

abstract class ForgetPasswordController extends GetxController {
  checkEmail();
  goToVerification();
}

class ForgetPasswordControllerImpl extends ForgetPasswordController {
  late TextEditingController email;
  GlobalKey<FormState> formState = GlobalKey<FormState>();



 @override
  checkEmail() {
 
  }

  @override
  goToVerification() {


 if (formState.currentState!.validate()) {
    Get.toNamed(AppRouteName.verifyReset);

    }else{
      log('Not Valid');
      
    }

  }

  @override
  void onInit() {
    email = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    super.dispose();
  }
  
 
}
