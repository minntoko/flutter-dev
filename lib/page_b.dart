import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PageB extends StatelessWidget {
  const PageB({super.key});

  push(BuildContext context) {
    // 画面 C へ進む
    context.push('/c');
  }

  back(BuildContext context) {
    // 画面 C へ進む
    context.pop();
  }

  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
      backgroundColor: Colors.green,
      title: const Text('画面 B'),
    );

    final goButton = ElevatedButton(
        onPressed: () => push(context), child: const Text('進む >'));

    final backButton = ElevatedButton(
        onPressed: () => back(context),
        style: ElevatedButton.styleFrom(backgroundColor: Colors.grey),
        child: const Text('< 戻る'));
    return Scaffold(
        appBar: appBar,
        body: Center(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
              backButton,
              goButton,
            ])));
  }
}
