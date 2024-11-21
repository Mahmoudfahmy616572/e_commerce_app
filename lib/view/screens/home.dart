import 'package:e_commerce_app/view/widgets/home/top_bar.dart';
import 'package:flutter/material.dart';

import '../widgets/home/popular_products.dart';
import '../widgets/home/title_row.dart';
import '../widgets/home/top_container.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: ListView(
          children: [
            const TopBar(),
            TopContainer(
              ontapTopSeller: () {},
            ),
            const SizedBox(
              height: 10,
            ),
            TitleRow(
              ontapSeeAll: () {},
              text: "Popular Deals",
            ),
            const SizedBox(
              height: 15,
            ),
            const PopularProducts(),
            const SizedBox(
              height: 15,
            ),
            TitleRow(
              ontapSeeAll: () {},
              text: "Best Seller",
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.19,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Colors.amber),
                          child: Image.asset(
                            "assets/images/product.png",
                            height: 80,
                          ),
                        ),
                        Text("Liva’s Shop "),
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
