
import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';

class PopularProducts extends StatelessWidget {
  const PopularProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.29,
      width: MediaQuery.of(context).size.width * 0.85,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: const BoxDecoration(
                      color: Color(
                    0xFF803399,
                  )),
                  child: Image.asset(
                    "assets/images/product.png",
                    height: 140,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  "The NBA Collection",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                Text(
                  "250\$",
                  textAlign: TextAlign.start,
                  style: TextStyle(color: AppColors.blue, fontSize: 18),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
