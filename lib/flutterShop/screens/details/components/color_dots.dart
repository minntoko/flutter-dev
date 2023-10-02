
import 'package:flutter/material.dart';
import 'package:myapp/flutterShop/constants.dart';

class ColorDot extends StatelessWidget {
  const ColorDot({
    super.key,
    required this.color,
    required this.isActive,
    required this.press,
  });

  final Color color;
  final bool isActive;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        padding: const EdgeInsets.all(defaultPadding / 4),
        decoration: BoxDecoration(
            border: Border.all(
                color: isActive ? Colors.black26 : Colors.transparent,
                width: 2),
            shape: BoxShape.circle),
        child: CircleAvatar(
          radius: 8,
          backgroundColor: color,
        ),
      ),
    );
  }
}
