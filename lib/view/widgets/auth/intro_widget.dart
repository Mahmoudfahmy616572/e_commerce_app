import 'package:flutter/material.dart';

class IntroWidget extends StatelessWidget {
  const IntroWidget({
    super.key,
    required this.headText,
    required this.bodyText,
  });
  final String headText;
  final String bodyText;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              headText,
              style: Theme.of(context).textTheme.headlineLarge,
            ),
          ],
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.01,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              bodyText,
              style: Theme.of(context).textTheme.bodySmall,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ],
    );
  }
}
