import 'package:flutter/material.dart';

class CustomTextform extends StatelessWidget {
  const CustomTextform({
    super.key,
    required this.lableText,
    required this.hintText,
    this.suffix,
    required this.isSecure,
    this.keyboardType,
    required this.controller,
    required this.validator,
  });
  final bool isSecure;
  final String lableText;
  final String hintText;
  final Widget? suffix;
  final TextInputType? keyboardType;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.04,
          vertical: MediaQuery.of(context).size.width * 0.03),
      child: TextFormField(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          validator: validator,
          style: const TextStyle(
              color: Colors.black, fontWeight: FontWeight.normal, fontSize: 17),
          controller: controller,
          keyboardType: keyboardType,
          obscureText: isSecure,
          decoration: InputDecoration(
              hintText: hintText,
              labelText: lableText,
              labelStyle: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                  color: Colors.grey[800]),
              hintStyle: TextStyle(color: Colors.grey[700], fontSize: 16),
              floatingLabelBehavior: FloatingLabelBehavior.always,
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  gapPadding: 10,
                  borderSide: const BorderSide(color: Colors.grey)),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  gapPadding: 10,
                  borderSide: const BorderSide(color: Colors.grey)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  gapPadding: 10,
                  borderSide: const BorderSide(color: Colors.black)),
              errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  gapPadding: 10,
                  borderSide: const BorderSide(color: Colors.red)),
              disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  gapPadding: 10,
                  borderSide: const BorderSide(color: Colors.black)),
              suffix: suffix)),
    );
  }
}
