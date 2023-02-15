import 'package:get/get.dart';
import 'package:ecom_wael_hamza/core/constants/routes_names.dart';

abstract class VerifyResetController extends GetxController {
  checkCode();
  goToResetPassword();
}

class VerifyResetControllerImpl extends VerifyResetController {
  late String verifyCode;

  @override
  checkCode() {}

  @override
  goToResetPassword() {
    Get.toNamed(AppRouteName.resetPassword);
  }
}
