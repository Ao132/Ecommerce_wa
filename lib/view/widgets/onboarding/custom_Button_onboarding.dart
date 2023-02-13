import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:ecom_wael_hamza/core/constants/app_colors.dart';
import 'package:ecom_wael_hamza/controller/on_boarding_controller.dart';


class CustomButtonOnBoarding extends GetView<OnBoardingControllerImpl> {
  const CustomButtonOnBoarding({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 30),
      height: 40,
      child: MaterialButton(
          padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 0),
          textColor: Colors.white,
          onPressed: () {
            controller.next();
          },
          color: AppColors.primaryColor,
          child: Text("continue_onB".tr)),
    );
  }
}
