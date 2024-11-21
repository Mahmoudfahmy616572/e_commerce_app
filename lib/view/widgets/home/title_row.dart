import 'package:flutter/material.dart';

class TitleRow extends StatelessWidget {
  const TitleRow({
    super.key,
    this.ontapSeeAll,
    required this.text,
  });
  final void Function()? ontapSeeAll;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: Theme.of(context).textTheme.displayLarge,
          ),
          InkWell(
            onTap: ontapSeeAll,
            child: Row(
              children: [
                Text(
                  "See All",
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                const Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 15,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
