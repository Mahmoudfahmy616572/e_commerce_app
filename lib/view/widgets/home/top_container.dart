import 'package:flutter/material.dart';

class TopContainer extends StatelessWidget {
  const TopContainer({
    super.key,
    this.ontapTopSeller,
  });
  final void Function()? ontapTopSeller;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 20.0, top: 20, bottom: 20),
          child: Container(
            width: MediaQuery.of(context).size.width * 0.9,
            height: 151,
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: const Color(0xffBADAED),
              borderRadius: BorderRadius.circular(3),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),

                  spreadRadius: 5,
                  blurRadius: 5,
                  offset: const Offset(0, 4), // changes position of shadow
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: ontapTopSeller,
                  autofocus: true,
                  splashColor: Colors.grey,
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(6),
                        border: Border.all(
                          color: Colors.grey,
                          strokeAlign: 0.1,
                          width: 0.5,
                        )),
                    child: const Text(
                      "Best Seller",
                      style: TextStyle(
                          color: Color.fromARGB(255, 157, 218, 253),
                          fontSize: 16),
                    ),
                  ),
                ),
                Text(
                  "Beats By Solo Dr.Dre\n Wireless",
                  textAlign: TextAlign.start,
                  style: Theme.of(context).textTheme.displayMedium,
                ),
                Text(
                  "24.90\$",
                  style: Theme.of(context).textTheme.displayMedium,
                ),
              ],
            ),
          ),
        ),
        Positioned(
            right: 5,
            bottom: 20,
            child: Image.asset(
              "assets/images/product.png",
              fit: BoxFit.cover,
            )),
      ],
    );
  }
}
