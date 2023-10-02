import 'package:flutter/material.dart';
import 'package:myapp/flutterShop/constants.dart';
import 'package:myapp/flutterShop/models/Product.dart';
import 'package:myapp/flutterShop/screens/details/details_screen.dart';
import 'package:myapp/flutterShop/screens/home/components/product_card.dart';
import 'package:myapp/flutterShop/screens/home/components/section_title.dart';

class NewArrival extends StatelessWidget {
  const NewArrival({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          title: "新着アイテム",
          pressSeeAll: () {},
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List.generate(
                  demoProduct.length,
                  (index) => Padding(
                        padding: const EdgeInsets.only(right: defaultPadding),
                        child: ProductCard(
                          image: demoProduct[index].image,
                          title: demoProduct[index].title,
                          bgcolor: demoProduct[index].bgColor,
                          price: demoProduct[index].price,
                          press: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DetailsScreen(
                                          product: demoProduct[index],
                                        )));
                          },
                        ),
                      ))),
        )
      ],
    );
  }
}
