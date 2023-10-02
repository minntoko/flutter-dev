import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:myapp/flutterShop/constants.dart';
import 'package:myapp/flutterShop/models/Product.dart';
import 'package:myapp/flutterShop/screens/details/components/color_dots.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.bgColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const BackButton(color: Colors.black),
        actions: [
          IconButton(
              onPressed: () {},
              icon: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: SvgPicture.asset(
                    "assets/icons/Heart.svg",
                    height: 25,
                  )))
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            product.image,
            height: MediaQuery.of(context).size.height * 0.4,
            fit: BoxFit.cover,
          ),
          const SizedBox(
            height: defaultPadding,
          ),
          Expanded(
              child: Container(
            padding: const EdgeInsets.fromLTRB(defaultPadding,
                defaultPadding * 1.5, defaultPadding, defaultPadding),
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: const Offset(0, 0), // 影の位置を調整できます
                  ),
                ],
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(defaultBorderRadius * 2),
                  topRight: Radius.circular(defaultBorderRadius * 2),
                )),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        product.title,
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      Text(
                        "¥${product.price}",
                        style: Theme.of(context).textTheme.titleLarge,
                      )
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: defaultPadding),
                    child: Text(
                        "ヘンリーシャツは、襟のないプルオーバーシャツで、丸い首元と、通常2〜5つのボタンがついた3〜5インチ（8〜13 cm）程度のプラケットが特徴です。"),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Colors",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        height: defaultPadding / 2,
                      ),
                      Row(
                        children: [
                          ColorDot(
                              color: const Color(0xFFBEE8EA),
                              isActive: false,
                              press: () {}),
                          ColorDot(
                              color: const Color(0xFFF4E5C3),
                              isActive: false,
                              press: () {}),
                          ColorDot(
                              color: const Color(0xFF141B4A),
                              isActive: true,
                              press: () {}),
                        ],
                      ),
                      const SizedBox(
                        height: defaultPadding * 1.5,
                      ),
                      Center(
                        child: SizedBox(
                          width: 200,
                          height: 48,
                          child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: primaryColor,
                                  shape: const StadiumBorder()),
                              child: const Text("カートに追加")),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ))
        ],
      ),
    );
  }
}
