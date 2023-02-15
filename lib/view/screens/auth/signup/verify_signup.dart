import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:ecom_wael_hamza/core/constants/app_colors.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:ecom_wael_hamza/view/widgets/auth/custom_title_auth.dart';
import 'package:ecom_wael_hamza/view/widgets/auth/custom_subtitle_auth.dart';
import 'package:ecom_wael_hamza/controller/auth/signup%20controller/verify_signup_controller.dart';

class VerifyCodeSignUp extends StatelessWidget {
  const VerifyCodeSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    VerifySignUpControllerImpl controller = Get.put(VerifySignUpControllerImpl());
    return Scaffold(
      body: Padding(
          padding: EdgeInsets.symmetric(vertical: height * .01, horizontal: width * .08),
          child: ListView(
            children: [



              SizedBox(height: height * .07),
              CustomTitleAuth(text: 'checkcodetitle_verify'.tr),
              SizedBox(height: height * .03),
              CustomSubTitleAuth(text: 'subtitle_verify'.tr),
              SizedBox(height: height * .06),
              OtpTextField(
                fieldWidth: 40,
                cursorColor: AppColors.primaryColor,
                enabledBorderColor: AppColors.grey,
                focusedBorderColor: AppColors.primaryColor,
                clearText: true,
                numberOfFields: 5,
                showFieldAsBox: false,
                onCodeChanged: (String code) {},
                onSubmit: (String verificationCode) {
                  controller.goToSuccessSignUp();
                },
              ),
            ],
          )),
    );
  }
}
