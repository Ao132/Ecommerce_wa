import 'package:get/get.dart';
import 'core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:ecom_wael_hamza/routes.dart';
import 'package:ecom_wael_hamza/view/screens/language.dart';
import 'package:ecom_wael_hamza/core/localization/translation.dart';
import 'package:ecom_wael_hamza/core/localization/change_local.dart';

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
      theme: controller.appTheme,
      getPages: routes,
    );
  }
}
