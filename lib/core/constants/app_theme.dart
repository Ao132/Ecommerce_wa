import 'package:flutter/material.dart';
import 'package:ecom_wael_hamza/core/constants/app_colors.dart';

ThemeData themeEnglish = ThemeData(
  fontFamily: "Cairo",
  textTheme: const TextTheme(
    displayLarge: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: AppColors.black),
    displayMedium: TextStyle(fontSize: 26, fontWeight: FontWeight.bold, color: AppColors.black),
    bodyLarge: TextStyle(height: 1.5, color: AppColors.grey, fontWeight: FontWeight.bold, fontSize: 15),
  ),
);

ThemeData themeArabic = ThemeData(
  fontFamily: "Cairo",
  textTheme: const TextTheme(
    displayLarge: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: AppColors.black),
    displayMedium: TextStyle(fontSize: 26, fontWeight: FontWeight.bold, color: AppColors.black),
    bodyLarge: TextStyle(height: 1.5, color: AppColors.grey, fontWeight: FontWeight.bold, fontSize: 15),
  ),
);
