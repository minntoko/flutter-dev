import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod/riverpod.dart';

main() {
  // アプリ
  const app = MaterialApp(home: Home());

  // プロバイダースコープでアプリを囲む
  const scope = ProviderScope(child: app);
  runApp(scope);
}

// トグルスイッチが ON(true)か Off(false)
final isOnProvider = StateProvider((ref) {
  return true;
});

// スライダーの数値
final valueProvider = StateProvider((ref) {
  return 0.0;
});

// レンジスライダーの範囲
final rangeProvider = StateProvider((ref) {
  return const RangeValues(0.0, 1.0);
});

class Home extends ConsumerWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // トグルスイッチ
    final isOn = ref.watch(isOnProvider);
    final toggleSwitch = Switch(
      value: isOn,
      onChanged: (isOn) {
        ref.read(isOnProvider.notifier).state = isOn;
      },
      activeColor: Colors.blue[400],
      activeTrackColor: Colors.grey,
      inactiveThumbColor: Colors.white,
      inactiveTrackColor: Colors.grey,
    );

    // 太陽
    const sun = Icon(
      Icons.light_mode,
      color: Colors.orange,
      size: 80,
    );
    // 月
    const moon = Icon(
      Icons.dark_mode,
      color: Colors.yellow,
      size: 80,
    );

    final sunOrMoon = isOn ? sun : moon;

    final toggle = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        toggleSwitch,
        sunOrMoon,
      ],
    );

    // スライダー
    final value = ref.watch(valueProvider);
    final slider = Slider(
      value: value,
      onChanged: (value) {
        ref.read(valueProvider.notifier).state = value;
      },
      thumbColor: Colors.blue[400],
      activeColor: Colors.blue[400],
      inactiveColor: Colors.grey,
    );

    // 雲
    final cloud = Icon(
      Icons.cloud,
      color: Colors.grey,
      size: value * 200 + 5,
    );

    // レンジスライダー
    final range = ref.watch(rangeProvider);
    final rangeSlider = RangeSlider(
      values: range,
      onChanged: (range) {
        ref.read(rangeProvider.notifier).state = range;
      },
      activeColor: Colors.blue,
      inactiveColor: Colors.grey,
    );

    final startDegree = (range.start * 50).round();
    final endDegree = (range.end * 50).round();
    final degreeText = Text(
      '$startDegree ~ $endDegree 度',
      style: const TextStyle(fontSize: 26),
    );

    final sliders =
        Column(children: [slider, const Spacer(), cloud, const Spacer()]);

    return Scaffold(
      appBar: AppBar(
        title: const Text('スイッチ・スライダー編'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Spacer(),
          toggle,
          SizedBox(
            height: 300,
            child: sliders,
          ),
          rangeSlider,
          degreeText,
          const Spacer(),
        ],
      )),
    );
  }
}
