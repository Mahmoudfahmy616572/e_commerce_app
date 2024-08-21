import 'package:flutter/material.dart';

import '../widgets/onboarding/onboarding_button.dart';
import '../widgets/onboarding/onboarding_controller_widget.dart';
import '../widgets/onboarding/onboarding_page_view.dart';
import '../widgets/onboarding/onboarding_text_button.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          const Expanded(
            flex: 2,
            child: OnboardingPageview(),
          ),
          Expanded(
            flex: 1,
            child: Column(
              children: [
                const OnboardingController(),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.15,
                ),
                const OnboardingButton(),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.015,
                ),
                const OnboardingTextButton()
              ],
            ),
          )
        ],
      )),
    );
  }
}
