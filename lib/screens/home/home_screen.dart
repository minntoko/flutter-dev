import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:myapp/constants.dart';
import 'package:myapp/screens/home/components/categories.dart';
import 'package:myapp/screens/home/components/new_arrival.dart';
import 'package:myapp/screens/home/components/popular.dart';
import 'package:myapp/screens/home/components/search_form.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const outlineInputBorder = OutlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(defaultBorderRadius * 1.2),
        ),
        borderSide: BorderSide.none);
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            onPressed: () {},
            icon: SvgPicture.asset("assets/icons/menu.svg"),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                "assets/icons/flutter.svg",
                height: 20,
              ),
              const SizedBox(
                width: defaultPadding / 4,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 2),
                child: Text(
                  'Flutter Shop',
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              )
            ],
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: SvgPicture.asset("assets/icons/Notification.svg"))
          ],
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(defaultPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "アイテムを見つける",
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall!
                    .copyWith(fontWeight: FontWeight.bold, color: Colors.black),
              ),
              const Text("best Outfits for you"),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: defaultPadding),
                child: SearchForm(outlineInputBorder: outlineInputBorder),
              ),
              const Categories(),
              const SizedBox(
                height: defaultPadding,
              ),
              const NewArrival(),
              const SizedBox(
                height: defaultPadding,
              ),
              const Popular()
            ],
          ),
        ));
  }
}
