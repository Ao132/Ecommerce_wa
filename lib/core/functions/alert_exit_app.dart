import 'dart:io';

import 'package:ecom_wael_hamza/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<bool> alertExitApp() {
  Get.defaultDialog(
      title: 'Alert',
      titleStyle: const TextStyle(color: AppColors.primaryColor, fontFamily: 'Cairo',fontWeight: FontWeight.bold),
      middleText: 'Do You Want To Exit From Application ?',
      actions: [
        ElevatedButton(
            style: ButtonStyle(backgroundColor: MaterialStateProperty.all(AppColors.primaryColor)),
            onPressed: () {
              exit(0);
            },
            child: const Text('Ok')),
        ElevatedButton(
            style: ButtonStyle(backgroundColor: MaterialStateProperty.all(AppColors.primaryColor)),
            onPressed: () {
              Get.back();
            },
            child: const Text('Cancel'))
      ]);
  return Future.value(true);
}
