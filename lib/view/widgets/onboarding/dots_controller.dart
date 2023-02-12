import 'package:ecom_wael_hamza/controller/on_boarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:ecom_wael_hamza/core/constants/app_colors.dart';
import 'package:ecom_wael_hamza/data/data_source/static/static.dart';
import 'package:get/get.dart';



class CustomDotControllerOnBoarding extends StatelessWidget {
  const CustomDotControllerOnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingControllerImpl>(
        builder: (controller) => Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...List.generate(
                    onBoardingList.length,
                    (index) => AnimatedContainer(
                          margin: const EdgeInsets.only(right: 5),
                          duration: const Duration(milliseconds: 900),
                          width: controller.currentPage == index ? 20 : 5,
                          height: 6,
                          decoration: BoxDecoration(
                              color: AppColors.primaryColor,
                              borderRadius: BorderRadius.circular(10)),
                        ))
              ],
            ));
  }
}




















// class CustomDotControllerOnBoarding extends StatelessWidget {
//   const CustomDotControllerOnBoarding({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return GetBuilder<OnBoardingControllerImpl>(
//       builder: (controller) => Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           ...List.generate(
//               onBoardingList.length,
//               (index) => AnimatedContainer(
//                     margin: const EdgeInsets.only(right: 5),
//                     duration: const Duration(milliseconds: 400),
//                     height: 6,
//                     width: controller.currentPage == index ? 20 : 7,
//                     decoration: BoxDecoration(color: AppColors.primaryColor, borderRadius: BorderRadius.circular(10)),
//                   ))
//         ],
//       ),
//     );
//   }
// }
