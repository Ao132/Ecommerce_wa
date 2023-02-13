import 'package:get/get.dart';
import 'package:ecom_wael_hamza/core/constants/routes_names.dart';

abstract class VerifyController extends GetxController {
  checkCode();
  goToResetPassword();
}

class VerifyControllerImpl extends VerifyController {
  late String verifyCode;

  @override
  checkCode() {}

  @override
  goToResetPassword() {
    Get.toNamed(AppRouteName.resetPassword);
  }
}
