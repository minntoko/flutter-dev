import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PageC extends StatelessWidget {
  const PageC({super.key});

  push(BuildContext context) {
    // 画面 B へ進む
    context.go('/a');
  }

  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
      backgroundColor: Colors.blue,
      title: const Text('画面 C'),
    );
    return Scaffold(
        appBar: appBar,
        body: Center(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
              ElevatedButton(
                onPressed: () => push(context),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.grey),
                child: const Text('< 戻る'),
              )
            ])));
  }
}
