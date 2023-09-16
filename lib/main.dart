import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

void main() {
  const app = MaterialApp(home: Home());
  const scope = ProviderScope(child: app);
  runApp(scope);
}

final percentProvider = StateProvider(
  (ref) {
    return 0.00;
  },
);

class Home extends ConsumerWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final percent = ref.watch(percentProvider);
    final circular = CircularPercentIndicator(
      percent: percent,
      backgroundColor: Colors.grey,
      progressColor: Colors.blue,
      radius: 90,
      lineWidth: 25,
      center: Text(
        '${percent * 100}%',
        style: const TextStyle(fontSize: 20),
      ),
      animation: true,
      animationDuration: 500,
      animateFromLastPercent: true,
    );
    final linear = LinearPercentIndicator(
      percent: percent,
      backgroundColor: Colors.grey,
      progressColor: Colors.blue,
      alignment: MainAxisAlignment.center,
      lineHeight: 60,
      width: 300,
      center: Text(
        '${percent * 100}%',
        style: const TextStyle(fontSize: 20, color: Colors.white),
      ),
      animation: true,
      animationDuration: 500,
      animateFromLastPercent: true,
    );

    final button = ElevatedButton(
        onPressed: () => onPressed(ref), child: const Text('スタート'));

    final col = Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [circular, linear, button],
    );
    return Scaffold(
      body: Container(
        child: col,
      ),
    );
  }

  void onPressed(WidgetRef ref) async {
    await Future.delayed(const Duration(seconds: 1));
    ref.read(percentProvider.notifier).state = 0.20;
    await Future.delayed(const Duration(seconds: 1));
    ref.read(percentProvider.notifier).state = 0.40;
    await Future.delayed(const Duration(seconds: 1));
    ref.read(percentProvider.notifier).state = 0.60;
    await Future.delayed(const Duration(seconds: 1));
    ref.read(percentProvider.notifier).state = 0.80;
    await Future.delayed(const Duration(seconds: 1));
    ref.read(percentProvider.notifier).state = 1.00;
  }
}
