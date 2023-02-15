import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:ecom_wael_hamza/core/constants/app_colors.dart';
import 'package:ecom_wael_hamza/core/functions/validate_inputs.dart';
import 'package:ecom_wael_hamza/view/widgets/auth/custom_button_auth.dart';
import 'package:ecom_wael_hamza/view/widgets/auth/custom_subtitle_auth.dart';
import 'package:ecom_wael_hamza/view/widgets/auth/custom_text_form_auth.dart';
import 'package:ecom_wael_hamza/controller/auth/signup%20controller/signup_cntroller.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    SignUpControllerImpl controller = Get.put(SignUpControllerImpl());
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'signup'.tr,
            style: Theme.of(context).textTheme.displayLarge!.copyWith(fontSize: 20, color: AppColors.grey),
          ),
          elevation: 0.0,
          backgroundColor: AppColors.backgroundcolor,
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: height * .01, horizontal: width * .08),
          child: Form(
            key: controller.formState,
            child: ListView(
              children: [
                SizedBox(height: height * .01),
                SizedBox(height: height * .02),
                CustomSubTitleAuth(text: 'subtitle_signup'.tr),
                SizedBox(height: height * .04),
                CustomTextFormAuth(
                  isPhone: false,
                  validator: (val) {
                    return validateInput(val!, 3, 20, 'username');
                  },
                  controller: controller.userName,
                  labeltext: 'usernamelabel_signup'.tr,
                  hinttext: 'usernamehint_signup'.tr,
                  iconData: Icons.person_outline,
                ),
                SizedBox(height: height * .03),
                CustomTextFormAuth(
                  isPhone: false,
                  validator: (val) {
                    return validateInput(val!, 5, 15, 'email');
                  },
                  controller: controller.email,
                  labeltext: 'labelemail'.tr,
                  hinttext: 'hintemail'.tr,
                  iconData: Icons.email_outlined,
                ),
                SizedBox(height: height * .03),
                CustomTextFormAuth(
                  isPhone: true,
                  validator: (val) {
                     return validateInput(val!, 7, 11, "phone");
                  },
                  controller: controller.phone,
                  labeltext: 'phonelabel_signup'.tr,
                  hinttext: 'phonehint_signup'.tr,
                  iconData: Icons.phone_android_outlined,
                ),
                SizedBox(height: height * .03),
                CustomTextFormAuth(
                  isPhone: false,
                  validator: (val) {
                      return validateInput(val!, 5, 20, 'password');
                  },
                  controller: controller.password,
                  labeltext: 'labelpassword'.tr,
                  hinttext: 'hintpassword'.tr,
                  iconData: Icons.lock_outline,
                ),
                SizedBox(height: height * .04),
                SizedBox(height: height * .03),
                CustomButtonAuth(
                    text: 'signup'.tr,
                    onPressed: () {
                      controller.signUp();
                    }),
                SizedBox(height: height * .04),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "haveaccount_signup".tr,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    InkWell(
                      onTap: () {
                        controller.goToSignIn();
                      },
                      child: Text("signin".tr, style: const TextStyle(color: AppColors.primaryColor, fontWeight: FontWeight.bold)),
                    )
                  ],
                )
              ],
            ),
          ),
        ),);
  }
}
