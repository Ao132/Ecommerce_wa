import 'package:ecom_wael_hamza/controller/on_boarding_controller.dart';
import 'package:ecom_wael_hamza/data/data_source/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomSliderOnBoarding extends GetView<OnBoardingControllerImpl> {
  const CustomSliderOnBoarding({Key? key}) : super(key: key);

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
                  // width: ,
                  // height: 230,
                  // fit: BoxFit.fill,
                ),
                const SizedBox(height: 80),
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


















// import 'package:ecom_wael_hamza/controller/on_boarding_controller.dart';
// import 'package:flutter/material.dart';

// import 'package:ecom_wael_hamza/core/constants/app_colors.dart';
// import 'package:ecom_wael_hamza/data/data_source/static/static.dart';
// import 'package:get/get.dart';

// class CustomSliderOnBoarding extends GetView<OnBoardingControllerImpl> {
//   const CustomSliderOnBoarding({super.key});

//   @override
//   Widget build(BuildContext context) {
//     double height = MediaQuery.of(context).size.height;
//     return PageView.builder(
//       controller: controller.pageController,
//       onPageChanged: (val) {
//         controller.onPageChanged(val);
//       },
//       itemCount: onBoardingList.length,
//       itemBuilder: (context, index) => Column(
//         children: [
//           // SizedBox(height: height * .03),
//           // Text(onBoardingList[index].title!, style: Theme.of(context).textTheme.displayLarge),
//           // SizedBox(height: height * .08),
//           Image.asset(
//             onBoardingList[index].image!,
//             // width: 200,
//             // height: 250,
//             // fit: BoxFit.fill,
//           ),
//           SizedBox(height: height * .06),
//           Text(onBoardingList[index].title!, style: Theme.of(context).textTheme.displayLarge),

//           Container(
//               // width: double.infinity,
//               alignment: Alignment.center,
//               child: Text(onBoardingList[index].body!, textAlign: TextAlign.center, style: Theme.of(context).textTheme.bodyLarge)),
//         ],
//       ),
//     );
//   }
// }
