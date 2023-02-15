import 'package:get/get.dart';
import 'package:ecom_wael_hamza/core/constants/routes_names.dart';

abstract class SuccessResetPasswordController extends GetxController {
  goToSignIn();
}

class SuccessResetPasswordControllerImpl extends SuccessResetPasswordController {
  @override
  goToSignIn() {
    Get.offNamed(AppRouteName.signIn);
  }
}
