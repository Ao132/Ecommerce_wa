import 'package:get/get.dart';
import 'package:flutter/widgets.dart';
import 'package:ecom_wael_hamza/core/constants/routes_names.dart';

abstract class ResetPasswordController extends GetxController {
  resetpassword();
  goToSuccessReset();
}

class ResetPasswordControllerImpl extends ResetPasswordController {
  late TextEditingController password;
  late TextEditingController repassword;

  @override
  resetpassword() {}

  @override
  goToSuccessReset() {
    Get.toNamed(AppRouteName.verifyCode);
  }

  @override
  void onInit() {
    password = TextEditingController();
    repassword = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    password.dispose();
    repassword.dispose();
    super.dispose();
  }
}
