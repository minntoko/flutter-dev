import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myapp/fish.dart';

void main() {
  const app = MaterialApp(home: Home());
  const scope = ProviderScope(child: app);
  runApp(scope);
}

final fishProvider =
    StateProvider((ref) => const Fish(name: 'マグロ', size: 200, price: 300));

class Home extends ConsumerWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final fish = ref.watch(fishProvider);
    final nameText = Text(
      '名前: ${fish.name}',
      style: const TextStyle(fontSize: 20),
    );
    final sizeText = Text(
      '大きさ: ${fish.size}cm',
      style: const TextStyle(fontSize: 20),
    );
    final priceText = Text(
      '値段: ${fish.price}万円',
      style: const TextStyle(fontSize: 20),
    );

    final button = ElevatedButton(
        onPressed: () => onPressed(ref), child: const Text('変更する'));

    final col = Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [nameText, sizeText, priceText, button],
    );
    return Scaffold(
        body: Center(
      child: col,
    ));
  }

  void onPressed(WidgetRef ref) {
    final fish = ref.read(fishProvider);
    final newFish = fish.copyWith(
      price: 500,
    );
    ref.read(fishProvider.notifier).state = newFish;
  }
}
