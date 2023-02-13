import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:ecom_wael_hamza/view/widgets/auth/custom_title_auth.dart';
import 'package:ecom_wael_hamza/view/widgets/auth/custom_button_auth.dart';
import 'package:ecom_wael_hamza/view/widgets/auth/custom_subtitle_auth.dart';
import 'package:ecom_wael_hamza/view/widgets/auth/custom_text_form_auth.dart';
import 'package:ecom_wael_hamza/controller/auth/forget_password_controller.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    ForgetPasswordControllerImpl controller = Get.put(ForgetPasswordControllerImpl());
    return Scaffold(
      body: Padding(
          padding: EdgeInsets.symmetric(vertical: height * .01, horizontal: width * .08),
          child: ListView(
            children: [
              SizedBox(height: height * .07),
              CustomTitleAuth(text: 'checkemailtitle_forget'.tr),
              SizedBox(height: height * .03),
              CustomSubTitleAuth(text: 'subtitle_forget'.tr),
              SizedBox(height: height * .06),
              CustomTextFormAuth(
                controller: controller.email,
                labeltext: 'labelemail'.tr,
                hinttext: 'hintemail'.tr,
                iconData: Icons.person_outline,
              ),
              SizedBox(height: height * .04),
              CustomButtonAuth(
                  text: 'checkbutton_forget'.tr,
                  onPressed: () {
                    controller.goToVerification();
                  }),
            ],
          )),
    );
  }
}
