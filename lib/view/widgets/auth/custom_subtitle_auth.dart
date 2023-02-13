import 'package:flutter/material.dart';

class CustomSubTitleAuth extends StatelessWidget {
final String text;
  const CustomSubTitleAuth({Key? key, required this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
                text,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyLarge,
              );
  }
}