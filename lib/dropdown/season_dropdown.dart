import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myapp/dropdown/season.dart';

final seasonProvider = StateProvider<Season>((ref) {
  return Season.spring;
});

class SeasonDropdown extends ConsumerWidget {
  const SeasonDropdown({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final season = ref.watch(seasonProvider);
    // 選択肢
    final items = [
      DropdownMenuItem(
          value: Season.spring,
          child: Container(
              alignment: Alignment.center,
              width: 200,
              child: const Text('ハル'))),
      DropdownMenuItem(
          value: Season.summer,
          child: Container(
              alignment: Alignment.center,
              width: 200,
              child: const Text('ナツ'))),
      DropdownMenuItem(
          value: Season.autumn,
          child: Container(
              alignment: Alignment.center,
              width: 200,
              child: const Text('アキ'))),
      DropdownMenuItem(
          value: Season.winter,
          child: Container(
              alignment: Alignment.center,
              width: 200,
              child: const Text('フユ'))),
    ];
    return Center(
      child: DropdownButton(
        value: season,
        items: items,
        onChanged: (newSeason) {
          final notifier = ref.read(seasonProvider.notifier);
          notifier.state = newSeason!;
        },
      ),
    );
  }
}
