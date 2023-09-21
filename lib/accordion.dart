import 'package:flutter/material.dart';

class Accordion extends StatelessWidget {
  const Accordion({
    super.key,
    required this.title,
    required this.headColor,
    required this.bodyColor,
    required this.imageName,
  });

  // ヘッドの部分の色
  final Color headColor;
  // ボディーの色
  final Color bodyColor;
  // ヘッドの文字
  final String title;
  // 開いた時の画像ファイル名
  final String imageName;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
        child: ExpansionTile(
          collapsedTextColor: Colors.white,
          textColor: Colors.white,
          collapsedIconColor: Colors.white,
          iconColor: Colors.white,
          collapsedBackgroundColor: headColor,
          backgroundColor: headColor,
          title: Text(
            title,
            style: const TextStyle(fontSize: 20),
          ),
          children: [
            Container(
              color: bodyColor,
              width: double.infinity,
              height: 100,
              alignment: Alignment.center,
              child: Image.asset(imageName),
            )
          ],
        ));
  }
}
