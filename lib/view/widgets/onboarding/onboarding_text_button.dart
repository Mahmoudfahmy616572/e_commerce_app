import 'package:flutter/material.dart';

class OnboardingTextButton extends StatelessWidget {
  const OnboardingTextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {},
        child: const Text(
          "Skip",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w700, fontSize: 18),
        ));
  }
}
