import 'package:flutter/material.dart';
import 'package:ecom_wael_hamza/core/constants/app_colors.dart';

class CustomButtonLang extends StatelessWidget {
  final String textbutton;
  final void Function()? onPressed;
  const CustomButtonLang({Key? key, required this.textbutton, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 100),
      width: double.infinity,
      child: MaterialButton(
        color: AppColors.primaryColor,
        textColor: Colors.white,
        onPressed: onPressed,
        child: Text(textbutton, style: const TextStyle(fontWeight: FontWeight.bold)),
      ),
    );
  }
}
