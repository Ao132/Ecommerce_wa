import 'package:flutter/material.dart';

class CustomTextFormAuth extends StatelessWidget {
  final String hinttext;
  final String labeltext;
  final IconData iconData;
  final bool? obscureText;
  final void Function()? onTapIcon;
  final bool isPhone;
  final String? Function(String?)? validator;
  final TextEditingController? controller;

  const CustomTextFormAuth(
      {Key? key,
      required this.hinttext,
      required this.labeltext,
      required this.iconData,
      required this.controller,
      required this.validator,
      required this.isPhone,  this.onTapIcon,this.obscureText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText==null||obscureText==false?false:true,
      keyboardType: isPhone ? const TextInputType.numberWithOptions(decimal: true) : TextInputType.text,
      validator: validator,
      controller: controller,
      
      decoration: InputDecoration(
          hintText: hinttext,
          hintStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          contentPadding: const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
          label: Container(margin: const EdgeInsets.symmetric(horizontal: 9), child: Text(labeltext)),
          suffixIcon: InkWell(onTap: onTapIcon,child: Icon(iconData)),
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