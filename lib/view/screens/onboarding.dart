import 'package:ecom_wael_hamza/controller/on_boarding_controller.dart';
import 'package:ecom_wael_hamza/core/constants/app_colors.dart';
import 'package:ecom_wael_hamza/data/data_source/static/static.dart';
import 'package:ecom_wael_hamza/view/widgets/onboarding/custom_Button_onboarding.dart';
import 'package:ecom_wael_hamza/view/widgets/onboarding/custom_slider.dart';
import 'package:ecom_wael_hamza/view/widgets/onboarding/dots_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImpl());
    return Scaffold(
        backgroundColor: AppColors.backgroundcolor,
        body: SafeArea(
          child: Column(children: [
            Expanded(
              flex: 4,
              child: CustomSliderOnBoarding(),
            ),
            Expanded(
                flex: 1,
                child: Column(
                  children: const [CustomDotControllerOnBoarding(), Spacer(flex: 2), CustomButtonOnBoarding()],
                ))
          ]),
        ));
  }
}
















// class OnBoarding extends StatelessWidget {
//   const OnBoarding({super.key});

//   @override
//   Widget build(BuildContext context) {
//     Get.put(OnBoardingControllerImpl());
//     double height = MediaQuery.of(context).size.height;
//     return Scaffold(
//       body: SafeArea(
//         child: Column(
//           children: [
//             SizedBox(height: height * .71, child: const CustomSliderOnBoarding()),
//             // SizedBox(height: height * .01),
//             Column(
//               children: [
//                 const CustomDotControllerOnBoarding(),
//                 // const Spacer(flex: ),
//                 SizedBox(height: height * .18),
//                 const CustomButtonOnBoarding()
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
