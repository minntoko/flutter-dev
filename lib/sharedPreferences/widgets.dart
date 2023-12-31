import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myapp/sharedPreferences/state.dart';

class DrinkText extends ConsumerWidget {
  const DrinkText({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 状態管理からドリンクを確認
    final drink = ref.watch(drinkNotifierProvider);

    return switch (drink) {
      AsyncData(:final value) => Text(value),
      AsyncValue() => const CircularProgressIndicator(),
    };
  }
}

// ドリンクを編集できるテキストフィールド
class DrinkTextField extends ConsumerWidget {
  const DrinkTextField({super.key, required this.controller});

  final TextEditingController controller;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 状態管理からドリンクを確認
    final drink = ref.watch(drinkNotifierProvider);

    return switch (drink) {
      AsyncData(:final value) => TextField(
          controller: controller..text = value,
        ),
      AsyncValue() => const CircularProgressIndicator(),
    };
  }
}

// ドリンクを保存するボタン
class DrinkSaveButton extends ConsumerWidget {
  const DrinkSaveButton({
    super.key,
    required this.controller,
  });

  final TextEditingController controller;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 状態管理からドリンクを確認
    final notifier = ref.read(drinkNotifierProvider.notifier);

    return ElevatedButton(
        onPressed: () {
          final drink = controller.text;
          notifier.updateDrink(drink);
        },
        child: const Text('保存する'));
  }
}
