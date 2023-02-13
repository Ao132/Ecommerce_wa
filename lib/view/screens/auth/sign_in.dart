import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:ecom_wael_hamza/view/screens/auth/sign_up.dart';
import 'package:ecom_wael_hamza/core/constants/app_colors.dart';
import 'package:ecom_wael_hamza/view/widgets/auth/logo_auth.dart';
import 'package:ecom_wael_hamza/controller/auth/sign_in_controller.dart';
import 'package:ecom_wael_hamza/view/widgets/auth/custom_title_auth.dart';
import 'package:ecom_wael_hamza/view/widgets/auth/custom_button_auth.dart';
import 'package:ecom_wael_hamza/view/widgets/auth/custom_subtitle_auth.dart';
import 'package:ecom_wael_hamza/view/widgets/auth/custom_text_form_auth.dart';

class SignIn extends StatelessWidget {
  SignIn({super.key});
  // MyServices myServices = Get.find();

  @override
  Widget build(BuildContext context) {
    LoginControllerImpl controller = Get.put(LoginControllerImpl());
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'signin'.tr,
            style: Theme.of(context).textTheme.displayLarge!.copyWith(fontSize: 20, color: AppColors.grey),
          ),
          elevation: 0.0,
          backgroundColor: AppColors.backgroundcolor,
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: height * .01, horizontal: width * .08),
          child: ListView(
            children: [
              const LogoAuth(),
              SizedBox(height: height * .01),
              CustomTitleAuth(text: '${'welcome_message'.tr} !'),
              SizedBox(height: height * .02),
              CustomSubTitleAuth(text: 'subtitle_signin'.tr),
              SizedBox(height: height * .04),
              CustomTextFormAuth(
                controller: controller.email,
                labeltext: 'labelemail'.tr,
                hinttext: 'hintemail'.tr,
                iconData: Icons.email_outlined,
              ),
              SizedBox(height: height * .03),
              CustomTextFormAuth(
                controller: controller.password,
                labeltext: 'labelpassword'.tr,
                hinttext: 'hintpassword'.tr,
                iconData: Icons.lock_outline,
              ),
              SizedBox(height: height * .04),
              InkWell(
                onTap: () {
                  controller.goToForgetPassword();
                },
                child: Text(
                  'forgetpassword_signin'.tr,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: height * .03),
              CustomButtonAuth(text: 'signin'.tr, onPressed: () {}),
              SizedBox(height: height * .04),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "donthaveaccount_signin".tr,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  InkWell(
                    onTap: () {
                      controller.goToSignUp();
                    },
                    child: Text("signup".tr, style: const TextStyle(color: AppColors.primaryColor, fontWeight: FontWeight.bold)),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
