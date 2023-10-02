import 'package:flutter/material.dart';

class Product {
  final String image, title;
  final int price;
  final Color bgColor;

  Product({
    required this.image,
    required this.title,
    required this.price,
    this.bgColor = const Color(0xFFEFEFF2),
  });
}

List<Product> demoProduct = [
  Product(
    image: "assets/images/product_0.png",
    title: "ロングスリーブシャツ",
    price: 1650,
    bgColor: const Color(0xFFFEFBF9),
  ),
  Product(
    image: "assets/images/product_1.png",
    title: "Casual Henley シャツ",
    price: 990,
  ),
  Product(
    image: "assets/images/product_2.png",
    title: "Curved Hem シャツ",
    price: 1800,
    bgColor: const Color(0xFFF8FEFB),
  ),
  Product(
    image: "assets/images/product_3.png",
    title: "カジュアル カーキ",
    price: 1490,
    bgColor: const Color(0xFFEEEEED),
  ),
];
