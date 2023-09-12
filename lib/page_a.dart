import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PageA extends StatelessWidget {
  const PageA({super.key});

  push(BuildContext context) {
    // 画面 B へ進む
    context.push('/b');
  }

  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
      backgroundColor: Colors.red,
      title: const Text('画面 A'),
    );
    return Scaffold(
        appBar: appBar,
        body: Center(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
              ElevatedButton(
                onPressed: () => push(context),
                child: const Text('進む >'),
              )
            ])));
  }
}
