import 'package:ecom_wael_hamza/core/services/services.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:ecom_wael_hamza/core/constants/routes_names.dart';
import 'package:ecom_wael_hamza/data/data_source/static/static.dart';

abstract class OnBoardingController extends GetxController {
  next();
  onPageChanged(int index);
}

class OnBoardingControllerImpl extends OnBoardingController {
  late PageController pageController;
  int currentPage = 0;
  MyServices myServices = Get.find();
  @override
  next() {
    currentPage++;
    if (currentPage > onBoardingList.length - 1) {
      myServices.sharedPreferences.setString('onboarding', '1');
      Get.offAllNamed(AppRouteName.signIn);
    } else {
      pageController.animateToPage(currentPage, duration: const Duration(milliseconds: 400), curve: Curves.easeInOut);
    }
  }

  @override
  onPageChanged(int index) {
    currentPage = index;

    update();
  }

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }
}
