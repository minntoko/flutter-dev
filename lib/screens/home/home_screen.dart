import 'package:flutter/material.dart';
import 'package:myapp/constants.dart';
import 'package:myapp/demoData.dart';
import 'package:myapp/screens/components/image_carousel.dart';
import 'package:myapp/screens/components/restaurant_info_medium_card.dart';
import 'package:myapp/screens/components/section_title.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            floating: true,
            title: Column(children: [
              Text(
                "Flutter Eats",
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(color: kActiveColor),
              ),
              const Text(
                "Nagoya City",
                style: TextStyle(color: Colors.black),
              )
            ]),
            actions: [
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Filter",
                    style: TextStyle(color: Colors.black),
                  ))
            ],
          ),
          const SliverToBoxAdapter(
            child: ImageCarousel(),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(defaultPadding),
            sliver: SliverToBoxAdapter(
              child: SectionTitle(
                title: "主要パートナー",
                press: () {},
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  demoMediumCardData.length,
                  (index) => Padding(
                    padding: const EdgeInsets.only(left: defaultPadding),
                    child: RestaurantInfoMediumCard(
                      title: demoMediumCardData[index]["name"],
                      image: demoMediumCardData[index]["image"],
                      location: demoMediumCardData[index]["location"],
                      rating: demoMediumCardData[index]["rating"],
                      deliveryTime: demoMediumCardData[index]["delivertTime"],
                      press: () {},
                    ),
                  ),
                ),
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(defaultPadding),
            sliver: SliverToBoxAdapter(
              child: Image.asset("assets/images/Banner.png"),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(defaultPadding),
            sliver: SliverToBoxAdapter(
              child: SectionTitle(
                title: "ピックアップ",
                press: () {},
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  demoMediumCardData.length,
                  (index) => Padding(
                    padding: const EdgeInsets.only(left: defaultPadding),
                    child: RestaurantInfoMediumCard(
                      title: demoMediumCardData[index]["name"],
                      image: demoMediumCardData[index]["image"],
                      location: demoMediumCardData[index]["location"],
                      rating: demoMediumCardData[index]["rating"],
                      deliveryTime: demoMediumCardData[index]["delivertTime"],
                      press: () {},
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
