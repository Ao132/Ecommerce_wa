import 'package:get/get.dart';
import 'package:ecom_wael_hamza/core/constants/routes_names.dart';

abstract class SuccessSignUpController extends GetxController {
  goToSignIn();
}

class SuccessSignUpControllerImpl extends SuccessSignUpController {
  @override
  goToSignIn() {
    Get.offAllNamed(AppRouteName.signIn);

  }
}
