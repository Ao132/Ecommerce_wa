import 'package:get/get.dart';
import 'package:flutter/widgets.dart';
import 'package:ecom_wael_hamza/core/constants/routes_names.dart';

abstract class ForgetPasswordController extends GetxController {
  checkEmail();
  goToVerification();
}

class ForgetPasswordControllerImpl extends ForgetPasswordController {
  late TextEditingController email;


 @override
  checkEmail() {
 
  }

  @override
  goToVerification() {
    Get.toNamed(AppRouteName.verifyCode);
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
