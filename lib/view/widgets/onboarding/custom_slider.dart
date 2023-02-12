import 'package:ecom_wael_hamza/controller/on_boarding_controller.dart';
import 'package:ecom_wael_hamza/core/services/services.dart';
import 'package:ecom_wael_hamza/data/data_source/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomSliderOnBoarding extends GetView<OnBoardingControllerImpl> {
  CustomSliderOnBoarding({Key? key}) : super(key: key);
  MyServices myServices = Get.find();

  @override
  Widget build(BuildContext context) {
    return myServices.sharedPreferences.getString('lang') == 'ar'
        ? PageView.builder(
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
                      height: 350,
                      // fit: BoxFit.contain,
                    ),
                    const SizedBox(height: 40),
                    Text(onBoardingList[i].title!, style: Theme.of(context).textTheme.displayLarge),
                    const SizedBox(height: 10),

                    // if(myServices.sharedPreferences.getString('lang')=='ar'){

                    // myServices.sharedPreferences.getString('lang') == 'ar'
                    //     ?
                    //     :
                    //
                    Container(
                        width: double.infinity,
                        alignment: Alignment.center,
                        child: Text(
                          onBoardingList[i].body!,
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.bodyLarge,
                        )),
                  ],
                ))
        : PageView.builder(
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
                      height: 350,
                      // fit: BoxFit.contain,
                    ),
                    const SizedBox(height: 50),
                    Text(onBoardingList[i].title!, style: Theme.of(context).textTheme.displayLarge),
                    const SizedBox(height: 20),

                    // if(myServices.sharedPreferences.getString('lang')=='ar'){

                    // myServices.sharedPreferences.getString('lang') == 'ar'
                    //     ?
                    //     :
                    //
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
