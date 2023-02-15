import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:ecom_wael_hamza/core/constants/app_colors.dart';
import 'package:ecom_wael_hamza/view/widgets/auth/custom_button_auth.dart';
import 'package:ecom_wael_hamza/controller/auth/forget%20password%20controller/success_reset_controller.dart';

class SuccessResetPassword extends StatelessWidget {
  const SuccessResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    SuccessResetPasswordControllerImpl controller = Get.put(SuccessResetPasswordControllerImpl());
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(width * .1, height * .07, width * .1, 0), //width * .1, height * .07, width * .09, 0
        child: Column(children: [
          const Icon(
            Icons.check_circle_outline,
            size: 200,
            color: AppColors.primaryColor,
          ),
          SizedBox(height: height * .02),
          Text(
              textAlign: TextAlign.center,
              "successtitle_reset".tr,
              style: Theme.of(context).textTheme.displayLarge!.copyWith(fontSize: 30)),
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
