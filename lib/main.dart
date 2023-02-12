import 'package:ecom_wael_hamza/core/localization/change_local.dart';
import 'package:get/get.dart';
import 'core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:ecom_wael_hamza/routes.dart';
import 'package:ecom_wael_hamza/view/screens/language.dart';
import 'package:ecom_wael_hamza/view/screens/onboarding.dart';
import 'package:ecom_wael_hamza/core/constants/app_colors.dart';
import 'package:ecom_wael_hamza/core/localization/translation.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    LocaleController controller = Get.put(LocaleController());
    return GetMaterialApp(
      locale: controller.language,
      translations: Translation(),
      theme: ThemeData(
        fontFamily: 'PlayfairDisplay',
        textTheme: const TextTheme(
          displayLarge: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: AppColors.black),
          displayMedium: TextStyle(fontSize: 26, fontWeight: FontWeight.bold, color: AppColors.black),
          bodyLarge: TextStyle(height: 2, color: AppColors.grey, fontWeight: FontWeight.bold, fontSize: 16),
        ),
      ),
      home: const Language(),
      routes: routes,
    );
  }
}
