import 'package:flutter/material.dart';

class CustomTextbutton extends StatelessWidget {
  const CustomTextbutton({
    super.key,
    this.onPressed,
    required this.text,
    this.color,
    this.decoration,
  });
  final void Function()? onPressed;
  final String text;
  final Color? color;
  final TextDecoration? decoration;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(
            fontSize: 17,
            color: color,
            decoration: decoration,
            fontWeight: FontWeight.w700),
      ),
    );
  }
}
