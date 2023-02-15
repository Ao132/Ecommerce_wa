import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:ecom_wael_hamza/core/services/services.dart';
import 'package:ecom_wael_hamza/data/data_source/static/static.dart';
import 'package:ecom_wael_hamza/controller/on_boarding_controller.dart';

class CustomSliderOnBoarding extends GetView<OnBoardingControllerImpl> {
  CustomSliderOnBoarding({Key? key}) : super(key: key);
  MyServices myServices = Get.find();

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        controller: controller.pageController,
        onPageChanged: (val) {
          controller.onPageChanged(val);
        },
        itemCount: onBoardingList.length,
        itemBuilder: (context, i) => Column(
              children: [
                Image.asset(
                  onBoardingList[i].image!,
                  height: Get.width / 1.1,
                ),
                const SizedBox(height: 50),
                Text(onBoardingList[i].title!, style: Theme.of(context).textTheme.displayLarge),
                const SizedBox(height: 20),
                Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    child: Text(
                      onBoardingList[i].body!,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyLarge,
                    )),
              ],
            ));
  }
}
