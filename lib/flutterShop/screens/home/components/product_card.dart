import 'package:flutter/material.dart';
import 'package:myapp/flutterShop/constants.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    required this.image,
    required this.title,
    required this.bgcolor,
    required this.price,
    required this.press,
  });

  final String image, title;
  final Color bgcolor;
  final int price;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        width: 154,
        padding: const EdgeInsets.only(bottom: defaultPadding / 2),
        margin: const EdgeInsets.only(bottom: defaultPadding / 2),
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 1,
                blurRadius: 2,
                offset: const Offset(0, 2), // 影の位置を調整できます
              ),
            ],
            color: Colors.white,
            borderRadius: BorderRadius.circular(defaultBorderRadius)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: const EdgeInsets.all(defaultPadding / 2),
              decoration: BoxDecoration(
                  color: bgcolor,
                  borderRadius:
                      BorderRadius.circular(defaultBorderRadius / 1.5)),
              child: Image.asset(
                image,
                height: 150,
                width: double.infinity,
              ),
            ),
            Column(
              children: [
                Text(
                  title,
                  style: const TextStyle(color: Colors.black),
                ),
                const SizedBox(
                  height: defaultPadding / 4,
                ),
                Text(
                  "¥$price",
                  style: Theme.of(context).textTheme.titleSmall,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
