import 'package:flutter/material.dart';
import 'package:myapp/constants.dart';
import 'package:myapp/demoData.dart';
import 'package:myapp/screens/components/image_carousel.dart';
import 'package:myapp/screens/components/section_title.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
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
            child: Row(
              children: [
                RestaurantInfoMediumCard(
                  title: demoMediumCardData[0]["name"],
                  image: demoMediumCardData[0]["image"],
                  location: demoMediumCardData[0]["location"],
                  rating: demoMediumCardData[0]["rating"],
                  deliveryTime: demoMediumCardData[0]["delivertTime"],
                  press: () {},
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class RestaurantInfoMediumCard extends StatelessWidget {
  const RestaurantInfoMediumCard({
    super.key,
    required this.title,
    required this.image,
    required this.deliveryTime,
    required this.rating,
    required this.press,
    required this.location,
  });

  final String title, image, location;
  final int deliveryTime;
  final double rating;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: const BorderRadius.all(Radius.circular(6)),
      onTap: press,
      child: SizedBox(
        width: 200,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 1.25,
              child: Image.asset(image),
            ),
            const SizedBox(
              height: defaultPadding / 2,
            ),
            Text(
              title,
              maxLines: 1,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            Text(
              demoMediumCardData[0]["location"],
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(color: kBodyTextColor),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: defaultPadding / 2),
              child: DefaultTextStyle(
                style: const TextStyle(color: Colors.black, fontSize: 12),
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: defaultPadding / 2,
                          vertical: defaultPadding / 4),
                      decoration: const BoxDecoration(
                          color: kActiveColor,
                          borderRadius: BorderRadius.all(Radius.circular(6))),
                      child: Text(
                        rating.toString(),
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const Spacer(),
                    Text("$deliveryTime 分"),
                    const Spacer(),
                    const CircleAvatar(
                      radius: 2,
                      backgroundColor: Color(0xFF868686),
                    ),
                    const Spacer(),
                    const Text("送料無料")
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
