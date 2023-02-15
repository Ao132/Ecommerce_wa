import 'package:ecom_wael_hamza/controller/auth/signup%20controller/success_signup_controller.dart';
import 'package:ecom_wael_hamza/core/constants/app_colors.dart';
import 'package:ecom_wael_hamza/view/widgets/auth/custom_button_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SuccessSignUp extends StatelessWidget {
  const SuccessSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    SuccessSignUpControllerImpl controller = Get.put(SuccessSignUpControllerImpl());
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(width * .1, height * .07, width * .09, 0),
        child: Column(children: [
          const Icon(
            Icons.check_circle_outline,
            size: 200,
            color: AppColors.primaryColor,
          ),
          SizedBox(height: height * .02),
          Text("successtitle_signup".tr, style: Theme.of(context).textTheme.displayLarge!.copyWith(fontSize: 30)),
          const Spacer(),
          SizedBox(
            width: double.infinity,
            child: CustomButtonAuth(
                text: "signin",
                onPressed: () {
                  controller.goToSignIn();
                }),
          ),
          const SizedBox(height: 30)
        ]),
      ),
    );
  }
}
