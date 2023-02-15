import 'package:get/get.dart';
import 'package:ecom_wael_hamza/core/constants/routes_names.dart';

abstract class VerifySignUpController extends GetxController {
  checkCode();
  goToSuccessSignUp();
}

class VerifySignUpControllerImpl extends VerifySignUpController {
  late String verifyCode;

  @override
  checkCode() {}

  @override
  goToSuccessSignUp() {
    Get.toNamed(AppRouteName.successSignUp);
  }
}
