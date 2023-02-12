import 'package:ecom_wael_hamza/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Sign In',
            style: Theme.of(context).textTheme.displayLarge!.copyWith(fontSize: 20, color: AppColors.grey),
          ),
          elevation: 0.0,
          backgroundColor: AppColors.backgroundcolor,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 35),
          child: ListView(
            children: [
              const SizedBox(height: 20),
              Text(
                '2'.tr,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.displayMedium,
              ),
              const SizedBox(height: 10),
              Text(
                '3'.tr,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              const SizedBox(height: 55),
              TextFormField(
                decoration: InputDecoration(
                    suffixIcon: const Icon(Icons.email_outlined),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    contentPadding: const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
                    label: const Text('Email'),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(30))),
              )
            ],
          ),
        ));
  }
}
