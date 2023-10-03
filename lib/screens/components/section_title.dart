import 'package:flutter/material.dart';
import 'package:myapp/constants.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    super.key,
    required this.title,
    required this.press,
  });

  final String title;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        TextButton(
            onPressed: press,
            style: TextButton.styleFrom(foregroundColor: kActiveColor),
            child: const Text("すべて見る"))
      ],
    );
  }
}
