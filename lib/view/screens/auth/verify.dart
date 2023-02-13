import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:ecom_wael_hamza/core/constants/app_colors.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:ecom_wael_hamza/controller/auth/verify_controller.dart';
import 'package:ecom_wael_hamza/view/widgets/auth/custom_title_auth.dart';
import 'package:ecom_wael_hamza/view/widgets/auth/custom_subtitle_auth.dart';

class VerifyCode extends StatelessWidget {
  const VerifyCode({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    VerifyControllerImpl controller = Get.put(VerifyControllerImpl());
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
                //set to true to show as box or false to show as dash
                showFieldAsBox: false,
                //runs when a code is typed in
                onCodeChanged: (String code) {
                  //handle validation or checks here
                },
                //runs when every textfield is filled
                onSubmit: (String verificationCode) {
                  controller.goToResetPassword();
                }, // end onSubmit
              ),
            ],
          )),
    );
  }
}
