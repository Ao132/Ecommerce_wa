import 'package:ecom_wael_hamza/core/functions/validate_inputs.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:ecom_wael_hamza/controller/auth/forget%20password%20controller/reset_controller.dart';
import 'package:ecom_wael_hamza/view/widgets/auth/custom_title_auth.dart';
import 'package:ecom_wael_hamza/view/widgets/auth/custom_button_auth.dart';
import 'package:ecom_wael_hamza/view/widgets/auth/custom_subtitle_auth.dart';
import 'package:ecom_wael_hamza/view/widgets/auth/custom_text_form_auth.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    ResetPasswordControllerImpl controller = Get.put(ResetPasswordControllerImpl());
    return Scaffold(
      body: Padding(
          padding: EdgeInsets.symmetric(vertical: height * .01, horizontal: width * .08),
          child: ListView(
            children: [
              SizedBox(height: height * .07),
              CustomTitleAuth(text: 'resettitle_reset'.tr),
              SizedBox(height: height * .03),
              CustomSubTitleAuth(text: 'subtitle_reset'.tr),
              SizedBox(height: height * .06),
              CustomTextFormAuth(
                isPhone: false,
                validator: (val){
                    return validateInput(val!, 5, 20, 'password');
                },
                controller: controller.password,
                labeltext: 'labelpassword'.tr,
                hinttext: 'hintpassword'.tr,
                iconData: Icons.email_outlined,
              ),
              SizedBox(height: height * .03),
              CustomTextFormAuth(
                isPhone: false,
                validator: (val){
                   return validateInput(val!, 5, 20, 'password');
                },
                controller: controller.repassword,
                labeltext: 'labelpassword'.tr,
                hinttext: 'hintpassword_reset'.tr,
                iconData: Icons.lock_outline,
              ),
              SizedBox(height: height * .03),
              CustomButtonAuth(
                  text: 'savebutton_reset'.tr,
                  onPressed: () {
                    controller.goToSuccessReset();
                  }),
            ],
          )),
    );
  }
}
