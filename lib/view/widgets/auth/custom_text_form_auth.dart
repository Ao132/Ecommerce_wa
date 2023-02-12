import 'package:flutter/material.dart';

class CustomTextFormAuth extends StatelessWidget {
  final String hinttext;
  final String labeltext;
  final IconData iconData;
  final TextEditingController? controller;

  const CustomTextFormAuth({Key? key, required this.hinttext, required this.labeltext, required this.iconData, this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
          hintText: hinttext,
          hintStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          contentPadding: const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
          label: Container(margin: const EdgeInsets.symmetric(horizontal: 9), child: Text(labeltext)),
          suffixIcon: Icon(iconData),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(30))),
    );
  }
}









//  TextFormField(
//                 decoration: InputDecoration(
//                     hintText: 'Enter Your Email',
//                     hintStyle: TextStyle(fontSize: 14),
//                     suffixIcon: const Icon(Icons.email_outlined),
//                     floatingLabelBehavior: FloatingLabelBehavior.always,
//                     contentPadding: const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
//                     label: const Text('Email'),
//                     border: OutlineInputBorder(borderRadius: BorderRadius.circular(30))),
//               )