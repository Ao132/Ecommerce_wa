import 'package:ecom_wael_hamza/core/constants/app_colors.dart';
import 'package:ecom_wael_hamza/core/constants/routes_names.dart';
import 'package:ecom_wael_hamza/core/localization/change_local.dart';
import 'package:ecom_wael_hamza/view/widgets/language/custom_button_lang.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Language extends GetView<LocaleController> {
  const Language({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("1".tr, style: Theme.of(context).textTheme.displayLarge),
              const SizedBox(height: 20),
              CustomButtonLang(
                  textbutton: "Ar",
                  onPressed: () {
                    controller.changeLang('ar');
                    Get.toNamed(AppRouteName.onBoarding);
                  }),
              CustomButtonLang(
                  textbutton: "En",
                  onPressed: () { 
                    controller.changeLang('en');
                    Get.toNamed(AppRouteName.onBoarding);

                  }),
            ],
          )),
    );

    // Scaffold(
    //   body: Padding(
    //     padding: const EdgeInsets.all(10),
    //     child: Column(
    //       mainAxisAlignment: MainAxisAlignment.center,
    //       children: [
    //         SizedBox(
    //           width: double.infinity,
    //           child: MaterialButton(
    //             // padding: const EdgeInsets.symmetric(horizontal: 100),
    //             color: AppColors.primaryColor,
    //             onPressed: () {},
    //             child: const Text(
    //               'Ar',
    //               style: TextStyle(color: Colors.white),
    //             ),
    //           ),
    //         )
    //       ],
    //     ),
    //   ),
    // );
  }
}
