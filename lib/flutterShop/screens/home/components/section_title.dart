import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    super.key,
    required this.title,
    required this.pressSeeAll,
  });

  final String title;
  final VoidCallback pressSeeAll;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .titleMedium!
              .copyWith(color: Colors.black, fontWeight: FontWeight.w600),
        ),
        TextButton(
            onPressed: pressSeeAll,
            child: const Text(
              "すべて見る",
              style: TextStyle(
                  color: Colors.lightBlue, fontWeight: FontWeight.w600),
            ))
      ],
    );
  }
}
