import 'package:ecom_wael_hamza/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.symmetric(vertical: 30),
      child: ListView(children: [
        OtpTextField(
          fieldWidth: 40,
          cursorColor: AppColors.primaryColor,
          enabledBorderColor: AppColors.grey,
          focusedBorderColor: AppColors.primaryColor,
          clearText: true,
          numberOfFields: 5,
          //set to true to show as box or false to show as dash
          showFieldAsBox: false,
          //runs when a code is typed in
          onCodeChanged: (String code) {
            //handle validation or checks here
          },
          //runs when every textfield is filled
          onSubmit: (String verificationCode) {
            showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text("Verification Code"),
                    content: Text('Code entered is $verificationCode'),
                  );
                });
          }, // end onSubmit
        ),
      ]),
    ));
  }
}
