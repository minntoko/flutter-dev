import 'package:flutter/material.dart';
import 'package:myapp/constants.dart';
import 'package:myapp/demoData.dart';
import 'package:myapp/screens/components/image_carousel.dart';

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
          )
        ],
      ),
    );
  }
}
