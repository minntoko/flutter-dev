import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myapp/dropdown/season.dart';
import 'package:myapp/dropdown/season_dropdown.dart';

class SeasonTime extends ConsumerWidget {
  const SeasonTime({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 選択中の季節
    final season = ref.watch(seasonProvider);
    return Text(
        style: const TextStyle(fontSize: 20),
        switch (season) {
          Season.spring => 'あけぼの',
          Season.summer => 'よる',
          Season.autumn => 'ゆうぐれ',
          Season.winter => 'つとめて',
        });
  }
}
