import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';

class BtnLanguage extends StatelessWidget {
  const BtnLanguage({
    super.key,
    required this.textBtn,
    this.onTap,
  });
  final String textBtn;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 100),
      width: double.infinity,
      child: MaterialButton(
        textColor: Colors.white,
        color: AppColors.primaryColor,
        onPressed: onTap,
        child: Text(
          textBtn,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
