import 'package:flutter/material.dart';
import 'package:ecom_wael_hamza/core/constants/app_colors.dart';

class CustomButtonAuth extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  const CustomButtonAuth({Key? key, required this.text, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      padding: const EdgeInsets.symmetric(vertical: 13),
      onPressed: onPressed,
      color: AppColors.primaryColor,
      textColor: Colors.white,
      child: Text(text, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 17)),
    );
  }
}
