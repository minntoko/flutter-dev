import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myapp/season.dart';
import 'package:myapp/season_dropdown.dart';

class SeasonFlower extends ConsumerWidget {
  const SeasonFlower({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 選択中の季節
    final season = ref.watch(seasonProvider);
    return Image.asset(
      switch(season) {
        Season.spring => 'assets/images/cherry-blossom.png',
        Season.summer => 'assets/images/sunflower.png',
        Season.autumn => 'assets/images/maple.png',
        Season.winter => 'assets/images/narcissus.png',
      }
    );
  }
}
