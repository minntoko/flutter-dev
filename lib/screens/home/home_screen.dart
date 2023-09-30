import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:myapp/constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const outlineInputBorder = OutlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(defaultBorderRadius),
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
              SvgPicture.asset("assets/icons/Location.svg"),
              const SizedBox(
                width: defaultPadding / 2,
              ),
              Text(
                'Flutter Shop',
                style: Theme.of(context).textTheme.titleSmall,
              )
            ],
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: SvgPicture.asset("assets/icons/Notification.svg"))
          ],
        ),
        body: Padding(
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
              Card(
                elevation: 1, // 影の高さを調整します
                child: Form(
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "キーワードから探す",
                      filled: true,
                      fillColor: Colors.white,
                      border: outlineInputBorder,
                      enabledBorder: outlineInputBorder,
                      focusedBorder: outlineInputBorder,
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: SvgPicture.asset("assets/icons/Search.svg"),
                      ),
                      suffixIcon: Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: primaryColor,
                          ),
                          child: SvgPicture.asset("assets/icons/Filter.svg"),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
